<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link type="text/css" rel="stylesheet" href="${ctx}/source/css/grey.css" />
<link type="text/css" rel="stylesheet" href="${ctx}/source/css/tab.css" />
<link type="text/css" rel="stylesheet" href="${ctx}/source/css/easyui/easyui.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/source/css/easyui/icon.css">
<link type="text/css" rel="stylesheet" href="${ctx}/source/css/upgrade.dialog.css" />
<link href="${ctx}/source/css/ztree/zTreeStyle.css" rel="stylesheet">
<script type="text/javascript" src="${ctx}/source/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="${ctx}/source/js/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript" src="${ctx}/source/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${ctx}/source/js/jquery.json-2.4.js"></script>
<script type="text/javascript" src="${ctx}/source/js/ap/scroll_mon.js"></script>
<script type="text/javascript">
var pcode;
function onClickLoad(event, treeId, treeNode){
	openLoadDataGif();
	query_content = "";
	$("#scroll_top").val(0);
	$("#scroll_num").val(0);
	$("#up_div").scrollTop(0);
	var code= treeNode.id;
		$.ajax({
					type : "POST",
					dataType : "json",
					url : "apmController!querybycode",
					data : "code="+code,
					success : function(json) {
			closeLoadDataGif();
						pcode= code;
						var htmlStr = "";
						htmlStr += " <table width='100%' border='0' cellspacing='0' cellpadding='0' class='AP_table'  id='data_table'>";
						htmlStr += " <tr style='background:#61E4B5;'>";
						htmlStr += " <td width='4%'><div align='center'>状态</div></td>";
						htmlStr += " <td width='10%'><div align='center'>AP名称</div></td>";
						htmlStr += " <td width='7%'><div align='center'>MAC地址</div></td>";
						htmlStr += " <td width='7%'><div align='center'>区域</div></td>";
						htmlStr += "</tr>";
						for ( var i = 0; i < json.length; i++) {
							if (json[i].isonLine) {
								htmlStr += "<tr style='background:#FCFDFD' ondblclick=attrLook("
										+ json[i].id + ");>"
								htmlStr += "<td width='4%' style='color:red'><div align='center'>"
										+ "在线"
										+ "</div></td>";
							} else {
								htmlStr += "<tr style='background:#FCFDFD' ondblclick=attrLook("
										+ json[i].id + ");>"
								htmlStr += "<td width='4%'><div align='center'>"
										+ "离线"
										+ "</div></td>";
							}
							htmlStr += "<td width='10%'><div align='left'   title='"+json[i].name+"'>"
							+ ((json[i].name==null)?'':(json[i].name.length>15?json[i].name.substring(0,15)+"...":json[i].name))
							+ "</div></td>";
							htmlStr += "<td width='7%'><div align='center'>"
									+ json[i].mac
									+ "</div></td>";
							
							
							htmlStr += "<td width='7%'><div align='center'>"
									+ ((json[i].province=='北京市')?'':json[i].province)+""+json[i].city+""+json[i].district+""
									+ "</div></td>";
							
							
							htmlStr += "</tr>";
						}
						htmlStr += "</table>";
						$("#data_table").html(htmlStr);
					},
					error : function() {
						closeLoadDataGif();
						if (!confirm('该地区无数据显示,请重新选择'))
							return;
					}
				});
		if(code!=null){
			$.ajax({
		  		type: "POST",
		  	 	dataType:"json",   
				   url:"apmController!initProvince", 
				   data:"code="+code,
				   success: function(json){
									var pro =$("#province");
										pro.empty();
										pro.append("<option value=''>选择省份</option>")
									 for(var i =0; i<json.length ;i++){
										var option =$("<option value="+json[i].code+">"+json[i].name+"</option>");
										pro.append(option);
										 }
				   },
				   error:function(){  
					   
						    return;
					 } 
					});
		}
	}
</script>
<script type="text/javascript" src="${ctx}/source/js/ap/tree.js"></script>
<script type="text/javascript" src="${ctx}/source/js/ap/query.js"></script>
<script type="text/javascript" src="${ctx}/source/js/My97DatePicker/WdatePicker.js" ></script>
<script type="text/javascript" src="${ctx}/source/js/ap/apUpgradeControl.js"></script>
<script type="text/javascript"> var level = ${sessionScope.user.level}; </script>
<script type="text/javascript"> var parent_userid = ${sessionScope.user.parent_userid};</script>
<script>
        $(document).ready(function () {
            $('.tree_1_list').hover(function () {
                var t = parent.document.getElementById("dataSource_manager");
                var p_code = t.options[t.selectedIndex].value;
                var obj = $(this);
                if(p_code == '0'){
                	$.getJSON("PositionController!getTreeData", null, function(data){
						var zNodes = $.parseJSON(data.toString());
						// 测试
						$.fn.zTree.init($("#menuTree"), setting, zNodes);
						obj.stop().animate({ "right": 0 }, 500, function () {});
					});
                }else{
	            	$.getJSON("PositionController!getTreeDataById", "id="+p_code, function(data){
						var zNodes = $.parseJSON(data.toString());
						// 测试
						$.fn.zTree.init($("#menuTree"), setting, zNodes);
						obj.stop().animate({ "right": 0 }, 500, function () {});
					});
				}
            }, function () {
                $(this).stop().animate({ "right": -360 }, 500, function () {
                });
            });

    		if(level==0){
            	init();
            }else if(level==1){
            	$("#province").hide();
            	initcity();
            }else if(level==2){
            	$("#province").hide();
            	$("#city").hide();
            	initdistrict();
                }
        });
        //获取选择行ID 根据ID查询ap信息
    
    </script>
<style type="text/css">
ul.nav_ul {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	text-indent: 0px;
}
.background {
	display: block;
	opacity: 0.6;
	filter: alpha(opacity = 40);
	background: while;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 2000;
	background-color: #fff;
	text-align: center;
}
-->
</style>
</head>
<body>
<!--查看商户-->
			<div id="ap_merchantlook" class="easyui-window" title="商户信息" data-options="iconCls:'icon-search',modal:true,closed:true,top:'99px'" style="height:280px;width:400px;padding:10px;background-color: #F0FFF0;">
	      		<div id="merchantlook" style="border:none;" class="merch">
		      
				</div>
			</div>
		
	<!--查看商户-->
	<!------------进度条开始----------->
	<div id="background" class="background">
			<img alt="" src="${ctx}/source/images/circular.gif"
				style="position: absolute;visibility: hidden">
		</div>
	<!------------进度条结束----------->
	<!------------右侧 树菜单 快捷停靠----------->
	<div class="tree_1_list">
		<span class="tree_1_hover"><img
			src="${ctx}/source/images/share.png" />
		</span>
		<div class="tree_1_cont" style="overflow: auto;">
			<ul class="ztree"  id="menuTree">
			</ul>
		</div>
	</div>
	<div class="AP_wrap">
		<div class="AP_title">
			<ul>
				<li class="rr"><a href="#">首页</a>
				</li>
				<li class="rr"><a href="#">AP管理</a>
				</li>
				<li><a href="${ctx}/apmController!queryapMonitor">AP监控</a>
				</li>
			</ul>
		</div>
		<div class="AP_used">
			<div class="AP_search">
				<div class="AP_inpu_search">
					<input type="text" placeholder="请输入MAC地址进行搜索" id="searchbymac"/> <span  onclick="queryMobymac();">搜索</span>
				</div>
				<span onclick="mostquery();">高级搜索</span>
				<input type="Hidden" id="hiddencode"/>
			</div>
			<!-- 高级搜索开始 -->
				<div id="ap_highserch" class="easyui-window" title="高级搜索" data-options="iconCls:'icon-search',modal:true,closed:true,top:'99px'" style="height:430px;width:656px;padding:10px;background-color: #F0FFF0;">
	      			<div class="search_cont" id="ap_serch" style="border:none;">
					<ul>
						
						<li style="margin-left:10px;">
						<label>名称</label>
						 <input type="text" name="apname" id="apname" /></li>
						 <li><label>MAC</label> 
						<input type="text" name="mac" id="mac"/></li>
						<li style="margin-left:10px;"><label>硬件版本</label> 
						<input type="text" name="hardware_ver" id="hardware_ver" /></li>
						<li><label>软件版本</label> 
						<input type="text" name="software_ver" id="software_ver"></li>
						<li style="margin-left:10px;">
						<li><label>ssid</label>
						<input type="text" name="ssid" id="ssid"/></li>
						<li style="margin-left:10px;">
						<label for="textfield">入网时间</label> 
						<input type="text" name="starttime" id="starttime" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',maxDate:'#F{$dp.$D(\'starttime\')}'})"/></li>
						<li><label for="textfield">到</label> 
						<input type="text" name="endtime" id="endtime" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',maxDate:'#F{$dp.$D(\'endtime\')}'})"/></li>
						<li style="margin-left:10px;">
						<label>商户名称</label>
						<input type="text" name="merchant" id="merchant"/></li>
						<li><label>状态</label> 
						<select style="width:188px;high:24px;" id="time" name="time">
									<option value="">选择状态</option>
									<option value="0">在线</option>
									<option value="1">离线</option>
							</select></li>
						
						<li style="width:100%; margin-left:10px;"><label>区域</label> <span class="li_ss"> 
							<select style="margin-left:0;" id="province" name="province" onchange="findCityByCode(this)">
									<option value="">选择省份</option>
							</select> 
							<select id="city" name="city" onchange="findDistrictByCode(this)">
									<option value="">选择城市</option>
							</select> 
							<select id="district" name="district">
									<option value="">选择地区</option>
							</select> </span></li>
						<li style="width:100%" class="btn">
						<span style="background:#f8571a;margin-right:52px;"  onclick="highqueryMonitor()">查询</span>
						</li>
						</ul>
					</div>
				</div>
			<!-- 高级搜索结束 -->
		</div>
	<!--查看开始-->
		<div id="ap_attrLook" class="easyui-window" title="AP信息" data-options="iconCls:'icon-search',modal:true,closed:true,top:'50px'" style="height:385px;width:630px;padding:10px;background-color: #F0FFF0;">
	      		<div id="attrLook" style="border:none;">
		      
				</div>
			</div>
		
	<!--查看结束-->
  	
		<div style="height:450px;width: 100%;overflow-y:auto;"id="up_div">
			<table  width="100%" border="0" cellspacing="0" cellpadding="0" id="data_table" class="AP_table ctl">
				<tr style="background:#61E4B5;">
				    <td width="4%"><div align="center">状态</div>
					</td>
					<td width="10%"><div align="center">AP名称</div>
					</td>
					
					<td width="7%"><div align="center">MAC地址</div>
					</td>
					
					<td width="7%"><div align="center">区域</div>
					</td>
					
				</tr>
				<c:forEach items="${apMessageList}" var="apm" >
				  <c:choose>
				   <c:when test="${apm.isonLine==true}">
					<tr style="background:#FCFDFD;"ondblclick="attrLook(${apm.id})" >
					<td width="4%" style="color:red" ><div align="center">在线</div></td>
	                <td  width="10%" ><div align="left" title="${apm.name}">
	                <c:choose>
	                <c:when test="${fn:length(apm.name)>15}">${fn:substring(apm.name, 0, 15)}...</c:when>
	                <c:when test="${fn:length(apm.name)<=15}">${apm.name}</c:when>
	                </c:choose>
	                </div></td>
	                <td  width="7%" ><div align="center">${apm.mac}</div></td>
	                <td width="7%"><div align="center">${apm.province=='北京市'?'':apm.province}</div></td>
	                
	                
	              </tr>
			       </c:when>
			       <c:when test="${apm.isonLine==false}">
					<tr style="background:#FCFDFD;" ondblclick="attrLook(${apm.id})">
					<td width="4%"><div align="center">离线</div></td>
	               	<td  width="10%"><div align="left"  title="${apm.name}">
                    <c:choose>
	                <c:when test="${fn:length(apm.name)>15}">${fn:substring(apm.name, 0, 15)}...</c:when>
	                <c:when test="${fn:length(apm.name)<=15}">${apm.name}</c:when>
	                </c:choose>
	               	</div></td>
	             
	                <td  width="7%"><div align="center">${apm.mac}</div></td>
	                <td width="7%"><div align="center">${apm.province=='北京市'?'':apm.province}</div></td>
	     
	                
	              </tr>
			       </c:when>
	              </c:choose>
	              </c:forEach> 
			</table>
		</div>
<!-- 协议设置、portal设置、上网限制、远程升级 【开始】 -->	
<div id="ap_TabDiv" class="easyui-window" title="远程设置" data-options="iconCls:'icon-save',modal:true,closed:true,top:'50px'" style="width:500px;height:400px;padding:10px;background-color: #F0FFF0;">
	      <div class="easyui-layout" data-options="fit:true">
			<div data-options="region:'center',border:false" style="background-color: #F0FFF0;padding:10px;height:160px">

		  <p style="margin-top:8px;height:23px" >
		  		<label>运程操作: </label>
			     <select name="auth_mode" onchange="ap_setTab(this.value)" style="width:300px;height: 20px;margin-left: 44px;">
			     						  <option value="5" >远程控制</option>
			                              <option value="1" >协议设置</option>
			                              <option value="2"  >Portal设置</option>
			                              <option value="3"  >IP白名单设置</option>
			                               <option value="6"  >MAC白名单设置</option>
			                              <option value="4" >远程升级</option>
			                               <option value="7" >认证设置 </option>
			                               <option value="8" >认证间隔 </option>
			                               <option value="9" >修改SSID</option>
			                               <option value="10" >修改Hostname </option>
			                             
			                              
			                              
			     </select>
		 </p>
		
	<div id="ap_xieyi" style="display:none" >
		 	<div id="box" style="border:none;">
				       <form  id="set_xieyiForm" >
				            <ul class="imglist" style="height: 218px;margin-top: 50px;">
				    	        <li style="display:block;" class="news">
				    	       	    <p><label>心跳间隔</label><input onkeyup="if(!/^([1-9]|[1-9]\d|100)$/.test(this.value)){$(this).val('');}" id="heartbeat" name="heartbeat" type="text" /></p>
				    	            <p><label>认证间隔</label><input onkeyup="if(!/^([1-9]|[1-9]\d|[1-3][0-9][0-9]|[4][1-7][0-9]|480)$/.test(this.value)){$(this).val('');}" id="authenticate" name="authenticate" type="text"/></p>
				                    <p><label>访客下线判断</label><input onkeyup="if(!/^(10|[1-9])$/.test(this.value)){$(this).val('');}" id= "offline_judge" name="offline_judge" type="text"/></p>
				                    <p><label>访客数限制</label><input onkeyup="if(!/^([1-9]|[1-2][0-9]|30)$/.test(this.value)){$(this).val('');}" id="visitor_num" name="visitor_num" type="text"/></p>  
				                    <p>
				                   
				                    
				                    
				                    <span style="bottom:10px;right:40px;" id="save_xieyi">保存</span>
				                    </p>
				                </li>
				            </ul>
			            </form>
		   </div>
	</div>	
<!-- Portal设置 -->
	<div id="ap_portal" style="display:none" >
		   <div id="box" style="border:none;">
		    <form  id="set_portalForm" >
	            <ul class="imglist" style="height: 222px;margin-top: 42px;">
	    	        <li style="display:block;" class="news">
	    	         <p><label>当前认证页面</label><input name="redirect_url" id="redirect_url" type="text" /></p>
	    	         <p><label>当前欢迎页面</label><input name="portal_url" id="portal_url" type="text"  /></p>
	        	        <p style="margin-top:8px;"><label>Portal名称</label>
	                        <select name="portalidName" id="portalidName" onchange="onPortalidName(this.value)">
	                        <option>----请选择----</option>
	        	            </select>
	        	        </p>
	                    <p><label>计划执行时间</label><input name="set_time" id="set_time" type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="Wdate" /></p>
	                    <p>
	                    <span style="bottom:10px;right:40px;" id="save_portal">保存</span>
	                    </p>
	                </li>
	            </ul>
	      </form>
			</div>
	</div>	
	
	<!--ip白名单设置-->
	<div id="ap_whitelist" style="display:none">
	        <div id="box" style="border:none;">
	          <form id="whitelist_Form" >
		            <ul class="imglist" style ="height: 224px;margin-top: 40px;"  >
		    	        <li style="display:block;" class="news">
		                    <p>
		                    <label>IP白名单设置:</label>
		                    <input id="whitelist_ip_yz" type="text" />
		                    <input style ="width:42px" type="button" name="buttonAdd" id="buttonAdd" value="加入"  />
		                    </p>
		                    <textarea rows="" cols="" id="whitelist_ip" name="whitelist_ip" style ="height:120px;width: 328px;margin-left: 105px;" ></textarea>
		                    <p>
		                    <span style="bottom:10px;right:40px;" id="save_whitelist">保存</span>
		                    </p>
		                     <input name="flag" type="hidden"  value="IP" />
		                </li>
		            </ul>
	            </form>
			</div>
	</div>	
	
	<!--mac白名单设置-->
	<div id="ap_whitelist_mac" style="display:none">
	        <div id="box" style="border:none;">
	          <form id="whitelist_Form_mac" >
		            <ul class="imglist" style ="height: 224px;margin-top: 40px;"  >
		    	        <li style="display:block;" class="news">
		                    <p>
		                    <label>mac白名单设置:</label>
		                    <input id="whitelist_ip_yz_mac" type="text" />
		                    <input style ="width:42px" type="button" name="buttonAdd" id="buttonAdd_mac" value="加入"  />
		                    </p>
		                    <textarea rows="" cols="" id="whitelist_ip_mac" name="whitelist_ip" style ="height:120px;width: 328px;margin-left: 105px;" ></textarea>
		                    <p>
		                    <span style="bottom:10px;right:40px;" id="save_whitelist_mac">保存</span>
		                    </p>
		                    <input name="flag" type="hidden"  value="MAC" />
		                </li>
		            </ul>
	            </form>
			</div>
	</div>	
	
	<!--远程升级-->
	<div id="ap_ycsj" style="display:none">
		        <div id="box" style="border:none;">
		         <form id="UpgradeForm" >
			            <ul class="imglist" style="height: 222px;margin-top: 40px;">
			    	        <li style="display:block;" class="news">
			                    <p><label>任务名称</label><input name="taskname" type="text" onkeyup="if(!/^([a-zA-Z\u4E00-\u9FA5\d]{1,50})$/.test(this.value)){$(this).val('');}" /></p>
			                    <p><label>升级包地址</label><input name="url" type="text"  /></p>
			                    <p><label>计划执行时间</label><input name="execute_time" type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="Wdate" /></p>
			                    <p>
			                    <span style="bottom:10px;right:40px;" id="save_ycsj">保存</span>
			                    </p>
			                </li>
			            </ul>
		            </form>
				</div>
	</div>
	
	<!--修改SSID-->
	<div id="ap_ssid" style="display:none">
		        <div id="box" style="border:none;">
		         <form id="set_ssid_form" >
			            <ul class="imglist" style="height: 222px;margin-top: 40px;">
			    	        <li style="display:block;" class="news">
			                    <p><label>SSID名称</label><input name="ssid" type="text"  /></p>
			                    <p>
			                    <span style="bottom:10px;right:40px;" id="save_ssid">保存</span>
			                    </p>
			                </li>
			            </ul>
		            </form>
				</div>
	</div>
	
	<!--修改hostname-->
	<div id="ap_hostname" style="display:none">
		        <div id="box" style="border:none;">
		         <form id="set_hostname_form" >
			            <ul class="imglist" style="height: 222px;margin-top: 40px;">
			    	        <li style="display:block;" class="news">
			                    <p><label>hostname名称</label><input name="hostname" type="text"  /></p>
			                    <p>
			                    <span style="bottom:10px;right:40px;" id="save_hostname">保存</span>
			                    </p>
			                </li>
			            </ul>
		            </form>
				</div>
	</div>
	
	<!-- 认证设置 -->                    
	<div id="ap_rzsz" style="display:none" >
	 	<div id="box" style="border:none;">
	 	 	<span style="display:block;width:90%;text-align:left;height:8px;line-height:40px;">认证设置:</span>
			       <form id="set_rzsz_Form" >
			            <ul class="imglist" style="height: 242px;">
			    	        <li style="display:block;" class="news">
			    	        
			    	           <p style="width: 82%;height: 30px;margin:0;margin-left: 88px;">
			    	           <input type="radio" name="cmd_flag" value="7" style="width: 15px;">一次一密
			                    </p>
			                    
			    	            <p style="width: 82%;height:30px;margin:0;margin-left: 88px;">
			    	            <input type="radio" name="cmd_flag" value="8" style="width: 15px;" >一键登录
			                    </p>
			                    
			                     <p style="width: 82%;height: 30px;margin:0;margin-left: 88px;">
			    	            <input type="radio" name="cmd_flag" value="2" style="width: 15px;">免认证
			                    </p>
			                    <p>
			                    <span style="bottom:10px;right:40px;" id="save_rzsz"> 保存</span>
			                    </p>
			                </li>
			            </ul>
		            </form>
	   		</div>
	</div>	
		<!-- 认证间隔 -->   
	<div id="ap_authinterval" style="display:none" >
		 	<div id="box" style="border:none;">
				       <form  id="set_authintervalForm" >
				            <ul class="imglist" style="height: 218px;margin-top: 50px;">
				    	        <li style="display:block;" class="news">
				    	       	    <p><label>认证间隔（分钟）</label><input onkeyup="if(!/^([1-9]|[1-9]\d|[1-6]\d\d|7[0-1]\d|720)$/.test(this.value)){$(this).val('');}" id="authinterval" name="authinterval" type="text" /></p>
				    	            
				                    <p>
				                    <span style="bottom:10px;right:40px;" id="save_authinterval">保存</span>
				                    </p>
				                </li>
				            </ul>
			            </form>
		   </div>
	</div>		
	
	<!--远程控制-->
	<div id="ap_yckz"  >
	 	<div id="box" style="border:none;">
	 	 <span style="display:block;width:90%;text-align:left;height:8px;line-height:40px;">控制指令:</span>
			       <form id="set_yckz_Form" >
			            <ul class="imglist" style="height: 242px;">
			    	        <li style="display:block;" class="news">
			    	            <p style="width: 82%;height:30px;margin:0;margin-left: 88px;">
			    	            <input type="radio" name="cmd_flag" value="1" style="width: 15px;" >重启设备
			                    </p>
			                    
			                     <p style="width: 82%;height: 30px;margin:0;margin-left: 88px;">
			    	            <input type="radio" name="cmd_flag" value="3" style="width: 15px;">关闭进程
			                    </p>
			                    
			                     <p style="width: 82%;height: 30px;margin:0;margin-left: 88px;">
			    	            <input type="radio" name="cmd_flag" value="4" style="width: 15px;">进程重启
			                    </p>
			                    
			                     <p style="width: 82%;height: 30px;margin:0;margin-left: 88px;">
			    	             <input type="radio" name="cmd_flag" value="6" style="width: 15px;">文件更新
			                    </p>
			                    
			                     <p style="width: 82%;height: 30px;margin:0;margin-left: 88px;">
			    	             <input type="radio" name="cmd_flag" value="startportal" style="width: 15px;">Portal启动
			                    </p>
			                    
			                      <p style="width: 82%;height: 30px;margin:0;margin-left: 88px;">
			    	             <input type="radio" name="cmd_flag" value="stopportal" style="width: 15px;">Portal关闭
			                    </p>
			                     <p style="width: 82%;height: 30px;margin:0;margin-left: 88px;">
			    	             <input type="radio" name="cmd_flag" value="restartportal" style="width: 15px;">Portal重启
			                    </p>
			                    <p>
			                    <span style="bottom:10px;right:40px;" id="save_yckz"> 保存</span>
			                    </p>
			                </li>
			            </ul>
		            </form>
	   		</div>
	</div>	
	</div>
		</div>
    </div>	
    <input type="hidden" id="scroll_top" value="0"/>
	<input type="hidden" id="scroll_num" value="0"/>
</body>
</html>
