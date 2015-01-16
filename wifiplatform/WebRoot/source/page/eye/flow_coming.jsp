<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<!-- saved from url=(0046)http://www.nuomi.com/uc/order/order?status=all -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script charset="utf-8" src="${ctx}/source/js/nuomi/v.js"></script>
<script async="" src="${ctx}/source/js/nuomi/element.min.js"></script>
<script async="" src="${ctx}/source/js/nuomi/monkey.min.js"></script>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate">
<script type="text/javascript" async=""
	src="${ctx}/source/js/nuomi/rt.js"></script>
<script src="${ctx}/source/js/nuomi/alog.min.js"></script>
<script src="${ctx}/source/js/nuomi/hm.js"></script>

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

<script>
	var F = {};
	(function() {
		var b = {};
		F.context = function(p, r) {
			var q = arguments.length;
			if (q > 1) {
				b[p] = r
			} else {
				if (q == 1) {
					if (typeof p == "object") {
						for ( var o in p) {
							if (p.hasOwnProperty(o)) {
								b[o] = p[o]
							}
						}
					} else {
						return b[p];
					}
				}
			}
		};
	})();
</script>
<title>爱WIFI</title>

<script>
	var _hmt = _hmt || [];
	(function() {
		var hm = document.createElement("script");
		hm.src = "//hm.baidu.com/hm.js?a028c07bf31ffce4b2d21dd85b0b8907";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	})();
</script>


<script>
	void function(e, t, n, a, o, i, m) {
		e.alogObjectName = o, e[o] = e[o] || function() {
			(e[o].q = e[o].q || []).push(arguments)
		}, e[o].l = e[o].l || +new Date, i = t.createElement(n), i.asyn = 1,
				i.src = a, m = t.getElementsByTagName(n)[0], m.parentNode
						.insertBefore(i, m)
	}(window, document, "script", "http://img.baidu.com/hunter/alog.min.js",
			"alog");
</script>

<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/nuomi/common_4299604.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/nuomi/user_f1d42b1.css">
<script type="text/javascript"
	src="${ctx}/source/js/nuomi/user_53f8e7a.js"></script>
</head>


<body mon="page=order_list">

	<script type="text/javascript">
		F
				.context({
					"channel" : "zhifang_other||",
					"channel_content" : "",
					"da_page" : "order_list",
					"nuomi_base" : "http://www.nuomi.com",
					"logout_nuomi" : "/pclogin/main/logout",
					"baid_uss_url" : "http://uid.nuomi.baidu.com/getbduss",
					"logout_baidu" : "https://passport.baidu.com/?logout",
					"xll" : "",
					"xll_meishi" : "",
					"loginTest" : "",
					"passport_base" : "http://passport.baidu.com",
					"nuomi_old_base" : "http://login.nuomi.com",
					"passport_reg" : "http://passport.baidu.com/v2/?reg&tpl=nuomi&color=pink"
				});
	</script>

	<!--[if IE 6]>
<![endif]-->


	<div id="j-go-top" alog-alias="bainuo-detail-go-top-and-add-favorite"
		alog-group="bainuo-detail-go-top-and-add-favorite">
		<a class="go-top"
			mon="area=rightFuc&amp;element=toTop&amp;element_type=nav"
			style="display: none;"> </a> <a class="add-favorite"
			mon="area=rightFuc&amp;element=collect&amp;element_type=nav"> </a> <a
			class="questionnaire " target="_blank"
			href="http://uxsurvey.baidu.com/index.php?sid=58946&newtest=Y&lang=zh-Hans">
		</a>
	</div>




	<div class="w-header">
		<script type="text/javascript">
			F.context("nuomi_base", "http://www.nuomi.com");
		</script>

		<script type="text/javascript">
			F.context("page_name", "order_list");
			F.context("coupon_url",
					"http://www.nuomi.com/uc/giftcard/find?status=1");
		</script>
		<div class="nav-area " id="j-nav-area"
			alog-alias="bainuo-user-nav-area" alog-group="bainuo-user-nav-area">

		</div>
	</div>

	<div class="uc p-order-list clearfix">

		<div class="uc-wrap">
			<div class="uc-side fl">
				<ul class="w-nav clearfix" id="j-uc-nav" mon="element_type=nav"
					alog-alias="bainuo-user-pagetab" alog-group="bainuo-user-pagetab">
					<li class="nav-active nav-current"><a class="nav-txt j-nav"
						href="javascript:;"> 统计分析 </a>
						<ul class="sub-nav" mon="area=subNav">
							<li><a href="mall!eye.do?uid=${uid}&name=${name}" class="">
									<span class="sub-nav-ico">•</span>全局概览
							</a></li>
							<li><a
								href="mall!customer_portrait.do?uid=${uid}&name=${name}"
								class=""> <span class="sub-nav-ico">•</span>顾客画像
							</a></li>
							<li><a href="mall!flow_coming.do?uid=${uid}&name=${name}"
								class="sub-nav-active"> <span class="sub-nav-ico">•</span>顾客来源
							</a></li>
							<li><a href="mall!flow_going.do?uid=${uid}&name=${name}"
								class=""> <span class="sub-nav-ico">•</span>顾客去向
							</a></li>
						</ul></li>
					<li class="nav-active"><a class="nav-txt j-nav"
						href="javascript:;"> AP信息 </a>
						<ul class="sub-nav" mon="area=subNav">
							<li><a href="mall!store_ap.do?uid=${uid}&name=${name}"
								class=""> <span class="sub-nav-ico">•</span>AP信息
							</a></li>
						</ul></li>
					<li class="nav-active last"><a class="nav-txt j-nav"
						href="javascript:;"> 用户 </a>
						<ul class="sub-nav" mon="area=subNav">
							<li><a href="mall!customerinfo.do?uid=${uid}&name=${name}" class=""> <span class="sub-nav-ico">•</span>用户信息
							</a></li>
							<li><a href="mall!trail.do?uid=${uid}&name=${name}" class="">
									<span class="sub-nav-ico">•</span>用户轨迹
							</a></li>
						</ul></li>
				</ul>
			</div>
			<div class="uc-main fr">
				<div class="layout_rightmain">
					<div class="r-top" style="background: rgb(255, 255, 255);">
						<div class="menu" id="menu">
							<dl>
								<dt>
									<b class="menu-icon-location"></b><span id="currentCooperLoc">${name}</span><b
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

									</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div class="w-footer"></div>




	<script>
		var monkeyPageId = "bainuo-user-page-orderlist";
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

	<iframe src="${ctx}/source/js/nuomi/pixel.html"
		style="width: 1px; height: 1px; border: 0; position: absolute; left: -100px; top: -100px;"></iframe>


	<script type="text/javascript">
	<!--
		(function(d) {
			(window.bd_cpro_rtid = window.bd_cpro_rtid || []).push({
				id : "nH0znjDv"
			});
			var s = d.createElement("script");
			s.type = "text/javascript";
			s.async = true;
			s.src = location.protocol + "//cpro.baidu.com/cpro/ui/rt.js";
			var s0 = d.getElementsByTagName("script")[0];
			s0.parentNode.insertBefore(s, s0);
		})(document);
	//-->
	</script>


	<script>
		alog("set", "alias", {
			monkey : "http://img.baidu.com/hunter/alog/monkey.min.js",
			element : "http://img.baidu.com/hunter/alog/element.min.js"
		});

		alog("require", [ "monkey", "element" ], function(monkey, element) {
			monkey.create({
				page : monkeyPageId, //填写页面的Monkey pageId，与创建实验时填写的页面pageId一致
				pid : "241", //固定的不用改，Monkey日志的pid
				p : "241", //log平台为每个产品线分的id，如果没有设为241
				hid : "2189", //Monkey实验的ID，Hunter系统实验管理页列表的第一列
				postUrl : "http://nsclick.baidu.com/u.gif",//固定值，上报统计的请求地址
				reports : {
					refer : 1, //统计页面来源
					staytime : 1
				//统计用户在该页面的停留时间
				}
			});
		});

		//发送PV统计请求
		alog("monkey.send", "pageview", {
			now : +new Date
		});
	</script>

	<script type="text/javascript"
		src="${ctx}/source/js/nuomi/mod_e56bbba.js"></script>
	<script type="text/javascript">
		require
				.resourceMap({
					"res" : {
						"user:widget/address_form/address_form.js" : {
							"url" : "http://newpc0.nuomi.bdimg.com/static/user/widget/address_form/address_form_557d87d.js",
							"pkg" : "user:p0",
							"deps" : [ "common:widget/ui/dialog/dialog.js" ]
						},
						"user:widget/comment/comment_wrap.js" : {
							"url" : "http://newpc0.nuomi.bdimg.com/static/user/widget/comment/comment_wrap_d1176dc.js",
							"pkg" : "user:p0",
							"deps" : [ "common:widget/ui/comment/comment.js" ]
						},
						"user:widget/my_account/address/address.js" : {
							"url" : "http://newpc0.nuomi.bdimg.com/static/user/widget/my_account/address/address_626202b.js",
							"pkg" : "user:p0",
							"deps" : [ "common:widget/ui/dialog/dialog.js" ]
						},
						"user:widget/my_collection/my_collection.js" : {
							"url" : "http://newpc2.nuomi.bdimg.com/static/user/widget/my_collection/my_collection_c18a4a9.js",
							"pkg" : "user:p0",
							"deps" : [ "common:widget/ui/dialog/dialog.js" ]
						},
						"user:widget/order_cinema/list/list.js" : {
							"url" : "http://newpc1.nuomi.bdimg.com/static/user/widget/order_cinema/list/list_19fd522.js",
							"pkg" : "user:p0",
							"deps" : [ "common:widget/ui/dialog/dialog.js",
									"common:widget/ui/template/template.js",
									"common:widget/ui/passport_bind_phone/passport_bind_phone.js" ]
						},
						"user:widget/order_wuliu/detail/detail.js" : {
							"url" : "http://newpc0.nuomi.bdimg.com/static/user/widget/order_wuliu/detail/detail_4639d88.js",
							"pkg" : "user:p0",
							"deps" : [ "common:widget/ui/dialog/dialog.js",
									"common:widget/ui/template/template.js" ]
						},
						"user:widget/ui/order_operate/order_operate.js" : {
							"url" : "http://newpc0.nuomi.bdimg.com/static/user/widget/ui/order_operate/order_operate_68b326a.js",
							"pkg" : "user:p0",
							"deps" : [ "common:widget/ui/dialog/dialog.js",
									"common:widget/ui/template/template.js",
									"common:widget/ui/comment/comment.js" ]
						}
					},
					"pkg" : {
						"user:p0" : {
							"url" : "http://newpc0.nuomi.bdimg.com/static/user/pkg/user_53f8e7a.js"
						}
					}
				});
	</script>
	<script type="text/javascript"
		src="${ctx}/source/js/nuomi/common_aab883c.js"></script>
	<script type="text/javascript">
		!function() {
			function addFavorite() {
				var url = window.location;
				var title = document.title;
				var ua = navigator.userAgent.toLowerCase();
				var alertMessage = '您可以尝试通过快捷键Ctrl/Cmd + D 加入到收藏夹~';
				if (ua.indexOf("360se") > -1) {
					alert(alertMessage);
				} else if (ua.indexOf("msie 8") > -1) {
					window.external.AddToFavoritesBar(url, title); //IE8
				} else if (document.all) {
					try {
						window.external.addFavorite(url, title);
					} catch (e) {
						alert(alertMessage);
					}
				} else if (window.sidebar) {
					window.sidebar.addPanel(title, url, "");
				} else {
					alert(alertMessage);
				}
			}
			;
			$(window).scroll(
					function() {
						var scrollHeight = $(window).scrollTop();
						if (scrollHeight > 10) {
							var isIE6 = !!window.ActiveXObject
									&& !window.XMLHttpRequest;
							if (!isIE6) {
								$(".go-top").css("display", "inline-block");
							}
						} else {
							$(".go-top").css("display", "none");
						}
					});
			/*$(".questionnaire").mouseover(function(){
			    $(this).addClass("questionnaire-hover");
			}).mouseout(function(){
			    $(this).removeClass("questionnaire-hover");
			});*/
			$(".go-top").mouseover(function() {
				$(this).addClass("go-top-hover");
			}).mouseout(function() {
				$(this).removeClass("go-top-hover");
			}).click(function() {
				$('html,body').animate({
					scrollTop : '0px'
				}, 500);
			});
			$(".add-favorite").mouseover(function() {
				$(this).addClass("add-favorite-hover");
			}).mouseout(function() {
				$(this).removeClass("add-favorite-hover");
			}).click(function() {
				addFavorite();
			});

			(function() {
				var ua = navigator.userAgent.toLowerCase();
				var isPad = ua.match(/iPad/i) ? true : false;
				if (isPad) {
					var goTop = $("#j-go-top");
					goTop.remove();
				}
			})();
			//判断日期是否没过 11月20日(20号过后此代码无效，可删！)
			if (new Date().getTime() <= new Date('2014/11/20 00:00:00')
					.getTime()) {
				$(".questionnaire")
						.addClass('questionnaire-dc')
						.attr('href',
								'http://uxsurvey.baidu.com/index.php?sid=69549&lang=zh-Hans');
			}
		}();
		!function() {
			require.async([ 'common:widget/ui/cookie/cookie.js' ], function(
					Cookie) {
				function initErweima() {
					//读取cookie，查看之前用户是否关闭了二维码，如果关闭，一段时间之内不再显示
					var mobileUploadEntry = Cookie.get("mobile_upload_entry");
					if (mobileUploadEntry) {
						$("#mobile-upload-entry").css("display", "none");
					}
					$(window).scroll(
							function() {
								var scrollHeight = $(window).scrollTop();
								if (scrollHeight > 96) {
									$("#mobile-upload-entry").css("position",
											"fixed");
									$("#mobile-upload-entry").css("top",
											"250px");
								} else {
									$("#mobile-upload-entry").css("position",
											"absolute");
									$("#mobile-upload-entry").css("top",
											"346px");
								}
							})
				}
				function closeErweima() {
					$("#mobile-upload-entry").css("display", "none");
					Cookie.set('mobile_upload_entry', '0', 'today');
				}
				$("#mobile-upload-entry .close-btn").click(closeErweima);
				initErweima();
			});
			/* 将ipad上的二维码移除， by chenyao09 */
			(function() {
				var ua = navigator.userAgent.toLowerCase();
				var isPad = ua.match(/iPad/i) ? true : false;
				if (isPad) {
					var erweima = $("#mobile-upload-entry");
					erweima.remove();
				}
			})();
		}();
		!function() {
			require.async([ 'common:widget/header/top-banner/top-banner.js' ]);
		}();
		!function() {

			require.async([ 'common:widget/header/bar/bar.js' ]);

		}();
		!function() {
			F.context({
				isHotCity : "1",
				isIndex : ""
			});
			require.async([ 'common:widget/header/header.js' ]);
		}();
		!function() {
			var passBindPhone = require('common:widget/ui/passport_bind_phone/passport_bind_phone.js');
			//直接调用，自动判断status并弹出绑定
			$("#j-uc-bind-phone").click(function() {
				passBindPhone.bind();
			});
		}();
		!function() { /* require("user:widget/nav/nav.js"); */
			$(function() {

				$("#j-uc-nav .j-nav").on('click', function() {
					$(this).parent("li").toggleClass("nav-active");
				});

			});

		}();
		!function() {
			require.async('user:widget/ui/order_operate/order_operate.js',
					function(order) {
						order.init("#J-orders-wrap");
					});
		}();
		!function() {// 翻页
			require.async('common:widget/ui/pager/pager.js', function(Pager) {
				var p = $("#J-pager").attr("data-p"), pn = $("#J-pager").attr(
						"data-pn"), total = $("#J-pager").attr("data-total"),

				status = $("#J-pager").attr("data-status");

				var urlBase = '/uc/order/order?status=' + status + '&';

				var options = {
					currentPage : p || 1,
					totalPage : Math.ceil(total / (pn || 20)),
					viewSize : 10,

					labelFirst : '<div class="ico-pre"></div>',
					labelPrev : '上一页',
					labelNext : '下一页',
					labelLast : '<div class="ico-next"></div>',
					islabelLastShow : true
				};

				if ((options.totalPage) > 1) {
					var pager = new Pager('J-pager', options);

					pager.on('pagechange', function(pageNum) {
						location.href = urlBase + 'p=' + pageNum;
						return false;
					});
				}

			});
		}();
		!function() {
			require
					.async(
							[ 'common:widget/ui/dialog/dialog.js' ],
							function(Dialog) {
								$('#j-tttel')
										.on(
												'click',
												function() {
													Dialog
															.confirm({
																width : 560,
																customClassName : "ui-confirm-lz",
																content : '<p>业务违规举报邮箱接受对团购业务违规方面的投诉和建议:<br />投诉邮箱：<a href="mailto:bdnm_jiancha@baidu.com" class="link">bdnm_jiancha@baidu.com</a><br />投诉电话：13269403604 <br/></p><p>廉政邮箱接受对百度糯米员工廉政违法行为、职业操守问题的举报及建议:<br/>举报邮箱：<a href="mailto:bdjb@baidu.com" class="link">bdjb@baidu.com</a><br />举报电话：010-56797369</p><p>以上邮箱和电话不接受用户咨询及商务合作。</p>',
																footer : [ '<a href="javascript:;" class="dialog-btn-cancel j-dialog-btn" data-event="cancel">关闭</a>' ]
																		.join('')
															});
												});
							});
		}();
		!function() {
			$.ajaxSetup({
				cache : false
			});

			//2014_10_11 zhangyijun02: 因增加广告轮播曝光日志逻辑，调整showtrack初始化方式
			require.async([ 'common:widget/ui/usertrack/usertrack.js',
					'common:widget/ui/lazyload/lazyload.js',
					'common:widget/ui/cookie/cookie.js',
					'common:widget/ui/showtrack/showtrack.js',
					'common:widget/ui/items_post/items_post.js' ], function(
					usertrack, LazyLoad, Cookie, ShowTrack, itemsPost) {
				// 初始化点击监听
				usertrack.init();

				new LazyLoad({
					lazy : $('img[data-original]'),
					expect : 250
				});

				itemsPost.init();

				handleBaiduid();

				function handleBaiduid() {
					var getBaiduidUrl = "http://uid.nuomi.baidu.com/getbdid";
					var retryCount = 1;
					getBaiduid();

					function getBaiduid() {

						$.ajax(getBaiduidUrl, {
							dataType : 'jsonp',
							success : function(json) {
								if (json.errno == 0) {
									var baiduid = json.data.baiduid;
									if (baiduid) {
										Cookie.setRaw('BAIDUID', baiduid, 365);
									}
									// 不管有没有baiduid，都发送pv
									sendPv();
								} else {
									if (retryCount--) {
										getBaiduid();
									} else {
										// 最后一次也获取失败
										sendPv();
									}
								}

							}
						});
					}

				}

				function sendPv() {
					usertrack.send({
						da_src : encodeURIComponent($.stringify({
							page : "order_list"
						})),
						element_type : "pv"
					});
				}

				//2014_10_11 zhangyijun02: 因增加广告轮播曝光日志逻辑，调整ShowTrack初始化方式
				//曝光日志统计
				ShowTrack.startShowTrack();
			});

		}();
	</script>
	<script>
		var _trace_page_logid = 0377196297;
	</script>
	<div class="suggestion-wrap search-suggestion"
		id="j-suggestion-1420434376848"
		style="position: absolute; display: none; padding-bottom: 12px; width: 310px; top: 96px; left: 535.5px; z-index: 101;"></div>
</body>
</html>