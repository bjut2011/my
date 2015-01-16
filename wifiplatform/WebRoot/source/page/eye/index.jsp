<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<!-- saved from url=(0032)http://huiyan.baidu.com/malldemo -->
<html class="expanded">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>爱WIFI慧眼</title>
<meta name="Description" content="位置智能，海量室内外位置数据，网民行为数据，洞悉真实世界">
<meta name="Keywords"
	content="位置智能 室内定位 室内导航 LBS位置商业智能  智慧城市 智慧商场 智慧旅游 选址参考  大数据分析">
<meta content="" name="description">

<title></title>

<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/eye/common.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/eye/home.css">
</head>
<body>
	<div class="header">
		<div class="h-logo">
			<a href="http://huiyan.baidu.com/" title="爱WIFI慧眼"> </a>
		</div>
		<div class="h-nav">
			<script type="text/javascript">
				window.onload = function() {
					var hostname = location.hostname;
					var isTest = /[a-zA-Z0-9\-]\.cp\d+\.baidu.com/
							.test(location.hostname);
					if (isTest) {
						$('.TEST_url').attr(
								'href',
								'https://passport.rdtest.baidu.com/v2/?login&u='
										+ location.href);
					}
				}
			</script>
		</div>
		<div class="clear"></div>
		<div style="position: absolute; top: 0; left: 250px; color: #F1FF70;"></div>
	</div>

	<div class="layout_content">
		<div class="layout_leftnav" style="min-height: 2971px;">

			<div class="page-sidebar-wrapper">
				<div class="page-sidebar navbar-collapse collapse">
					<ul class="page-sidebar-menu" data-auto-scroll="true"
						data-slide-speed="200">
						<li class="start active"><a
							href="mall!init.do"> <i
								class="nav-icon nav-icon-overview"></i> <span class="title">全局概览</span>
								<span class="selected"></span>
						</a></li>
						<li class="start"><a href="javascript:void(0)"> <i
								class="nav-icon nav-icon-flowing"></i> <span class="title">客流分布</span>
								<span class="nav-icon nav-icon-arrow "></span>
						</a>
							<ul class="sub-menu" style="display: none;">
								<li><a href="mall!mall_spread.do">
										·&nbsp;商圈分布</a></li>
								<li><a href="mall!flow_all">
										·&nbsp;整体客流</a></li>
								<li><a href="mall!flow_storey">
										·&nbsp;楼层客流</a></li>
							</ul></li>
						<li class="start"><a href="javascript:void(0)"> <i
								class="nav-icon nav-icon-flowing"></i> <span class="title">客流分析（室内）</span>
								<span class="nav-icon nav-icon-arrow "></span>
						</a>
							<ul class="sub-menu" style="display: none;">
								<li><a href="mall!flow_actual">
										·&nbsp;实时客流</a></li>
								<li><a href="mall!flow_all">
										·&nbsp;整体客流</a></li>
								<li><a href="mall!flow_storey">
										·&nbsp;楼层客流</a></li>
							</ul></li>
						<li class="start "><a href="javascript:void(0)"> <i
								class="nav-icon "></i> <span class="title">顾客分析</span> <span
								class="nav-icon nav-icon-arrow "></span>
						</a>
							<ul class="sub-menu" style="display: none;">
								<li><a
									href="mall!customer_portrait.do">
										·&nbsp;顾客画像</a></li>
								<li><a href="mall!flow_coming.do">
										·&nbsp;顾客来源</a></li>
								<li><a href="mall!flow_going.do">
										·&nbsp;顾客去向</a></li>
								<li><a
									href="mall!flow_customer">
										·&nbsp;顾客忠诚度</a></li>
							</ul></li>
						<li class="start "><a href="javascript:void(0)"> <i
								class="nav-icon nav-icon-compare"></i> <span class="title">竞品分析</span>
								<span class="nav-icon nav-icon-arrow "></span>
						</a>
							<ul class="sub-menu" style="display: none;">
								<li><a
									href="mall!compare_portrait.do">
										·&nbsp;客流画像</a></li>
								<li><a
									href="mall!compare_customer.do">
										·&nbsp;客流指数</a></li>
							</ul></li>
						<li class="start "><a href="javascript:void(0)"> <i
								class="nav-icon nav-icon-near"></i> <span class="title">周边分析</span>
								<span class="nav-icon nav-icon-arrow "></span>
						</a>
							<ul class="sub-menu" style="display: none;">
								<li><a
									href="mall!near_customer.do">
										·&nbsp;周边居民</a></li>
								<li><a href="mall!near_poi.do">
										·&nbsp;行业POI数据</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
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
						<span class="date_title" id="date">2014-08-25 至 2014-08-31</span>
						<a class="opt_sel" id="input_trigger"
							href="http://huiyan.baidu.com/malldemo#"> <i class="i_orderd"></i>
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
							name="endDate" value="2014-08-31"><input type="checkbox"
							id="needCompare" name="needCompare" value="0"
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
								<span style="font-size: 30px" class="num"><b id="addNum">+369.5</b>%<span>
								</span></span>
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
	</div>
	<script type="text/javascript" src="${ctx}/source/js/eye/mod.js"></script>
	<script type="text/javascript" src="${ctx}/source/js/eye/jquery.js"></script>
	<script type="text/javascript" src="${ctx}/source/js/eye/common.js"></script>
	<script type="text/javascript" src="${ctx}/source/js/eye/metronic.js"></script>
	<script type="text/javascript"
		src="${ctx}/source/js/eye/echarts-plain-map.js"></script>
	<script type="text/javascript" src="${ctx}/source/js/eye/home.js"></script>
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
	<div style="display: none;">
		<script type="text/javascript">
			var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
					: " http://");
			document
					.write(unescape("%3Cscript src='"
							+ _bdhmProtocol
							+ "hm.baidu.com/h.js%3Fd3737ab3e5e90097fc9ff85a463fa01d' type='text/javascript'%3E%3C/script%3E"));
		</script>
		<script src="${ctx}/source/js/eye/h.js" type="text/javascript"></script>
		<a
			href="http://tongji.baidu.com/hm-web/welcome/ico?s=d3737ab3e5e90097fc9ff85a463fa01d"
			target="_blank"><img border="0" src="${ctx}/source/js/eye/21.gif"
			width="20" height="20"></a>
	</div>

	<div id="calendar_1419410433995" class="ta_calendar ta_calendar2 cf"
		style="z-index: 9999; display: none;">
		<div class="ta_calendar_cont cf" id="dateRangePicker_1419410433995">
			<table class="dateRangeDateTable">
				<caption>2014年7月</caption>
				<thead>
					<tr>
						<th>日</th>
						<th>一</th>
						<th>二</th>
						<th>三</th>
						<th>四</th>
						<th>五</th>
						<th>六</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="7" style="text-align: center;"><a
							href="javascript:void(0);" id="dateRangePreMonth_1419410433995"><i
								class="i_pre"></i></a></td>
					</tr>
					<tr>
						<td class="ta_dateRangeGray">29</td>
						<td class="ta_dateRangeGray">30</td>
						<td class="ta_dateRangeGray">1</td>
						<td class="ta_dateRangeGray">2</td>
						<td class="ta_dateRangeGray">3</td>
						<td class="ta_dateRangeGray">4</td>
						<td class="ta_dateRangeGray">5</td>
					</tr>
					<tr>
						<td class="ta_dateRangeGray">6</td>
						<td class="ta_dateRangeGray">7</td>
						<td class="ta_dateRangeGray">8</td>
						<td class="ta_dateRangeGray">9</td>
						<td class="ta_dateRangeGray">10</td>
						<td class="ta_dateRangeGray">11</td>
						<td class="ta_dateRangeGray">12</td>
					</tr>
					<tr>
						<td class="ta_dateRangeGray">13</td>
						<td class="ta_dateRangeGray">14</td>
						<td class="ta_dateRangeGray">15</td>
						<td class="ta_dateRangeGray">16</td>
						<td class="ta_dateRangeGray">17</td>
						<td class="ta_dateRangeGray">18</td>
						<td class="ta_dateRangeGray">19</td>
					</tr>
					<tr>
						<td class="ta_dateRangeGray">20</td>
						<td class="ta_dateRangeGray">21</td>
						<td class="ta_dateRangeGray">22</td>
						<td class="ta_dateRangeGray">23</td>
						<td class="ta_dateRangeGray">24</td>
						<td class="ta_dateRangeGray">25</td>
						<td class="ta_dateRangeGray">26</td>
					</tr>
					<tr>
						<td class="ta_dateRangeGray">27</td>
						<td class="ta_dateRangeGray">28</td>
						<td class="ta_dateRangeGray">29</td>
						<td class="ta_dateRangeGray">30</td>
						<td class="ta_dateRangeGray">31</td>
						<td class="ta_dateRangeGray">1</td>
						<td class="ta_dateRangeGray">2</td>
					</tr>
				</tbody>
			</table>
			<table class="dateRangeDateTable">
				<caption>2014年8月</caption>
				<thead>
					<tr>
						<th>日</th>
						<th>一</th>
						<th>二</th>
						<th>三</th>
						<th>四</th>
						<th>五</th>
						<th>六</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="7" style="text-align: center;"><a
							href="javascript:void(0);" id="dateRangeNextMonth_1419410433995"><i
								class="i_next"></i></a></td>
					</tr>
					<tr>
						<td class="ta_dateRangeGray">27</td>
						<td class="ta_dateRangeGray">28</td>
						<td class="ta_dateRangeGray">29</td>
						<td class="ta_dateRangeGray">30</td>
						<td class="ta_dateRangeGray">31</td>
						<td class="ta_dateRangeGray">1</td>
						<td class="ta_dateRangeGray">2</td>
					</tr>
					<tr>
						<td class="ta_dateRangeGray">3</td>
						<td class="ta_dateRangeGray">4</td>
						<td class="ta_dateRangeGray">5</td>
						<td class="ta_dateRangeGray">6</td>
						<td class="ta_dateRangeGray">7</td>
						<td class="ta_dateRangeGray">8</td>
						<td class="ta_dateRangeGray">9</td>
					</tr>
					<tr>
						<td class="ta_dateRangeGray">10</td>
						<td class="ta_dateRangeGray">11</td>
						<td class="ta_dateRangeGray">12</td>
						<td class="ta_dateRangeGray">13</td>
						<td class="ta_dateRangeGray">14</td>
						<td class="ta_dateRangeGray">15</td>
						<td class="ta_dateRangeGray">16</td>
					</tr>
					<tr>
						<td class="ta_dateRangeGray">17</td>
						<td class="ta_dateRangeGray">18</td>
						<td class="ta_dateRangeGray">19</td>
						<td class="ta_dateRangeGray">20</td>
						<td class="ta_dateRangeGray">21</td>
						<td class="ta_dateRangeGray">22</td>
						<td class="ta_dateRangeGray">23</td>
					</tr>
					<tr>
						<td class="ta_dateRangeGray">24</td>
						<td id="calendar_1419410433995_2014-8-25" class="first"
							style="cursor: pointer;">25</td>
						<td id="calendar_1419410433995_2014-8-26"
							class="ta_dateRangeSelected" style="cursor: pointer;">26</td>
						<td id="calendar_1419410433995_2014-8-27"
							class="ta_dateRangeSelected" style="cursor: pointer;">27</td>
						<td id="calendar_1419410433995_2014-8-28"
							class="ta_dateRangeSelected" style="cursor: pointer;">28</td>
						<td id="calendar_1419410433995_2014-8-29"
							class="ta_dateRangeSelected" style="cursor: pointer;">29</td>
						<td id="calendar_1419410433995_2014-8-30"
							class="ta_dateRangeSelected" style="cursor: pointer;">30</td>
					</tr>
					<tr>
						<td id="calendar_1419410433995_2014-8-31" class="last"
							style="cursor: pointer;">31</td>
						<td class="ta_dateRangeGray">1</td>
						<td class="ta_dateRangeGray">2</td>
						<td class="ta_dateRangeGray">3</td>
						<td class="ta_dateRangeGray">4</td>
						<td class="ta_dateRangeGray">5</td>
						<td class="ta_dateRangeGray">6</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="ta_calendar_footer cf">
			<div class="frm_msg">
				<div id="dateRangeDiv_1419410433995">
					<input type="text" class="ta_ipt_text_s ta_dateRangeSelected"
						name="startDate_1419410433995" id="startDate_1419410433995"
						value="2014-08-25" readonly="" style="background-repeat: repeat;"><span
						class="joinLine"> - </span><input type="text"
						class="ta_ipt_text_s" name="endDate_1419410433995"
						id="endDate_1419410433995" value="2014-08-31" readonly=""><br>
				</div>
				<div id="dateRangeCompareDiv_1419410433995" style="display: none;">
					<input type="text" class="ta_ipt_text_s"
						name="startCompareDate_1419410433995"
						id="startCompareDate_1419410433995" value="" readonly=""
						disabled="disabled"><span class="joinLine"> - </span><input
						type="text" class="ta_ipt_text_s"
						name="endCompareDate_1419410433995"
						id="endCompareDate_1419410433995" value="" readonly=""
						disabled="disabled">
				</div>
			</div>
			<div class="frm_btn">
				<input class="ta_btn ta_btn_primary" type="button"
					name="submit_1419410433995" id="submit_1419410433995" value="确定"><input
					class="ta_btn" type="button" id="closeBtn_1419410433995" value="取消">
			</div>
		</div>
	</div>
</body>
</html>