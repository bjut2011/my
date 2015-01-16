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
								<span class="menu-icon order-icon"></span> <a
									href="mall!eye.do"
									class="menu-title order"><span>全局概览</span></a>
							</div>
						</div>
						<div class="menu-item">
							<div id="menu-address">
								<span class="menu-icon address-icon"></span> <a
									href="mall!customer_portrait.do"
									class="menu-title address"><span>顾客画像</span></a>
							</div>
						</div>
						<div class="menu-item">
							<div id="menu-favorite">
								<span class="menu-icon favorite-icon"></span> <a
									href="mall!flow_coming.do"
									class="menu-title favorite"><span>顾客来源</span></a>
							</div>
						</div>
						<div class="menu-item">
							<div id="menu-coupon">
								<span class="menu-icon coupon-icon"></span> <a
									href="mall!flow_going.do"
									class="menu-title coupon"><span>顾客去向</span></a>
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
									<b class="menu-icon-location"></b><span id="currentCooperLoc">${storename}</span><b
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
									href="http://huiyan.baidu.com/malldemo#"> <i
									class="i_orderd"></i>
								</a>
							</div>
							<label class="contrast" for="needCompare_1419410433995"
								style="display: none;"><input type="checkbox" class="pc"
								name="needCompare_1419410433995" id="needCompare_1419410433995"
								value="1" disabled="disabled">对比</label>
							<div class="ta_date" id="div_compare_date" style="display: none;">
								<span name="dateCompare" id="dateCompare" class="date_title"
									style="display: none;"></span> <a class="opt_sel"
									id="compare_trigger" href="http://huiyan.baidu.com/malldemo#">
									<i class="i_orderd"></i>
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
						<div class="clearfix">
							<div class="customer_index">
								<dl class="today">
									<dt>[今日客流指数]</dt>
									<dd>
										<span id="todayNum" class="num">10052</span>
									</dd>
								</dl>
								<dl class="yesterday">
									<dt>[昨日客流指数]</dt>
									<dd>
										<span id="yesterdayNum" class="num">2141</span>
									</dd>
								</dl>
								<dl class="add">
									<dt>[较上一日变化]</dt>
									<dd>
										<span style="font-size: 30px" class="num"><b
											id="addNum">+369.5</b>%<span> </span></span>
									</dd>
								</dl>
								<div class="clearfix"></div>
							</div>
							<div class="weather">
								<div id="weatherList" class="weatherList">
									<dl class="weatherItem">
										<dt>
											<img src="${ctx}/source/js/eye/duoyun.png"><img
												src="${ctx}/source/js/eye/duoyun(1).png">
										</dt>
										<dd>
											<p>多云</p>
											<p>27 ~ 20℃</p>
											<p>8月29日 星期五</p>
										</dd>
									</dl>
								</div>
							</div>
						</div>
						<div>
							<div class="customer_trend">
								<dl class="itemBox">
									<dt>客流指数趋势</dt>
									<dd>
										<div class="timecategory">
											<ul>
												<li by="day" class="cur">按日</li>
												<li by="week">按周</li>
												<li by="month">按月</li>
											</ul>
										</div>
										<div id="echart_customer_trend"
											_echarts_instance_="1419410433389"
											style="background-color: rgba(0, 0, 0, 0);">
											<div
												style="position: relative; overflow: hidden; width: 1057px; height: 500px;">
												<div width="1057" height="500" data-zr-dom-id="bg"
													style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></div>
												<canvas width="1057" height="500" data-zr-dom-id="0"
													style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></canvas>
												<canvas width="1057" height="500" data-zr-dom-id="1"
													style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></canvas>
												<canvas width="1057" height="500" data-zr-dom-id="2"
													style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 500px;"></canvas>
												<canvas width="1057" height="500" data-zr-dom-id="3"
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
							</div>
						</div>
						<div class="clearfix" style="padding: 15px 0;"></div>
						<div id="portrait">
							<dl class="itemBox"
								style="float: left; width: 49%; margin-right: 2%;">
								<dt>性别比例</dt>
								<dd>
									<div id="portrait_gender" _echarts_instance_="1419410433390"
										style="background-color: rgba(0, 0, 0, 0);">
										<div
											style="position: relative; overflow: hidden; width: 510px; height: 300px;">
											<div width="510" height="300" data-zr-dom-id="bg"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 300px;"></div>
											<canvas width="510" height="300" data-zr-dom-id="1"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 300px;"></canvas>
											<canvas width="510" height="300" data-zr-dom-id="2"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 300px;"></canvas>
											<canvas width="510" height="300" data-zr-dom-id="3"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 300px;"></canvas>
											<canvas width="510" height="300" data-zr-dom-id="4"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 300px;"></canvas>
											<canvas width="510" height="300" data-zr-dom-id="6"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 300px;"></canvas>
											<canvas width="510" height="300" data-zr-dom-id="8"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 300px;"></canvas>
											<canvas width="510" height="300"
												data-zr-dom-id="_zrender_hover_"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 300px;"></canvas>
											<div class="echarts-dataview"
												style="position: absolute; display: block; overflow: hidden; transition: height 0.8s, background-color 1s; -webkit-transition: height 0.8s, background-color 1s; z-index: 1; left: 0px; top: 0px; width: 510px; height: 0px; background-color: rgb(240, 255, 255);"></div>
										</div>
									</div>
								</dd>
							</dl>
							<dl class="itemBox" style="float: left; width: 49%;">
								<dt>年龄分布</dt>
								<dd>
									<div id="portrait_age" _echarts_instance_="1419410433391"
										style="background-color: rgba(0, 0, 0, 0);">
										<div
											style="position: relative; overflow: hidden; width: 510px; height: 300px;">
											<div width="510" height="300" data-zr-dom-id="bg"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 300px;"></div>
											<canvas width="510" height="300" data-zr-dom-id="0"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 300px;"></canvas>
											<canvas width="510" height="300" data-zr-dom-id="1"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 300px;"></canvas>
											<canvas width="510" height="300" data-zr-dom-id="2"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 300px;"></canvas>
											<canvas width="510" height="300" data-zr-dom-id="6"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 300px;"></canvas>
											<canvas width="510" height="300" data-zr-dom-id="8"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 300px;"></canvas>
											<canvas width="510" height="300"
												data-zr-dom-id="_zrender_hover_"
												style="position: absolute; left: 0px; top: 0px; width: 510px; height: 300px;"></canvas>
											<div class="echarts-dataview"
												style="position: absolute; display: block; overflow: hidden; transition: height 0.8s, background-color 1s; -webkit-transition: height 0.8s, background-color 1s; z-index: 1; left: 0px; top: 0px; width: 510px; height: 0px; background-color: rgb(240, 255, 255);"></div>
										</div>
									</div>
								</dd>
							</dl>
							<div class="clearfix"></div>
						</div>
						<div class="coming">
							<dl class="itemBox">
								<dt>兴趣偏好</dt>
								<dd class="clearfix">
									<div class="hobby_nodate"
										style="text-align: center; height: 2em; line-height: 2em; display: none; background: rgb(255, 254, 209);">加载中...</div>
									<div id="hobby_main" _echarts_instance_="1419410433393"
										style="background-color: rgba(0, 0, 0, 0);">
										<div
											style="position: relative; overflow: hidden; width: 1057px; height: 400px;">
											<div width="1057" height="400" data-zr-dom-id="bg"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 400px;"></div>
											<canvas width="1057" height="400" data-zr-dom-id="0"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 400px;"></canvas>
											<canvas width="1057" height="400" data-zr-dom-id="1"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 400px;"></canvas>
											<canvas width="1057" height="400" data-zr-dom-id="2"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 400px;"></canvas>
											<canvas width="1057" height="400" data-zr-dom-id="6"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 400px;"></canvas>
											<canvas width="1057" height="400" data-zr-dom-id="8"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 400px;"></canvas>
											<canvas width="1057" height="400"
												data-zr-dom-id="_zrender_hover_"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 400px;"></canvas>
											<div class="echarts-dataview"
												style="position: absolute; display: block; overflow: hidden; transition: height 0.8s, background-color 1s; -webkit-transition: height 0.8s, background-color 1s; z-index: 1; left: 0px; top: 0px; width: 1057px; height: 0px; background-color: rgb(240, 255, 255);"></div>
										</div>
									</div>
									<div class="hobby_nodate_sencond"
										style="display: none; text-align: center; height: 2em; line-height: 2em; background: rgb(255, 254, 209);">加载中...</div>
									<div class="hobby_select" style="display: block;">
										<span class="hobby_select_arrow">◆</span> <span
											class="hobby_select_arrow_2">◆</span> <select
											style="display: inline-block;"><option value="-">请选择子分类</option>
											<option value="交通票务">交通票务</option>
											<option value="日常交通方式">日常交通方式</option>
											<option value="交通查询">交通查询</option>
											<option value="远途交通方式">远途交通方式</option></select> <select
											style="display: none;"><option>三级分类：未选择</option></select> <select
											style="display: none;"><option>四级分类：未选择</option></select>
									</div>
									<div id="hobby_second" _echarts_instance_="1419410433394"
										style="background-color: rgba(0, 0, 0, 0);">
										<div
											style="position: relative; overflow: hidden; width: 1057px; height: 400px;">
											<div width="1057" height="400" data-zr-dom-id="bg"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 400px;"></div>
											<canvas width="1057" height="400" data-zr-dom-id="0"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 400px;"></canvas>
											<canvas width="1057" height="400" data-zr-dom-id="1"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 400px;"></canvas>
											<canvas width="1057" height="400" data-zr-dom-id="2"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 400px;"></canvas>
											<canvas width="1057" height="400" data-zr-dom-id="6"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 400px;"></canvas>
											<canvas width="1057" height="400" data-zr-dom-id="8"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 400px;"></canvas>
											<canvas width="1057" height="400"
												data-zr-dom-id="_zrender_hover_"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 400px;"></canvas>
											<div class="echarts-dataview"
												style="position: absolute; display: block; overflow: hidden; transition: height 0.8s, background-color 1s; -webkit-transition: height 0.8s, background-color 1s; z-index: 1; left: 0px; top: 0px; width: 1057px; height: 0px; background-color: rgb(240, 255, 255);"></div>
										</div>
									</div>
								</dd>
							</dl>
						</div>
						<div class="going_rival">
							<dl class="itemBox">
								<dt>去向竞品</dt>
								<dd>
									<div id="echart_going_rival" _echarts_instance_="1419410433392"
										style="background-color: rgba(0, 0, 0, 0);">
										<div
											style="position: relative; overflow: hidden; width: 1057px; height: 600px;">
											<div width="1057" height="600" data-zr-dom-id="bg"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 600px;"></div>
											<canvas width="1057" height="600" data-zr-dom-id="0"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 600px;"></canvas>
											<canvas width="1057" height="600" data-zr-dom-id="1"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 600px;"></canvas>
											<canvas width="1057" height="600" data-zr-dom-id="4"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 600px;"></canvas>
											<canvas width="1057" height="600" data-zr-dom-id="6"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 600px;"></canvas>
											<canvas width="1057" height="600" data-zr-dom-id="8"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 600px;"></canvas>
											<canvas width="1057" height="600"
												data-zr-dom-id="_zrender_hover_"
												style="position: absolute; left: 0px; top: 0px; width: 1057px; height: 600px;"></canvas>
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
		require('home:widget/weather/weather.js').init();
	}();
	!function() {
		var timecategory = require(
				'common:widget/timecategory/timecategory.js').init();
	}();
	!function() {
		require('home:widget/customer_trend/customer_trend.js').init();
	}();
	!function() {
		require('home:widget/portrait/portrait.js').init();
	}();
	!function() {
		require('home:widget/customer/hobby.js').init();
	}();
	!function() {
		require('home:widget/going_rival/going_rival.js').init();
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