<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<!-- saved from url=(0053)http://waimai.baidu.com/waimai?qt=orderlist&type=wait -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script async="" src="${ctx}/source/js/waimai/wpo_alog_speed.js"></script>
<script src="${ctx}/source/js/waimai/hm.js"></script>



<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
<meta name="keywords"
	content="百度外卖，百度地图外卖，百度外卖网，外卖订餐，网上订餐外卖，快餐外卖，外卖网，北京外卖，外卖；">
<meta name="description"
	content="百度地图外卖是由百度打造的一个专业外卖服务平台，覆盖众多优质外卖商家，提供方便快捷的网上外卖订餐服务。">
<link rel="icon" href="" mce_href="" type="image/x-icon">

<title>爱WIFI</title>
<script async="" src="${ctx}/source/js/waimai/element.min.js"></script>
<script async="" src="${ctx}/source/js/waimai/monkey.min.js"></script>
<script async="" src="${ctx}/source/js/waimai/analytics.js"></script>
<script src="${ctx}/source/js/waimai/alog.min.js"></script>
<script type="text/javascript">
	void function(g, f, j, c, h, d, b) {
		g.alogObjectName = h, g[h] = g[h] || function() {
			(g[h].q = g[h].q || []).push(arguments)
		}, g[h].l = g[h].l || +new Date, d = f.createElement(j), d.asyn = 1,
				d.src = c, b = f.getElementsByTagName(j)[0], b.parentNode
						.insertBefore(d, b)
	}(window, document, "script",
			"http://img.baidu.com/hunter/alog/alog.min.js", "alog");
	(function() {
		window.PDC = {
			mark : function(a, b) {
				alog("speed.set", a, b || +new Date);
				alog.fire && alog.fire("mark")
			},
			init : function(a) {
				alog("speed.set", "options", a)
			},
			view_start : function() {
				return
			},
			tti : function() {
				return
			},
			page_ready : function() {
				return
			}
		}
	})();
</script>

<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/waimai/main_64caa1b.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/waimai/common_2f2e376.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/waimai/landing_c31a93d.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/waimai/menu_d754cfd.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/waimai/order_9dcd9a3.css">
<script>
	alog('speed.set', 'ht', new Date);
</script>
<script src="${ctx}/source/js/waimai/map.js"></script>


<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/eye/common.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/eye/home.css">
	
<script type="text/javascript" src="${ctx}/source/js/eye/api。js"></script>
<script type="text/javascript" src="${ctx}/source/js/eye/getscript.js"></script>

<script type="text/javascript" src="${ctx}/source/js/eye/mod.js"></script>
<script type="text/javascript" src="${ctx}/source/js/eye/jquery.js"></script>
<script type="text/javascript" src="${ctx}/source/js/eye/common.js"></script>
<script type="text/javascript" src="${ctx}/source/js/eye/metronic.js"></script>
<script type="text/javascript"
	src="${ctx}/source/js/eye/echarts-plain-map.js"></script>
<script type="text/javascript" src="${ctx}/source/js/eye/home.js"></script>



</head>

<body>
	<header class="header">
		<div class="ui-width header-wrap">

			<script type="text/javascript" src="${ctx}/source/js/waimai/jsapi"></script>
		</div>
	</header>



	<div id="content" class="clearfix" style="min-height: 80px;">
		<div class="main">
			<section class="order-menu">
				<div class="order-menu-pos">
					<div class="order-menu-header">
						<span>商户</span>
					</div>
					<div class="splitter"></div>
					<div class="order-menu-body">
						<div class="menu-item">
							<div id="menu-order" class="selected">
								<span class="menu-icon order-icon"></span> <a href="mall!eye.do"
									class="menu-title order"><span>全局概览</span></a>
							</div>
						</div>
						<div class="menu-item">
							<div id="menu-address">
								<span class="menu-icon address-icon"></span> <a
									href="mall!customer_portrait.do" class="menu-title address"><span>顾客画像</span></a>
							</div>
						</div>
						<div class="menu-item">
							<div id="menu-favorite">
								<span class="menu-icon favorite-icon"></span> <a
									href="mall!flow_coming.do" class="menu-title favorite"><span>顾客来源</span></a>
							</div>
						</div>
						<div class="menu-item">
							<div id="menu-coupon">
								<span class="menu-icon coupon-icon"></span> <a
									href="mall!flow_going.do" class="menu-title coupon"><span>顾客去向</span></a>
							</div>
						</div>

					</div>
				</div>

			</section>

			<section class="usercenter-detail" id="user-order">
				<div class="layout_rightmain">
					<div class="r-top" style="background: rgb(255, 255, 255);">
						<div class="menu" id="menu">
							<dl>
								<dt>
									<b class="menu-icon-location"></b><span id="currentCooperLoc">某商场</span><b
										class="menu-icon-arrow" style="display: none;"></b>
								</dt>
								<dd>
									<ul id="cooperLocList"></ul>
								</dd>
							</dl>
						</div>
						<div class="tool_title">分析日期：2014-08-25 到 2014-08-31</div>
						<div class="tool_date cf" style="display: none;">
							<div class="date" id="div_date">
								<span class="date_title" id="date">2014-08-25 至
									2014-08-31</span> <a class="opt_sel" id="input_trigger"
									href="http://huiyan.baidu.com/malldemo/flow/coming#"> <i
									class="i_orderd"></i>
								</a>
							</div>
							<label class="contrast" for="needCompare_1419484885278"
								style="display: none;"><input type="checkbox" class="pc"
								name="needCompare_1419484885278" id="needCompare_1419484885278"
								value="1" disabled="disabled">对比</label>
							<div class="ta_date" id="div_compare_date" style="display: none;">
								<span name="dateCompare" id="dateCompare" class="date_title"
									style="display: none;"></span> <a class="opt_sel"
									id="compare_trigger"
									href="http://huiyan.baidu.com/malldemo/flow/coming#"> <i
									class="i_orderd"></i>
								</a>
							</div>
							<div class="date-section cf" id="short_opt">
								<ul id="toolbar" class="select cf">
									<li><a id="aRecent3Days" href="javascript:void(0);">3天</a></li>
									<li><a id="aRecent7Days" href="javascript:void(0);">7天</a></li>
									<li><a id="aRecent14Days" href="javascript:void(0);">14天</a>
									</li>
									<li><a id="aRecent30Days" href="javascript:void(0);">30天</a>
									</li>
								</ul>
							</div>
							<div id="datePicker">
								<input type="hidden" id="startDate" name="startDate"
									value="2014-08-25"><input type="hidden" id="endDate"
									name="endDate" value="2014-08-31"><input
									type="checkbox" id="needCompare" name="needCompare" value="0"
									style="display: none;">
							</div>
						</div>
					</div>
					<div id="tipBox" style="height: 0px;">
						<span class="title">温馨提示：</span> <span class="message"></span> <span
							class="close_icon"></span>
					</div>
					<div class="chartArea">
						<div class="coming">
							<dl class="itemBox">
								<dt>来源商户Top20</dt>
								<dd class="clearfix">
									<div id="coming_village">
										<div class="coming_village_tips"
											style="text-align: center; height: 2em; line-height: 2em; display: none; background: rgb(255, 254, 209);">加载中，请稍后...</div>
										<div id="comming_village_left"
											_echarts_instance_="1419484884957"
											style="cursor: default; background-color: rgba(0, 0, 0, 0);">
											<div
												style="position: relative; overflow: hidden; width: 529px; height: 800px;">
												<div width="529" height="800" data-zr-dom-id="bg"
													style="position: absolute; left: 0px; top: 0px; width: 529px; height: 800px;"></div>
												<canvas width="529" height="800" data-zr-dom-id="0"
													style="position: absolute; left: 0px; top: 0px; width: 529px; height: 800px;"></canvas>
												<canvas width="529" height="800" data-zr-dom-id="1"
													style="position: absolute; left: 0px; top: 0px; width: 529px; height: 800px;"></canvas>
												<canvas width="529" height="800" data-zr-dom-id="2"
													style="position: absolute; left: 0px; top: 0px; width: 529px; height: 800px;"></canvas>
												<canvas width="529" height="800" data-zr-dom-id="6"
													style="position: absolute; left: 0px; top: 0px; width: 529px; height: 800px;"></canvas>
												<canvas width="529" height="800" data-zr-dom-id="8"
													style="position: absolute; left: 0px; top: 0px; width: 529px; height: 800px;"></canvas>
												<canvas width="529" height="800"
													data-zr-dom-id="_zrender_hover_"
													style="position: absolute; left: 0px; top: 0px; width: 529px; height: 800px;"></canvas>
												<div class="echarts-dataview"
													style="position: absolute; display: block; overflow: hidden; transition: height 0.8s, background-color 1s; -webkit-transition: height 0.8s, background-color 1s; z-index: 1; left: 0px; top: 0px; width: 529px; height: 0px; background-color: rgb(240, 255, 255);"></div>
											</div>
										</div>
										<div class="comming_village_right_box">
											<div id="comming_village_right"
												style="overflow: hidden; position: relative; z-index: 0; color: rgb(0, 0, 0); text-align: left; background-color: rgb(243, 241, 236);">
												<div
													style="overflow: visible; position: absolute; z-index: 0; left: 0px; top: 0px; cursor: url(http://api0.map.bdimg.com/images/openhand.cur) 8 8, default;">
													<div class="BMap_mask"
														style="position: absolute; left: 0px; top: 0px; z-index: 9; overflow: hidden; -webkit-user-select: none; width: 489px; height: 700px;"></div>
													<div
														style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;">
														<div
															style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 800;"></div>
														<div
															style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 700;">
															<span class="BMap_Marker BMap_noprint" unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: -91px; top: 160px; z-index: -7990076; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: 309px; top: 345px; z-index: -7988028; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: 422px; top: 146px; z-index: -7990228; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: -391px; top: 359px; z-index: -7987876; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: 59px; top: 29px; z-index: -7991528; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: 222px; top: 545px; z-index: -7985816; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: 184px; top: 61px; z-index: -7991168; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: 459px; top: 323px; z-index: -7988278; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: 434px; top: 303px; z-index: -7988500; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: -41px; top: 57733px; z-index: -7338350; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: 622px; top: 161px; z-index: -7990062; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: -1353px; top: -291px; z-index: -7995066; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: 159px; top: -1044px; z-index: -8003386; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: 434px; top: -957px; z-index: -8002432; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: 247px; top: 128px; z-index: -7990436; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: 322px; top: 253px; z-index: -7989052; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: 634px; top: 3265px; z-index: -7955684; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: 347px; top: 275px; z-index: -7988804; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: 309px; top: 365px; z-index: -7987808; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span><span class="BMap_Marker BMap_noprint"
																unselectable="on"
																"="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 21px; height: 33px; left: 422px; top: 364px; z-index: -7987822; -webkit-user-select: none; background: url(http://api0.map.bdimg.com/images/blank.gif);"
																title=""></span>
														</div>
														<div
															style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 600;"></div>
														<div
															style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 500;"></div>
														<div
															style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 400;">
															<span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: -91px; top: 160px; z-index: -7990076;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 309px; top: 345px; z-index: -7988028;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 422px; top: 146px; z-index: -7990228;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: -391px; top: 359px; z-index: -7987876;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 59px; top: 29px; z-index: -7991528;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 222px; top: 545px; z-index: -7985816;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 184px; top: 61px; z-index: -7991168;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 459px; top: 323px; z-index: -7988278;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 434px; top: 303px; z-index: -7988500;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: -41px; top: 57733px; z-index: -7338350;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 622px; top: 161px; z-index: -7990062;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: -1353px; top: -291px; z-index: -7995066;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 159px; top: -1044px; z-index: -8003386;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 434px; top: -957px; z-index: -8002432;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 247px; top: 128px; z-index: -7990436;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 322px; top: 253px; z-index: -7989052;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 634px; top: 3265px; z-index: -7955684;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 347px; top: 275px; z-index: -7988804;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 309px; top: 365px; z-index: -7987808;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span><span class="BMap_Marker" unselectable="on"
																style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 422px; top: 364px; z-index: -7987822;"><div
																	style="position: absolute; margin: 0px; padding: 0px; width: 21px; height: 33px; overflow: hidden;">
																	<img src="${ctx}/source/js/eye/markers_new_653df87.png"
																		style="display: block; border: none; margin-left: -104px; margin-top: -113px;">
																</div></span>
														</div>
														<div
															style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 300;"></div>
														<div
															style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 201;"></div>
														<div
															style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"></div>
													</div>
													<div
														style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 1;">
														<div
															style="position: absolute; overflow: visible; z-index: -100; left: 244px; top: 350px; display: block; -webkit-transform: translate3d(0px, 0px, 0px);">
															<img src="${ctx}/source/js/eye/saved_resource"
																style="position: absolute; border: none; width: 256px; height: 256px; left: -34px; top: -197px; max-width: none; opacity: 1;"><img
																src="${ctx}/source/js/eye/saved_resource(1)"
																style="position: absolute; border: none; width: 256px; height: 256px; left: -290px; top: -197px; max-width: none; opacity: 1;"><img
																src="${ctx}/source/js/eye/saved_resource(2)"
																style="position: absolute; border: none; width: 256px; height: 256px; left: 222px; top: -197px; max-width: none; opacity: 1;"><img
																src="${ctx}/source/js/eye/saved_resource(3)"
																style="position: absolute; border: none; width: 256px; height: 256px; left: -34px; top: 59px; max-width: none; opacity: 1;"><img
																src="${ctx}/source/js/eye/saved_resource(4)"
																style="position: absolute; border: none; width: 256px; height: 256px; left: -34px; top: -453px; max-width: none; opacity: 1;"><img
																src="${ctx}/source/js/eye/saved_resource(5)"
																style="position: absolute; border: none; width: 256px; height: 256px; left: -290px; top: -453px; max-width: none; opacity: 1;"><img
																src="${ctx}/source/js/eye/saved_resource(6)"
																style="position: absolute; border: none; width: 256px; height: 256px; left: -290px; top: 59px; max-width: none; opacity: 1;"><img
																src="${ctx}/source/js/eye/saved_resource(7)"
																style="position: absolute; border: none; width: 256px; height: 256px; left: 222px; top: -453px; max-width: none; opacity: 1;"><img
																src="${ctx}/source/js/eye/saved_resource(8)"
																style="position: absolute; border: none; width: 256px; height: 256px; left: 222px; top: 59px; max-width: none; opacity: 1;"><img
																src="${ctx}/source/js/eye/saved_resource(9)"
																style="position: absolute; border: none; width: 256px; height: 256px; left: -34px; top: 315px; max-width: none; opacity: 1;"><img
																src="${ctx}/source/js/eye/saved_resource(10)"
																style="position: absolute; border: none; width: 256px; height: 256px; left: 222px; top: 315px; max-width: none; opacity: 1;"><img
																src="${ctx}/source/js/eye/saved_resource(11)"
																style="position: absolute; border: none; width: 256px; height: 256px; left: -290px; top: 315px; max-width: none; opacity: 1;">
														</div>
													</div>
													<div
														style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 2; display: none;">
														<div
															style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 0; display: none;"></div>
														<div
															style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 10; display: none;"></div>
													</div>
													<div
														style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 3;"></div>
												</div>
												<div
													style="overflow: hidden; position: absolute; left: 0px; bottom: 0px; z-index: 2100; width: 100%; height: 30px; -webkit-user-select: none; visibility: hidden; font-size: 12px; color: rgb(54, 54, 54); line-height: 20px;">
													<div style="width: 1000px; overflow: hidden;">
														<a target="_blank" title="到百度地图查看此区域"
															href="http://map.baidu.com/"
															style="outline: none; float: left;"><img
															style="border: none; width: 77px; height: 32px; vertical-align: bottom;"
															src="${ctx}/source/js/eye/copyright_logo.png"></a>
														<div
															style="float: left; margin-top: 10px; font-size: 12px;">
															<span style="margin-left: 10px;"></span><span
																style="margin-left: 10px;">拍摄日期:</span>
														</div>
													</div>
												</div>
												<div title="退出全景"
													style="position: absolute; z-index: 1201; top: 10px; right: 10px; width: 17px; height: 16px; cursor: pointer; display: none; background: url(http://api0.map.bdimg.com/images/st-close.png) no-repeat;"></div>
												<div id="zoomer"
													style="position: absolute; z-index: 0; top: 0px; left: 0px; overflow: hidden; visibility: hidden; cursor: url(http://api0.map.bdimg.com/images/openhand.cur) 8 8, default">
													<div class="BMap_zoomer" style="top: 0; left: 0;"></div>
													<div class="BMap_zoomer" style="top: 0; right: 0;"></div>
													<div class="BMap_zoomer" style="bottom: 0; left: 0;"></div>
													<div class="BMap_zoomer" style="bottom: 0; right: 0;"></div>
												</div>
												<div class=" anchorBL"
													style="height: 32px; position: absolute; z-index: 30; bottom: 0px; right: auto; top: auto; left: 1px;">
													<a title="到百度地图查看此区域" target="_blank"
														href="http://map.baidu.com/?sr=1" style="outline: none;"><img
														style="border: none; width: 77px; height: 32px"
														src="${ctx}/source/js/eye/copyright_logo.png"></a>
												</div>
												<div unselectable="on"
													class=" BMap_cpyCtrl BMap_noprint anchorBL"
													style="cursor: default; white-space: nowrap; color: black; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 11px; line-height: 15px; font-family: arial, sans-serif; bottom: 2px; right: auto; top: auto; left: 81px; position: absolute; z-index: 10; background: none;">
													<span _cid="1" style="display: inline;"><span
														style="font-size: 11px">© 2015 Baidu&nbsp;- Data ©
															<a target="_blank" href="http://www.navinfo.com/"
															style="display: inline;">NavInfo</a> &amp; <a
															target="_blank" href="http://www.cennavi.com.cn/"
															style="display: inline;">CenNavi</a> &amp; <a
															target="_blank" href="http://www.365ditu.com/"
															style="display: inline;">道道通</a>
													</span></span>
												</div>
												<div unselectable="on"
													class=" BMap_stdMpCtrl BMap_stdMpType0 BMap_noprint anchorTL"
													style="width: 62px; height: 144px; bottom: auto; right: auto; top: 10px; left: 10px; position: absolute; z-index: 1100;">
													<div class="BMap_stdMpPan">
														<div class="BMap_button BMap_panN" title="向上平移"></div>
														<div class="BMap_button BMap_panW" title="向左平移"></div>
														<div class="BMap_button BMap_panE" title="向右平移"></div>
														<div class="BMap_button BMap_panS" title="向下平移"></div>
														<div class="BMap_stdMpPanBg BMap_smcbg"></div>
													</div>
													<div class="BMap_stdMpZoom"
														style="height: 99px; width: 62px;">
														<div class="BMap_button BMap_stdMpZoomIn" title="放大一级">
															<div class="BMap_smcbg"></div>
														</div>
														<div class="BMap_button BMap_stdMpZoomOut" title="缩小一级"
															style="top: 78px;">
															<div class="BMap_smcbg"></div>
														</div>
														<div class="BMap_stdMpSlider" style="height: 60px;">
															<div class="BMap_stdMpSliderBgTop" style="height: 60px;">
																<div class="BMap_smcbg"></div>
															</div>
															<div class="BMap_stdMpSliderBgBot"
																style="top: 19px; height: 45px;"></div>
															<div class="BMap_stdMpSliderMask" title="放置到此级别"></div>
															<div class="BMap_stdMpSliderBar" title="拖动缩放"
																style="cursor: url(http://api0.map.bdimg.com/images/openhand.cur) 8 8, default; top: 19px;">
																<div class="BMap_smcbg"></div>
															</div>
														</div>
														<div class="BMap_zlHolder">
															<div class="BMap_zlSt">
																<div class="BMap_smcbg"></div>
															</div>
															<div class="BMap_zlCity">
																<div class="BMap_smcbg"></div>
															</div>
															<div class="BMap_zlProv">
																<div class="BMap_smcbg"></div>
															</div>
															<div class="BMap_zlCountry">
																<div class="BMap_smcbg"></div>
															</div>
														</div>
													</div>
													<div class="BMap_stdMpGeolocation"
														style="position: initial; display: none; margin-top: 43px; margin-left: 10px;">
														<div class="BMap_geolocationContainer"
															style="position: initial; width: 24px; height: 24px; overflow: hidden; margin: 0px; box-sizing: border-box;">
															<div class="BMap_geolocationIconBackground"
																style="width: 24px; height: 24px; background-image: url(http://api0.map.bdimg.com/images/navigation-control/geolocation-control/pc/bg-20x20.png); background-size: 20px 20px; background-position: 3px 3px; background-repeat: no-repeat;">
																<div class="BMap_geolocationIcon"
																	style="position: initial; width: 24px; height: 24px; cursor: pointer; background-image: url(&#39;http://api0.map.bdimg.com/images/navigation-control/geolocation-control/pc/success-10x10.png&#39;); background-size: 10px 10px; background-repeat: no-repeat; background-position: center;"></div>
															</div>
														</div>
													</div>
												</div>
												<div unselectable="on" class=" BMap_noprint anchorTR"
													style="bottom: auto; right: 10px; top: 10px; left: auto; white-space: nowrap; cursor: pointer; position: absolute; z-index: 10;">
													<div style="float: left;">
														<div title="显示普通地图"
															style="box-shadow: rgba(0, 0, 0, 0.34902) 2px 2px 3px; border-left-width: 1px; border-left-style: solid; border-left-color: rgb(139, 164, 220); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(139, 164, 220); border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(139, 164, 220); padding: 2px 6px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 12px; line-height: 1.3em; font-family: arial, sans-serif; text-align: center; white-space: nowrap; border-radius: 3px 0px 0px 3px; color: rgb(255, 255, 255); background: rgb(142, 168, 224);">地图</div>
													</div>
													<div style="float: left;">
														<div title="显示带有街道的卫星影像"
															style="box-shadow: rgba(0, 0, 0, 0.34902) 2px 2px 3px; border: 1px solid rgb(139, 164, 220); padding: 2px 6px; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 12px; line-height: 1.3em; font-family: arial, sans-serif; text-align: center; white-space: nowrap; border-radius: 0px 3px 3px 0px; color: rgb(0, 0, 0); background: rgb(255, 255, 255);">混合</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</dd>
							</dl>
						</div>
						<dl class="itemBox">
							<dt>全国客流来源分布</dt>
							<dd>
								<div id="coming_province_map" _echarts_instance_="1419484884960"
									style="background-color: rgba(0, 0, 0, 0);">
									<div
										style="position: relative; overflow: hidden; width: 1057px; height: 500px;">
										<div width="1057" height="500" data-zr-dom-id="bg"
											style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></div>
										<canvas width="1057" height="500" data-zr-dom-id="1"
											style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></canvas>
										<canvas width="1057" height="500" data-zr-dom-id="2"
											style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></canvas>
										<canvas width="1057" height="500" data-zr-dom-id="3"
											style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></canvas>
										<canvas width="1057" height="500" data-zr-dom-id="4"
											style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></canvas>
										<canvas width="1057" height="500" data-zr-dom-id="5"
											style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></canvas>
										<canvas width="1057" height="500" data-zr-dom-id="6"
											style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></canvas>
										<canvas width="1057" height="500" data-zr-dom-id="8"
											style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></canvas>
										<canvas width="1057" height="500"
											data-zr-dom-id="_zrender_hover_"
											style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></canvas>
									</div>
								</div>
							</dd>
						</dl>
						<div id="coming_province_list">
							<dl class="itemBox"
								style="float: left; width: 49%; margin-right: 2%;">
								<dt>全国各省份客流来源</dt>
								<dd>
									<div id="coming_province_list_bj_other"
										_echarts_instance_="1419484884959"
										style="background-color: rgba(0, 0, 0, 0);">
										<div
											style="position: relative; overflow: hidden; width: 510px; height: 500px;">
											<div width="510" height="500" data-zr-dom-id="bg"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 500px;"></div>
											<canvas width="510" height="500" data-zr-dom-id="1"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 500px;"></canvas>
											<canvas width="510" height="500" data-zr-dom-id="2"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 500px;"></canvas>
											<canvas width="510" height="500" data-zr-dom-id="3"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 500px;"></canvas>
											<canvas width="510" height="500" data-zr-dom-id="4"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 500px;"></canvas>
											<canvas width="510" height="500" data-zr-dom-id="6"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 500px;"></canvas>
											<canvas width="510" height="500" data-zr-dom-id="8"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 500px;"></canvas>
											<canvas width="510" height="500"
												data-zr-dom-id="_zrender_hover_"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 500px;"></canvas>
											<div class="echarts-dataview"
												style="position: absolute; display: block; overflow: hidden; transition: height 0.8s, background-color 1s; -webkit-transition: height 0.8s, background-color 1s; z-index: 1; left: 0px; top: 0px; width: 510px; height: 0px; background-color: rgb(240, 255, 255);"></div>
										</div>
									</div>
								</dd>
							</dl>
							<dl class="itemBox" style="float: left; width: 49%;">
								<dt>其他省市来源</dt>
								<dd>
									<div id="coming_province_list_other"
										_echarts_instance_="1419484884958"
										style="background-color: rgba(0, 0, 0, 0);">
										<div
											style="position: relative; overflow: hidden; width: 510px; height: 500px;">
											<div width="510" height="500" data-zr-dom-id="bg"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 500px;"></div>
											<canvas width="510" height="500" data-zr-dom-id="0"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 500px;"></canvas>
											<canvas width="510" height="500" data-zr-dom-id="1"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 500px;"></canvas>
											<canvas width="510" height="500" data-zr-dom-id="2"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 500px;"></canvas>
											<canvas width="510" height="500" data-zr-dom-id="6"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 500px;"></canvas>
											<canvas width="510" height="500" data-zr-dom-id="8"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 500px;"></canvas>
											<canvas width="510" height="500"
												data-zr-dom-id="_zrender_hover_"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 500px;"></canvas>
										</div>
									</div>
								</dd>
							</dl>
							<div class="clearfix"></div>
						</div>
						<div class="coming">
							<dl class="itemBox">
								<dt>来源城市行政区域</dt>
								<dd>
									<div class="selectBox">
										选择省市：<select id="select_coming_province" name=""><option
												value="北京市">北京市</option>
											<option value="四川省">四川省</option>
											<option value="河南省">河南省</option>
											<option value="湖北省">湖北省</option>
											<option value="天津市">天津市</option>
											<option value="广东省">广东省</option>
											<option value="上海市">上海市</option>
											<option value="河北省">河北省</option>
											<option value="山西省">山西省</option>
											<option value="青海省">青海省</option>
											<option value="江苏省">江苏省</option>
											<option value="山东省">山东省</option>
											<option value="辽宁省">辽宁省</option>
											<option value="陕西省">陕西省</option>
											<option value="湖南省">湖南省</option>
											<option value="浙江省">浙江省</option>
											<option value="重庆市">重庆市</option>
											<option value="甘肃省">甘肃省</option>
											<option value="吉林省">吉林省</option>
											<option value="内蒙古自治区">内蒙古自治区</option>
											<option value="江西省">江西省</option>
											<option value="黑龙江省">黑龙江省</option>
											<option value="云南省">云南省</option>
											<option value="新疆维吾尔自治区">新疆维吾尔自治区</option>
											<option value="安徽省">安徽省</option>
											<option value="广西壮族自治区">广西壮族自治区</option>
											<option value="福建省">福建省</option>
											<option value="宁夏回族自治区">宁夏回族自治区</option>
											<option value="海南省">海南省</option>
											<option value="贵州省">贵州省</option></select><select
											id="select_coming_district_city" name="">undefined
											<option value="北京市">北京市</option>
										</select>
									</div>
									<div id="coming_city" _echarts_instance_="1419484884961"
										style="display: none; background-color: rgba(0, 0, 0, 0);">
										<div
											style="position: relative; overflow: hidden; width: 1057px; height: 500px;">
											<div width="1057" height="500" data-zr-dom-id="bg"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></div>
											<canvas width="1057" height="500" data-zr-dom-id="1"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></canvas>
											<canvas width="1057" height="500" data-zr-dom-id="2"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></canvas>
											<canvas width="1057" height="500" data-zr-dom-id="3"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></canvas>
											<canvas width="1057" height="500" data-zr-dom-id="4"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></canvas>
											<canvas width="1057" height="500" data-zr-dom-id="6"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></canvas>
											<canvas width="1057" height="500" data-zr-dom-id="8"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></canvas>
											<canvas width="1057" height="500"
												data-zr-dom-id="_zrender_hover_"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></canvas>
											<div class="echarts-dataview"
												style="position: absolute; display: block; overflow: hidden; transition: height 0.8s, background-color 1s; -webkit-transition: height 0.8s, background-color 1s; z-index: 1; left: 0px; top: 0px; width: 1057px; height: 0px; background-color: rgb(240, 255, 255);"></div>
										</div>
									</div>
									<div id="districtArea" style="display: block;">
										<div id="main_coming_district"
											_echarts_instance_="1419484884962"
											style="background-color: rgba(0, 0, 0, 0);">
											<div
												style="position: relative; overflow: hidden; width: 529px; height: 500px;">
												<div width="529" height="500" data-zr-dom-id="bg"
													style="position: absolute; left: 0px; top: 0px; width: 529px; height: 500px;"></div>
												<canvas width="529" height="500" data-zr-dom-id="1"
													style="position: absolute; left: 0px; top: 0px; width: 529px; height: 500px;"></canvas>
												<canvas width="529" height="500" data-zr-dom-id="2"
													style="position: absolute; left: 0px; top: 0px; width: 529px; height: 500px;"></canvas>
												<canvas width="529" height="500" data-zr-dom-id="3"
													style="position: absolute; left: 0px; top: 0px; width: 529px; height: 500px;"></canvas>
												<canvas width="529" height="500" data-zr-dom-id="4"
													style="position: absolute; left: 0px; top: 0px; width: 529px; height: 500px;"></canvas>
												<canvas width="529" height="500" data-zr-dom-id="6"
													style="position: absolute; left: 0px; top: 0px; width: 529px; height: 500px;"></canvas>
												<canvas width="529" height="500" data-zr-dom-id="8"
													style="position: absolute; left: 0px; top: 0px; width: 529px; height: 500px;"></canvas>
												<canvas width="529" height="500"
													data-zr-dom-id="_zrender_hover_"
													style="position: absolute; left: 0px; top: 0px; width: 529px; height: 500px;"></canvas>
												<div class="echarts-dataview"
													style="position: absolute; display: block; overflow: hidden; transition: height 0.8s, background-color 1s; -webkit-transition: height 0.8s, background-color 1s; z-index: 1; left: 0px; top: 0px; width: 529px; height: 0px; background-color: rgb(240, 255, 255);"></div>
											</div>
										</div>
										<div id="sub_coming_district"
											_echarts_instance_="1419484884963"
											style="background-color: rgba(0, 0, 0, 0);">
											<div
												style="position: relative; overflow: hidden; width: 528px; height: 500px;">
												<div width="528" height="500" data-zr-dom-id="bg"
													style="position: absolute; left: 0px; top: 0px; width: 528px; height: 500px;"></div>
												<canvas width="528" height="500" data-zr-dom-id="0"
													style="position: absolute; left: 0px; top: 0px; width: 528px; height: 500px;"></canvas>
												<canvas width="528" height="500" data-zr-dom-id="1"
													style="position: absolute; left: 0px; top: 0px; width: 528px; height: 500px;"></canvas>
												<canvas width="528" height="500" data-zr-dom-id="2"
													style="position: absolute; left: 0px; top: 0px; width: 528px; height: 500px;"></canvas>
												<canvas width="528" height="500" data-zr-dom-id="6"
													style="position: absolute; left: 0px; top: 0px; width: 528px; height: 500px;"></canvas>
												<canvas width="528" height="500" data-zr-dom-id="8"
													style="position: absolute; left: 0px; top: 0px; width: 528px; height: 500px;"></canvas>
												<canvas width="528" height="500"
													data-zr-dom-id="_zrender_hover_"
													style="position: absolute; left: 0px; top: 0px; width: 528px; height: 500px;"></canvas>
												<div class="echarts-dataview"
													style="position: absolute; display: block; overflow: hidden; transition: height 0.8s, background-color 1s; -webkit-transition: height 0.8s, background-color 1s; z-index: 1; left: 0px; top: 0px; width: 528px; height: 0px; background-color: rgb(240, 255, 255);"></div>
											</div>
										</div>
									</div>
								</dd>
							</dl>
						</div>
						<div class="coming">
							<dl class="itemBox">
								<dt>来源商圈</dt>
								<dd class="clearfix">
									<div class="selectBox">
										选择城市：<select id="coming_business_city_select" name=""><option
												value="北京市">北京市</option>
											<option value="兰州市">兰州市</option>
											<option value="郑州市">郑州市</option>
											<option value="南昌市">南昌市</option>
											<option value="天津市">天津市</option>
											<option value="石家庄市">石家庄市</option>
											<option value="成都市">成都市</option>
											<option value="哈尔滨市">哈尔滨市</option>
											<option value="苏州市">苏州市</option>
											<option value="大连市">大连市</option>
											<option value="上海市">上海市</option>
											<option value="温州市">温州市</option>
											<option value="西宁市">西宁市</option>
											<option value="广州市">广州市</option>
											<option value="太原市">太原市</option>
											<option value="武汉市">武汉市</option>
											<option value="玉林市">玉林市</option>
											<option value="杭州市">杭州市</option></select>
									</div>
									<div id="coming_business_main"
										_echarts_instance_="1419484884964"
										style="background-color: rgba(0, 0, 0, 0);">
										<div
											style="position: relative; overflow: hidden; width: 529px; height: 600px;">
											<div width="529" height="600" data-zr-dom-id="bg"
												style="position: absolute; left: 0px; top: 0px; width: 529px; height: 600px;"></div>
											<canvas width="529" height="600" data-zr-dom-id="1"
												style="position: absolute; left: 0px; top: 0px; width: 529px; height: 600px;"></canvas>
											<canvas width="529" height="600" data-zr-dom-id="2"
												style="position: absolute; left: 0px; top: 0px; width: 529px; height: 600px;"></canvas>
											<canvas width="529" height="600" data-zr-dom-id="3"
												style="position: absolute; left: 0px; top: 0px; width: 529px; height: 600px;"></canvas>
											<canvas width="529" height="600" data-zr-dom-id="6"
												style="position: absolute; left: 0px; top: 0px; width: 529px; height: 600px;"></canvas>
											<canvas width="529" height="600" data-zr-dom-id="8"
												style="position: absolute; left: 0px; top: 0px; width: 529px; height: 600px;"></canvas>
											<canvas width="529" height="600"
												data-zr-dom-id="_zrender_hover_"
												style="position: absolute; left: 0px; top: 0px; width: 529px; height: 600px;"></canvas>
											<div class="echarts-dataview"
												style="position: absolute; display: block; overflow: hidden; transition: height 0.8s, background-color 1s; -webkit-transition: height 0.8s, background-color 1s; z-index: 1; left: 0px; top: 0px; width: 529px; height: 0px; background-color: rgb(240, 255, 255);"></div>
										</div>
									</div>
									<div id="coming_business_sub"
										_echarts_instance_="1419484884965"
										style="background-color: rgba(0, 0, 0, 0);">
										<div
											style="position: relative; overflow: hidden; width: 528px; height: 600px;">
											<div width="528" height="600" data-zr-dom-id="bg"
												style="position: absolute; left: 0px; top: 0px; width: 528px; height: 600px;"></div>
											<canvas width="528" height="600" data-zr-dom-id="0"
												style="position: absolute; left: 0px; top: 0px; width: 528px; height: 600px;"></canvas>
											<canvas width="528" height="600" data-zr-dom-id="1"
												style="position: absolute; left: 0px; top: 0px; width: 528px; height: 600px;"></canvas>
											<canvas width="528" height="600" data-zr-dom-id="2"
												style="position: absolute; left: 0px; top: 0px; width: 528px; height: 600px;"></canvas>
											<canvas width="528" height="600" data-zr-dom-id="6"
												style="position: absolute; left: 0px; top: 0px; width: 528px; height: 600px;"></canvas>
											<canvas width="528" height="600" data-zr-dom-id="8"
												style="position: absolute; left: 0px; top: 0px; width: 528px; height: 600px;"></canvas>
											<canvas width="528" height="600"
												data-zr-dom-id="_zrender_hover_"
												style="position: absolute; left: 0px; top: 0px; width: 528px; height: 600px;"></canvas>
											<div class="echarts-dataview"
												style="position: absolute; display: block; overflow: hidden; transition: height 0.8s, background-color 1s; -webkit-transition: height 0.8s, background-color 1s; z-index: 1; left: 0px; top: 0px; width: 528px; height: 0px; background-color: rgb(240, 255, 255);"></div>
										</div>
									</div>
								</dd>
							</dl>
						</div>
					</div>
				</div>

			</section>

			<div class="clearfix" style="_height: 0px; _overflow: hidden;"></div>
		</div>
		<!--[if IE]>
<style type="text/css">
	#my_addr .my_addr_edit .addr_edit_item input {
		line-height: 30px;
	}
</style>
<![endif]-->
		<input type="hidden" id="bdstoken" name="bdstoken"
			value="2748062abf1400d8e75d4c029d20f59b">
	</div>
	<footer id="baiducopy"> </footer>
	<script type="text/javascript">
	!function() {
		window.GLOBAL_DATA = {
			"API_URL_dev" : "http:\/\/cp01-rdqa-dev361.cp01.baidu.com:8080",
			"API_URL" : "http:\/\/huiyan.baidu.com",
			"ECHARTS_THEMES" : {
				"color" : [ "#4DB8EC", "#4CD2EF", "#1581FF", "#496BB5",
						"#FF524E", "#FF8381", "#FEAB81", "#FE964D",
						"#FD4F84", "#DB3164", "#A0C152", "#C4EA62",
						"#42940C", "#78C63E", "#DBD7D8", "#BDBDBD", "#999",
						"#555", "#333" ]
			}
		};
	}();
	!function() {
		window.COOPER_LOC = {
			"cooper_loc_id" : 3005,
			"name" : "\u67d0\u5546\u573a"
		};
	}();
	!function() {
		require('common:widget/logo/logo.js').init();
	}();
	!function() {
		require('common:widget/nav/nav.js');
	}();
	!function() {
		var menu = require('common:widget/menu/menu.js').init();
	}();
	!function() {
		var calender = require('common:widget/calender/calender.js');
	}();
	!function() {
		require('common:widget/tip/tip.js').init();
	}();
	!function() {
		require('home:widget/coming/village.js').init();
	}();
	!function() {
		require('home:widget/coming_province/coming_province.js').init();
	}();
	!function() {
		require('home:widget/coming_city_district/coming_city_district.js')
				.init();
	}();
	!function() {
		require('home:widget/coming_business/coming_business.js').init();
	}();
	!function() {
		jQuery(document).ready(function() {
			Metronic.init(); // init metronic core components
			Layout.init(); // init current layout
		});
	}();
	</script>
	<div class="mask"></div>
	<script>
		alog && alog('speed.set', 'drt', +new Date); //请利用js框架等统计domready时间
		var performance_page_id = 85;
		//ga
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');
		ga('create', 'UA-51279039-1', 'baidu.com');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
	</script>


	<script>
		var Hunter = window.Hunter || {};
		Hunter.userConfig = Hunter.userConfig || [];
		Hunter.userConfig.push({
			hid : 57591
		});
	</script>
	<script>
		with (document)
			0[(getElementsByTagName('head')[0] || body)
					.appendChild(createElement('script')).src = 'http://img.baidu.com/hunter/map.js?st='
					+ ~(new Date() / 864e5)];
	</script>
	<script type="text/javascript"
		src="${ctx}/source/js/waimai/main_f01eccd.js"></script>
	<script type="text/javascript"
		src="${ctx}/source/js/waimai/lib_8b96a8d.js"></script>
	<script type="text/javascript"
		src="${ctx}/source/js/waimai/landing_03e3f98.js"></script>
	<script type="text/javascript"
		src="${ctx}/source/js/waimai/menu_e669814.js"></script>
	<script type="text/javascript"
		src="${ctx}/source/js/waimai/order_24406bc.js"></script>
	<script type="text/javascript">
		
	</script>
	<div class="mod-dialog-frame"
		style="overflow: auto; display: none; position: fixed; left: 0px; top: 0px; right: 0px; bottom: 0px; z-index: 1000; background-color: rgba(0, 0, 0, 0.54902);">
		<div
			style="overflow: hidden; position: absolute; background-color: rgb(255, 255, 255);"
			class="mod-dialog-wrap"></div>
	</div>
	<!--[if IE 6]>
<style type="text/css">
.header .nav-item {
    border-color:tomato;
    filter:chroma(color=tomato);
}
.qbox_content .city-dialog .closebtn,
.global-tips .close-btn,
.wm-map .defaultTip .close-btn {
    font-size: 16px;
    text-decoration: none;
}
.qbox_content .city-dialog .closebtn:hover,
.global-tips .close-btn:hover,
.wm-map .defaultTip .close-btn:hover {
    text-decoration: none;
}
</style>
<![endif]-->
	<!--[if IE 6]>
<style type="text/css">
/*ie6 hover class*/
.ie6_nav-item-active {
    border-bottom: solid 1px #ef3510;
    border-left: solid 1px #f02d06;
    border-right: solid 1px #f02d06;
    background-color: #ef3510;
}
</style>
<script type="text/javascript">
/*ie6 hover 效果*/
var navList = $('.header .nav .nav-item');
navList.on('mouseover', function(e) {
    $(this).addClass('ie6_nav-item-active');
});
navList.on('mouseout', function(e) {
    $(this).removeClass('ie6_nav-item-active');
});
</script>
<![endif]-->
	<script type="text/javascript">
		void function(g, a) {
			function i(m, n, l) {
				l = l || 15;
				var o = new Date();
				o.setTime(new Date().getTime() + l * 1000);
				a.cookie = m + "=" + escape(n) + ";path=/;expires="
						+ o.toGMTString()
			}
			function h(m) {
				var l = a.cookie
						.match(new RegExp("(^| )" + m + "=([^;]*)(;|$)"));
				if (l != null) {
					return unescape(l[2])
				}
				return null
			}
			function c(l) {
				if (g.attachEvent) {
					g.attachEvent("onload", l, false)
				} else {
					if (g.addEventListener) {
						g.addEventListener("load", l)
					}
				}
			}
			function e() {
				var m = alog.tracker && alog.tracker("speed").get("options")
						|| {};
				var q = m.random = Math.random();
				alog(
						"set",
						"alias",
						{
							speed : m.js_path
									|| "http://static.tieba.baidu.com/tb/pms/wpo_alog_speed.js"
						});
				var p = m.special_pages || [];
				var l = [];
				for (var n = 0; n < p.length; n++) {
					var o = p[n];
					if (q < o.sample) {
						l.push(o.id)
					}
				}
				if (l.length) {
					alog("speed.set", "special_id", "[" + l + "]")
				}
				if (q <= m.sample || l.length) {
					alog("speed.set", "send", true);
					if (m.product_id && m.page_id) {
						alog("require", "speed")
					}
				}
			}
			function b() {
				var l = h("PMS_JT");
				if (l) {
					i("PMS_JT", "", -1);
					try {
						l = eval(l);
					} catch (e) {
						l = {};
					}
					if (!l.r || a.referrer.replace(/#.*/, "") == l.r) {
						alog("speed.set", "wt", l.s)
					}
				}
			}
			b();
			var f = false;
			function d() {
				alog.on
						&& alog.on("mark", function(p) {
							var n = alog.tracker
									&& alog.tracker("speed").get("options")
									|| {};
							f = true;
							if (n && n.custom_metrics
									&& n.custom_metrics.constructor == Array) {
								var m = n.custom_metrics;
								var l = alog.tracker("speed").fields;
								for (var o = 0; o < m.length; o++) {
									if (!l || !l.hasOwnProperty(m[o])) {
										f = false;
										break
									}
								}
							}
							f && e()
						})
			}
			c(function() {
				d();
				alog("speed.set", "lt", +new Date);
				alog.fire && alog.fire("mark")
			});
			function k(n, m) {
				var l = 0;
				if ((m.nodeName || m.tagName).toLowerCase() === n.toLowerCase()) {
					return m
				}
				while (m = m.parentNode) {
					l++;
					if ((m.nodeName || m.tagName).toLowerCase() === n
							.toLowerCase()) {
						return m
					}
					if (l >= 4) {
						return null
					}
				}
				return null
			}
			function j(l) {
				if (a.attachEvent) {
					a.attachEvent("onclick", l)
				} else {
					a.addEventListener("click", l, false)
				}
			}
			j(function(n) {
				var n = n || window.event;
				var m = n.target || n.srcElement;
				var o = k("a", m);
				if (o) {
					var l = o.getAttribute("href");
					if (!/^#|javascript:/.test(l)) {
						i("PMS_JT", '({"s":' + (+new Date) + ',"r":"'
								+ document.URL.replace(/#.*/, "") + '"})')
					}
				}
			})
		}(window, document);
	</script>

</body>
<div class="global-tips"
	style="z-index: 3000; display: none; position: absolute; top: 40px; left: 474.5px;">
	<span class="gt-msg"></span>
</div>
</html>