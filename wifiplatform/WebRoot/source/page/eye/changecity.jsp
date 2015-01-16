<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<!-- saved from url=(0044)http://www.nuomi.com/pcindex/main/changecity -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="shortcut icon" href="">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate">
<script async="" src="${ctx}/source/js/nuomi/element.min.js"></script>
<script async="" src="${ctx}/source/js/nuomi/monkey.min.js"></script>
<script type="text/javascript" async=""
	src="${ctx}/source/js/nuomi/rt.js"></script>
<script src="${ctx}/source/js/nuomi/alog.min.js"></script>
<script src="${ctx}/source/js/nuomi/hm.js"></script>
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/eye/common.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/eye/home.css">
<title>爱WIFI</title>
<meta name="Description"
	content="百度糯米团购-消费者满意度最好的团购网，美食、ktv、电影、自助餐团购1折起！天天特价酒店！更有全网最低商品折扣，一流的团购服务，100%品质保证，百度糯米-让生活更精彩">


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
	href="${ctx}/source/js/nuomi/common_84beec6.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/nuomi/city_list_f046acb.css">
</head>


<body mon="page=city_list">

	<script type="text/javascript">
		F
				.context({
					"channel" : "001601",
					"channel_content" : "",
					"da_page" : "city_list",
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
		<a class="go-top "
			mon="area=rightFuc&amp;element=toTop&amp;element_type=nav"
			style="display: none;"> </a> <a class="add-favorite "
			mon="area=rightFuc&amp;element=collect&amp;element_type=nav"> </a> <a
			class="questionnaire " target="_blank"
			href="http://uxsurvey.baidu.com/index.php?sid=58946&newtest=Y&lang=zh-Hans">
		</a>
	</div>


	<div class="mobile-upload-entry " id="mobile-upload-entry"
		mon="area=layerAds&amp;element_type=nav"
		style="position: absolute; top: 346px; display: none;">
		<span class="close-btn"></span> <span class="erweima other"> <a
			target="_blank"
			href="http://download.nuomi.com/inter/group?from=PcCodeClick"
			mon="element=http%3A%2F%2Fdownload.nuomi.com%2Finter%2Fgroup%3Ffrom%3DPcCodeClick">
		</a> <span class="hide erweima-title">下载手机版</span>
		</span>
	</div>


	<div class="w-header">
		<script type="text/javascript">
			F.context("nuomi_base", "http://www.nuomi.com");
		</script>
		<div class="w-header-bar clearfix" alog-alias="bainuo-order-headerbar"
			alog-group="bainuo-order-headerbar"></div>
		<script type="text/javascript">
			F.context("page_name", "city_list");
			F.context("coupon_url",
					"http://www.nuomi.com/uc/giftcard/find?status=1");
		</script>


	</div>


	<div class="p-city-list clearfix">
		<div class="enter-city ">
			<a href="mall!awifi.do" id="id_city"> <b id="id_cityname">全国</b>
			</a>
		</div>
		<div class="select-city-wrap  clearfix pt20">
			<div class="select-provice fl">
				<b>按省份选择</b> <select id="J-province">
					<option value="000000000">全国</option>
					<option value="100000000">北京市</option>
					<option value="500000000">天津市</option>
					<option value="1800000000">河北省</option>
					<option value="2100000000">山西省</option>
					<option value="2200000000">内蒙古自治区</option>
					<option value="1300000000">辽宁省</option>
					<option value="2300000000">吉林省</option>
					<option value="1100000000">黑龙江省</option>
					<option value="200000000">上海市</option>
					<option value="700000000">江苏省</option>
					<option value="600000000">浙江省</option>
					<option value="1500000000">安徽省</option>
					<option value="1900000000">福建省</option>
					<option value="2400000000">江西省</option>
					<option value="1400000000">山东省</option>
					<option value="2000000000">河南省</option>
					<option value="400000000">湖北省</option>
					<option value="1200000000">湖南省</option>
					<option value="300000000">广东省</option>
					<option value="2500000000">广西壮族自治区</option>
					<option value="2600000000">海南省</option>
					<option value="900000000">重庆市</option>
					<option value="800000000">四川省</option>
					<option value="2700000000">贵州省</option>
					<option value="2800000000">云南省</option>
					<option value="2900000000">西藏自治区</option>
					<option value="1000000000">陕西省</option>
					<option value="3000000000">甘肃省</option>
					<option value="3100000000">青海省</option>
					<option value="3200000000">宁夏回族自治区</option>
					<option value="3300000000">新疆维吾尔自治区</option>
					<option value="3500000000">香港特别行政区</option>
					<option value="3600000000">澳门特别行政区</option>
				</select> <select id="J-city"><option value="100010000"
						data-url="http://bj.nuomi.com" selected="selected"></option></select> <a
					href="#" onclick="awifi();" class="btn-s btn-pink"
					id="J-select-city-btn">确定</a>
			</div>
		</div>

		<br> <br>
		<div class="layout_content">

			<div class="layout_rightmain">


				<div class="chartArea">

					<dl class="itemBox">
						<dd>
							<div id="ap_loction" style="width: 100%; height: 600px;"></div>
						</dd>
					</dl>
					<div id="ap_info">
						<dl class="itemBox"
							style="float: left; width: 32%; margin-right: 2%;">
							<dd>
								<div id="ap_class" _echarts_instance_="1419484884960"
									style="background-color: rgba(0, 0, 0, 0);"></div>
							</dd>
						</dl>
						<dl class="itemBox"
							style="float: left; width: 32%; margin-right: 2%;">
							<dd>
								<div id="tel_class" _echarts_instance_="1419484884960"
									style="background-color: rgba(0, 0, 0, 0);"></div>
							</dd>
						</dl>
						<dl class="itemBox" style="float: left; width: 32%;">
							<dd>
								<div id="custom_class" _echarts_instance_="1419484884960"
									style="background-color: rgba(0, 0, 0, 0);"></div>
							</dd>
						</dl>
					</div>
					<dl class="itemBox">
						<dd>
							<div id="time_custom" style="background-color: rgba(0, 0, 0, 0);"></div>
						</dd>
					</dl>
					<div class="storey_actual">
						<dl class="itemBox">
							<dt>
								停留时长<span class="hourTips_staying"
									style="margin-left: 10px; cursor: pointer; text-align: center; line-height: 18px; width: 18px; display: inline-block; color: rgb(255, 255, 255); border-radius: 9px; height: 18px; font-size: 12px; border: 1px solid rgb(43, 102, 154); background: rgb(66, 139, 202);">?</span>
							</dt>
							<dd>
								<div class="storey_flow_main">
									<div id="storey_all_stay" class="storey_all_stay"
										_echarts_instance_="1420700778767"
										style="cursor: default; background-color: rgba(0, 0, 0, 0);">

									</div>
								</div>
							</dd>
						</dl>
					</div>
					<dl class="itemBox" style="display: none">
						<dt>全国客流来源分布</dt>
						<dd>
							<div id="coming_province_map" _echarts_instance_="1419484884960"
								style="background-color: rgba(0, 0, 0, 0);"></div>
						</dd>
					</dl>
					<div id="coming_province_list" style="display: none">
						<dl class="itemBox"
							style="float: left; width: 49%; margin-right: 2%;">
							<dt>全国各省份客流来源</dt>
							<dd>
								<div id="coming_province_list_bj_other"
									_echarts_instance_="1419484884959"
									style="background-color: rgba(0, 0, 0, 0);"></div>
							</dd>
						</dl>
						<dl class="itemBox" style="float: left; width: 49%;">
							<dt>其他省市来源</dt>
							<dd>
								<div id="coming_province_list_other"
									_echarts_instance_="1419484884958"
									style="background-color: rgba(0, 0, 0, 0);"></div>
							</dd>
						</dl>
						<div class="clearfix"></div>
					</div>



				</div>
			</div>
		</div>


		<script type="text/javascript"
			src="http://api.map.baidu.com/api?v=2.0&amp;ak=Q15HFmKZ9NEPV8UjvItUNLE2"></script>
		<script type="text/javascript"
			src="http://api.map.baidu.com/getscript?v=2.0&amp;ak=Q15HFmKZ9NEPV8UjvItUNLE2&amp;services=&amp;t=20141223182951"></script>
		<script src="http://mapclick.map.baidu.com/data/197_74_12_018.js"
			type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript"
			src="http://api.map.baidu.com/library/Heatmap/2.0/src/Heatmap_min.js"></script>
		<script type="text/javascript" src="${ctx}/source/js/eye//CityList.js"></script>
		<script type="text/javascript" src="${ctx}/source/js/eye/mod.js"></script>
		<script type="text/javascript" src="${ctx}/source/js/eye/jquery.js"></script>
		<script type="text/javascript" src="${ctx}/source/js/eye/common.js"></script>
		<script type="text/javascript" src="${ctx}/source/js/eye/metronic.js"></script>
		<script type="text/javascript"
			src="${ctx}/source/js/eye/echarts-plain-map.js"></script>
		<script type="text/javascript" src="${ctx}/source/js/eye/home.js"></script>
		<script type="text/javascript"
			src="${ctx}/source/js/eye/mall_spread.js"></script>
		<script type="text/javascript" src="${ctx}/source/js/eye/placepoi.js"></script>
		<script type="text/javascript"
			src="${ctx}/source/js/highcharts/js/highcharts.js"></script>
		<script type="text/javascript"
			src="${ctx}/source/js/highcharts/js/highcharts-3d.js"></script>
		<script type="text/javascript"
			src="${ctx}/source/js/highcharts/js/modules/exporting.js"></script>
		<script async="" src="${ctx}/source/js/eye/aptype.js"></script>
		<script type="text/javascript"
			src="http://api.map.baidu.com/library/TextIconOverlay/1.2/src/TextIconOverlay_min.js"></script>
		<script>
			var map = new BMap.Map("ap_loction");
			map.enableScrollWheelZoom();
			var point = new BMap.Point(116.404, 39.915);
			map.centerAndZoom(point, 5);
			Highcharts.theme = {
				colors : [ '#058DC7', '#50B432', '#ED561B', '#DDDF00',
						'#24CBE5', '#64E572', '#FF9655', '#FFF263', '#6AF9C4' ]
			};
			function choicearea(province,city,borough,business,type,level){
				var data = "province=" + province;
				data+="&city=" + city;
				data+="&borough=" + borough;
				data+="&business=" + business;
				data+="&type=" + type;
				data+="&level=" + level;
				$.ajax({
					type : "GET",
					dataType : "json",
					url : "eye!getApType.do",
					data : data,
					success : function(json) {
						changedraw(json);
					},
					error : function() {
						
						return null;

					}
				});
			}
			function showInfo(e) {
				//alert(e.point.lng + ", " + e.point.lat);
				//alert(this.getZoom());
				var infoWindow = new BMap.InfoWindow("<b>test</b>"); // 创建信息窗口对象
				this.openInfoWindow(infoWindow, e.point); //开启信息窗口
			}
			function statistics(p, c,level) {
				if (c == "请选择") {
					c = "";
				}
                if(p == "全国"){
					level=0;
				}
				var json = changestatistics(p, c, "", "", "",level);

			}
			

			map.addEventListener("click", showInfo);
			function zoomInfo(e) {
				alert(this.getZoom());
			}
			//map.addEventListener("zoomstart", zoomInfo);
			//map.addEventListener("zoomend", zoomInfo);
			var EXAMPLE_URL = 'http://api.map.baidu.com/library/TextIconOverlay/1.2/examples/';

			var myStyles = [ {
				url : EXAMPLE_URL + 'images/m3.png',
				size : new BMap.Size(78, 78),

				textColor : '#ff00ff',
				opt_textSize : 10
			}, {
				url : EXAMPLE_URL + 'images/m3.png',
				size : new BMap.Size(78, 78),

				textColor : '#ff0000',
				opt_textSize : 12
			}, {
				url : EXAMPLE_URL + 'images/m3.png',
				size : new BMap.Size(78, 78),
				textColor : 'white',
				opt_textSize : 14
			} ];

			BMapLib.TextIconOverlay.prototype.getStyleByText = function(text,
					styles) {
				var count = parseInt(text);
				var index = parseInt(count / 20);
				index = Math.max(0, index);
				index = Math.min(index, styles.length - 1);
				return styles[1];
			};
			addOverlay();
			function addOverlay() {
				var pt = new BMap.Point(108.97654, 34.245567);
				var rm = new BMapLib.TextIconOverlay(pt, 278, {
					styles : myStyles
				});
				map.addOverlay(rm);
				//rm.enableMassClear();
				var pthz = new BMap.Point(120.176831, 30.276711);
				var rmhz = new BMapLib.TextIconOverlay(pthz, 300, {
					styles : myStyles
				});
				map.addOverlay(rmhz);
			}
			function zoomend(e) {
				map.clearOverlays();
				if (this.getZoom() < 12) {
					addOverlay();
					//rmhz.enableMassClear();
				} else if (this.getZoom() > 11) {
					//alert("");
					getpoibyregion("电信", "西安", 0, map);
					getpoibyregion("电信", "西安", 1, map);
					getpoibyregion("电信", "西安", 2, map);

					getpoibyregion("美食", "杭州", 0, map);
					//alert("1");
				}

			}

			map.addEventListener("zoomend", zoomend);
 
			
			var highchartsOptions = Highcharts.setOptions(Highcharts.theme);
			var chart = $('#ap_class')
					.highcharts(
							{
								chart : {
									backgroundColor : "#2EA384",
									plotBackgroundColor : null,
									plotBorderWidth : null,
									plotShadow : false
								},
								title : {
									text : 'AP分布'
								},
								tooltip : {
									pointFormat : '{series.name}: <b>{point.percentage:.1f}%</b>'
								},
								plotOptions : {
									pie : {
										allowPointSelect : true,
										cursor : 'pointer',
										dataLabels : {
											enabled : false
										},
										showInLegend : true
									}
								},
								credits : {
									text : '',
									href : ''
								},
								series : [ {
									type : 'pie',
									name : '比例',
									data : [ [ '餐饮', 60.0 ], [ '娱乐', 30 ],
											[ '其他', 10 ] ]
								} ]
							});
			Highcharts.theme = {
					colors: ["#DDDF0D", "#7798BF", "#55BF3B", "#DF5353", "#aaeeee", "#ff0066", "#eeaaee",
						"#55BF3B", "#DF5353", "#7798BF", "#aaeeee"],
					chart: {
						backgroundColor: {
							linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
							stops: [
								[0, 'rgb(96, 96, 96)'],
								[1, 'rgb(16, 16, 16)']
							]
						},
						borderWidth: 0,
						borderRadius: 0,
						plotBackgroundColor: null,
						plotShadow: false,
						plotBorderWidth: 0
					},
					title: {
						style: {
							color: '#FFF',
							font: '16px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
						}
					},
					subtitle: {
						style: {
							color: '#DDD',
							font: '12px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
						}
					},
					xAxis: {
						gridLineWidth: 0,
						lineColor: '#999',
						tickColor: '#999',
						labels: {
							style: {
								color: '#999',
								fontWeight: 'bold'
							}
						},
						title: {
							style: {
								color: '#AAA',
								font: 'bold 12px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
							}
						}
					},
					yAxis: {
						alternateGridColor: null,
						minorTickInterval: null,
						gridLineColor: 'rgba(255, 255, 255, .1)',
						minorGridLineColor: 'rgba(255,255,255,0.07)',
						lineWidth: 0,
						tickWidth: 0,
						labels: {
							style: {
								color: '#999',
								fontWeight: 'bold'
							}
						},
						title: {
							style: {
								color: '#AAA',
								font: 'bold 12px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
							}
						}
					},
					legend: {
						itemStyle: {
							color: '#CCC'
						},
						itemHoverStyle: {
							color: '#FFF'
						},
						itemHiddenStyle: {
							color: '#333'
						}
					},
					labels: {
						style: {
							color: '#CCC'
						}
					},
					tooltip: {
						backgroundColor: {
							linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
							stops: [
								[0, 'rgba(96, 96, 96, .8)'],
								[1, 'rgba(16, 16, 16, .8)']
							]
						},
						borderWidth: 0,
						style: {
							color: '#FFF'
						}
					},


					plotOptions: {
						series: {
							nullColor: '#444444'
						},
						line: {
							dataLabels: {
								color: '#CCC'
							},
							marker: {
								lineColor: '#333'
							}
						},
						spline: {
							marker: {
								lineColor: '#333'
							}
						},
						scatter: {
							marker: {
								lineColor: '#333'
							}
						},
						candlestick: {
							lineColor: 'white'
						}
					},

					toolbar: {
						itemStyle: {
							color: '#CCC'
						}
					},

					navigation: {
						buttonOptions: {
							symbolStroke: '#DDDDDD',
							hoverSymbolStroke: '#FFFFFF',
							theme: {
								fill: {
									linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
									stops: [
										[0.4, '#606060'],
										[0.6, '#333333']
									]
								},
								stroke: '#000000'
							}
						}
					},

					// scroll charts
					rangeSelector: {
						buttonTheme: {
							fill: {
								linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
								stops: [
									[0.4, '#888'],
									[0.6, '#555']
								]
							},
							stroke: '#000000',
							style: {
								color: '#CCC',
								fontWeight: 'bold'
							},
							states: {
								hover: {
									fill: {
										linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
										stops: [
											[0.4, '#BBB'],
											[0.6, '#888']
										]
									},
									stroke: '#000000',
									style: {
										color: 'white'
									}
								},
								select: {
									fill: {
										linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
										stops: [
											[0.1, '#000'],
											[0.3, '#333']
										]
									},
									stroke: '#000000',
									style: {
										color: 'yellow'
									}
								}
							}
						},
						inputStyle: {
							backgroundColor: '#333',
							color: 'silver'
						},
						labelStyle: {
							color: 'silver'
						}
					},

					navigator: {
						handles: {
							backgroundColor: '#666',
							borderColor: '#AAA'
						},
						outlineColor: '#CCC',
						maskFill: 'rgba(16, 16, 16, 0.5)',
						series: {
							color: '#7798BF',
							lineColor: '#A6C7ED'
						}
					},

					scrollbar: {
						barBackgroundColor: {
								linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
								stops: [
									[0.4, '#888'],
									[0.6, '#555']
								]
							},
						barBorderColor: '#CCC',
						buttonArrowColor: '#CCC',
						buttonBackgroundColor: {
								linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
								stops: [
									[0.4, '#888'],
									[0.6, '#555']
								]
							},
						buttonBorderColor: '#CCC',
						rifleColor: '#FFF',
						trackBackgroundColor: {
							linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
							stops: [
								[0, '#000'],
								[1, '#333']
							]
						},
						trackBorderColor: '#666'
					},

					// special colors for some of the demo examples
					legendBackgroundColor: 'rgba(48, 48, 48, 0.8)',
					background2: 'rgb(70, 70, 70)',
					dataLabelsColor: '#444',
					textColor: '#E0E0E0',
					maskColor: 'rgba(255,255,255,0.3)'
				};
			highchartsOptions = Highcharts.setOptions(Highcharts.theme);

			$('#tel_class')
					.highcharts(
							{
								chart : {
									backgroundColor: "#A8B848",
									plotBackgroundColor : null,
									plotBorderWidth : null,
									plotShadow : false
								},
								title : {
									text : '手机品牌'
								},
								tooltip : {
									pointFormat : '{series.name}: <b>{point.percentage:.1f}%</b>'
								},
								plotOptions : {
									pie : {
										allowPointSelect : true,
										cursor : 'pointer',
										dataLabels : {
											enabled : false
										},
										showInLegend : true
									}
								},
								credits : {
									text : '',
									href : ''
								},
								series : [ {
									type : 'pie',
									name : '比例',
									data : [ [ 'iphone', 30.0 ], [ '小米', 20 ],
											[ '华为', 10 ], [ 'HTC', 10 ],
											[ '联想', 10 ], [ '其他', 20 ] ]
								} ]
							});

			Highcharts.theme = {
					colors: ["#DDDF0D", "#55BF3B", "#DF5353", "#7798BF", "#aaeeee", "#ff0066", "#eeaaee",
						"#55BF3B", "#DF5353", "#7798BF", "#aaeeee"],
					chart: {
						backgroundColor: {
							linearGradient: { x1: 0, y1: 0, x2: 1, y2: 1 },
							stops: [
								[0, 'rgb(48, 48, 96)'],
								[1, 'rgb(0, 0, 0)']
							]
						},
						borderColor: '#000000',
						borderWidth: 2,
						className: 'dark-container',
						plotBackgroundColor: 'rgba(255, 255, 255, .1)',
						plotBorderColor: '#CCCCCC',
						plotBorderWidth: 1
					},
					title: {
						style: {
							color: '#C0C0C0',
							font: 'bold 16px "Trebuchet MS", Verdana, sans-serif'
						}
					},
					subtitle: {
						style: {
							color: '#666666',
							font: 'bold 12px "Trebuchet MS", Verdana, sans-serif'
						}
					},
					xAxis: {
						gridLineColor: '#333333',
						gridLineWidth: 1,
						labels: {
							style: {
								color: '#A0A0A0'
							}
						},
						lineColor: '#A0A0A0',
						tickColor: '#A0A0A0',
						title: {
							style: {
								color: '#CCC',
								fontWeight: 'bold',
								fontSize: '12px',
								fontFamily: 'Trebuchet MS, Verdana, sans-serif'

							}
						}
					},
					yAxis: {
						gridLineColor: '#333333',
						labels: {
							style: {
								color: '#A0A0A0'
							}
						},
						lineColor: '#A0A0A0',
						minorTickInterval: null,
						tickColor: '#A0A0A0',
						tickWidth: 1,
						title: {
							style: {
								color: '#CCC',
								fontWeight: 'bold',
								fontSize: '12px',
								fontFamily: 'Trebuchet MS, Verdana, sans-serif'
							}
						}
					},
					tooltip: {
						backgroundColor: 'rgba(0, 0, 0, 0.75)',
						style: {
							color: '#F0F0F0'
						}
					},
					toolbar: {
						itemStyle: {
							color: 'silver'
						}
					},
					plotOptions: {
						line: {
							dataLabels: {
								color: '#CCC'
							},
							marker: {
								lineColor: '#333'
							}
						},
						spline: {
							marker: {
								lineColor: '#333'
							}
						},
						scatter: {
							marker: {
								lineColor: '#333'
							}
						},
						candlestick: {
							lineColor: 'white'
						}
					},
					legend: {
						itemStyle: {
							font: '9pt Trebuchet MS, Verdana, sans-serif',
							color: '#A0A0A0'
						},
						itemHoverStyle: {
							color: '#FFF'
						},
						itemHiddenStyle: {
							color: '#444'
						}
					},
					credits: {
						style: {
							color: '#666'
						}
					},
					labels: {
						style: {
							color: '#CCC'
						}
					},

					navigation: {
						buttonOptions: {
							symbolStroke: '#DDDDDD',
							hoverSymbolStroke: '#FFFFFF',
							theme: {
								fill: {
									linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
									stops: [
										[0.4, '#606060'],
										[0.6, '#333333']
									]
								},
								stroke: '#000000'
							}
						}
					},

					// scroll charts
					rangeSelector: {
						buttonTheme: {
							fill: {
								linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
								stops: [
									[0.4, '#888'],
									[0.6, '#555']
								]
							},
							stroke: '#000000',
							style: {
								color: '#CCC',
								fontWeight: 'bold'
							},
							states: {
								hover: {
									fill: {
										linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
										stops: [
											[0.4, '#BBB'],
											[0.6, '#888']
										]
									},
									stroke: '#000000',
									style: {
										color: 'white'
									}
								},
								select: {
									fill: {
										linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
										stops: [
											[0.1, '#000'],
											[0.3, '#333']
										]
									},
									stroke: '#000000',
									style: {
										color: 'yellow'
									}
								}
							}
						},
						inputStyle: {
							backgroundColor: '#333',
							color: 'silver'
						},
						labelStyle: {
							color: 'silver'
						}
					},

					navigator: {
						handles: {
							backgroundColor: '#666',
							borderColor: '#AAA'
						},
						outlineColor: '#CCC',
						maskFill: 'rgba(16, 16, 16, 0.5)',
						series: {
							color: '#7798BF',
							lineColor: '#A6C7ED'
						}
					},

					scrollbar: {
						barBackgroundColor: {
								linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
								stops: [
									[0.4, '#888'],
									[0.6, '#555']
								]
							},
						barBorderColor: '#CCC',
						buttonArrowColor: '#CCC',
						buttonBackgroundColor: {
								linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
								stops: [
									[0.4, '#888'],
									[0.6, '#555']
								]
							},
						buttonBorderColor: '#CCC',
						rifleColor: '#FFF',
						trackBackgroundColor: {
							linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
							stops: [
								[0, '#000'],
								[1, '#333']
							]
						},
						trackBorderColor: '#666'
					},

					// special colors for some of the
					legendBackgroundColor: 'rgba(0, 0, 0, 0.5)',
					background2: 'rgb(35, 35, 70)',
					dataLabelsColor: '#444',
					textColor: '#C0C0C0',
					maskColor: 'rgba(255,255,255,0.3)'
				};
			highchartsOptions = Highcharts.setOptions(Highcharts.theme);
			$('#custom_class')
					.highcharts(
							{
								chart : {
									plotBackgroundColor : null,
									plotBorderWidth : null,
									plotShadow : false
								},
								title : {
									text : '客户行业分布'
								},
								tooltip : {
									pointFormat : '{series.name}: <b>{point.percentage:.1f}%</b>'
								},
								plotOptions : {
									pie : {
										allowPointSelect : true,
										cursor : 'pointer',
										dataLabels : {
											enabled : false
										},
										showInLegend : true
									}
								},
								credits : {
									text : '',
									href : ''
								},
								series : [ {
									type : 'pie',
									name : '比例',
									data : [ [ '餐饮', 70.0 ], [ '娱乐', 20 ],
											[ '其他', 10 ] ]
								} ]
							});

			$('#time_custom').highcharts(
					{
						title : {
							text : '24小时客流分布',
							x : -20
						//center
						},

						xAxis : {
							type : 'datetime',
							dateTimeLabelFormats : {
								hour : '%H:%M' //格式：小时      
							}
						},
						yAxis : {
							title : {
								text : '客户数'
							},
							plotLines : [ {
								value : 0,
								width : 1,
								color : '#808080'
							} ]
						},
						tooltip : {
							valueSuffix : ''
						},
						legend : {
							layout : 'vertical',
							align : 'right',
							verticalAlign : 'middle',
							borderWidth : 0
						},
						credits : {
							text : '',
							href : ''
						},
						series : [ {
							name : '客户数',
							data : [ 29, 71, 106, 129, 144, 176, 135, 148, 216,
									194, 95, 54 ],
							pointStart : Date.UTC(2015, 01, 04),
							pointInterval : 3600 * 1000
						} ]
					});
			
			Highcharts.theme = {
					colors: ["#DDDF0D", "#55BF3B", "#DF5353", "#7798BF", "#aaeeee", "#ff0066", "#eeaaee",
						"#55BF3B", "#DF5353", "#7798BF", "#aaeeee"],
					chart: {
						backgroundColor: {
							linearGradient: [0, 0, 250, 500],
							stops: [
								[0, 'rgb(48, 96, 48)'],
								[1, 'rgb(0, 0, 0)']
							]
						},
						borderColor: '#000000',
						borderWidth: 2,
						className: 'dark-container',
						plotBackgroundColor: 'rgba(255, 255, 255, .1)',
						plotBorderColor: '#CCCCCC',
						plotBorderWidth: 1
					},
					title: {
						style: {
							color: '#C0C0C0',
							font: 'bold 16px "Trebuchet MS", Verdana, sans-serif'
						}
					},
					subtitle: {
						style: {
							color: '#666666',
							font: 'bold 12px "Trebuchet MS", Verdana, sans-serif'
						}
					},
					xAxis: {
						gridLineColor: '#333333',
						gridLineWidth: 1,
						labels: {
							style: {
								color: '#A0A0A0'
							}
						},
						lineColor: '#A0A0A0',
						tickColor: '#A0A0A0',
						title: {
							style: {
								color: '#CCC',
								fontWeight: 'bold',
								fontSize: '12px',
								fontFamily: 'Trebuchet MS, Verdana, sans-serif'

							}
						}
					},
					yAxis: {
						gridLineColor: '#333333',
						labels: {
							style: {
								color: '#A0A0A0'
							}
						},
						lineColor: '#A0A0A0',
						minorTickInterval: null,
						tickColor: '#A0A0A0',
						tickWidth: 1,
						title: {
							style: {
								color: '#CCC',
								fontWeight: 'bold',
								fontSize: '12px',
								fontFamily: 'Trebuchet MS, Verdana, sans-serif'
							}
						}
					},
					tooltip: {
						backgroundColor: 'rgba(0, 0, 0, 0.75)',
						style: {
							color: '#F0F0F0'
						}
					},
					toolbar: {
						itemStyle: {
							color: 'silver'
						}
					},
					plotOptions: {
						line: {
							dataLabels: {
								color: '#CCC'
							},
							marker: {
								lineColor: '#333'
							}
						},
						spline: {
							marker: {
								lineColor: '#333'
							}
						},
						scatter: {
							marker: {
								lineColor: '#333'
							}
						},
						candlestick: {
							lineColor: 'white'
						}
					},
					legend: {
						itemStyle: {
							font: '9pt Trebuchet MS, Verdana, sans-serif',
							color: '#A0A0A0'
						},
						itemHoverStyle: {
							color: '#FFF'
						},
						itemHiddenStyle: {
							color: '#444'
						}
					},
					credits: {
						style: {
							color: '#666'
						}
					},
					labels: {
						style: {
							color: '#CCC'
						}
					},


					navigation: {
						buttonOptions: {
							symbolStroke: '#DDDDDD',
							hoverSymbolStroke: '#FFFFFF',
							theme: {
								fill: {
									linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
									stops: [
										[0.4, '#606060'],
										[0.6, '#333333']
									]
								},
								stroke: '#000000'
							}
						}
					},

					// scroll charts
					rangeSelector: {
						buttonTheme: {
							fill: {
								linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
								stops: [
									[0.4, '#888'],
									[0.6, '#555']
								]
							},
							stroke: '#000000',
							style: {
								color: '#CCC',
								fontWeight: 'bold'
							},
							states: {
								hover: {
									fill: {
										linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
										stops: [
											[0.4, '#BBB'],
											[0.6, '#888']
										]
									},
									stroke: '#000000',
									style: {
										color: 'white'
									}
								},
								select: {
									fill: {
										linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
										stops: [
											[0.1, '#000'],
											[0.3, '#333']
										]
									},
									stroke: '#000000',
									style: {
										color: 'yellow'
									}
								}
							}
						},
						inputStyle: {
							backgroundColor: '#333',
							color: 'silver'
						},
						labelStyle: {
							color: 'silver'
						}
					},

					navigator: {
						handles: {
							backgroundColor: '#666',
							borderColor: '#AAA'
						},
						outlineColor: '#CCC',
						maskFill: 'rgba(16, 16, 16, 0.5)',
						series: {
							color: '#7798BF',
							lineColor: '#A6C7ED'
						}
					},

					scrollbar: {
						barBackgroundColor: {
								linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
								stops: [
									[0.4, '#888'],
									[0.6, '#555']
								]
							},
						barBorderColor: '#CCC',
						buttonArrowColor: '#CCC',
						buttonBackgroundColor: {
								linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
								stops: [
									[0.4, '#888'],
									[0.6, '#555']
								]
							},
						buttonBorderColor: '#CCC',
						rifleColor: '#FFF',
						trackBackgroundColor: {
							linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
							stops: [
								[0, '#000'],
								[1, '#333']
							]
						},
						trackBorderColor: '#666'
					},

					// special colors for some of the
					legendBackgroundColor: 'rgba(0, 0, 0, 0.5)',
					background2: 'rgb(35, 35, 70)',
					dataLabelsColor: '#444',
					textColor: '#C0C0C0',
					maskColor: 'rgba(255,255,255,0.3)'
				};
			highchartsOptions = Highcharts.setOptions(Highcharts.theme);
			$('#storey_all_stay')
					.highcharts(
							{
								chart : {
									type : 'column',
									margin : [ 50, 50, 100, 80 ]
								},
								title : {
									text : '停留分布'
								},
								xAxis : {
									categories : [ '0-60分钟', '60-120分钟',
											'120-180分钟', '180-240分钟', '240分钟以上'

									],
									labels : {
										rotation : -45,
										align : 'right',
										style : {
											fontSize : '13px',
											fontFamily : 'Verdana, sans-serif'
										}
									}
								},
								yAxis : {
									min : 0,
									title : {
										text : '数量'
									}
								},
								legend : {
									enabled : false
								},
								tooltip : {
									pointFormat : '<b>{point.y:.1f}%</b>',
								},
								series : [ {
									name : '停留分布',
									data : [ 34.4, 21.8, 20.1, 20, 19.6 ],
									dataLabels : {
										enabled : true,
										rotation : -90,
										color : '#FFFFFF',
										align : 'right',
										x : 3,
										y : 10,
										style : {
											fontSize : '13px',
											fontFamily : 'Verdana, sans-serif',
											textShadow : '0 0 3px black'
										}
									}
								} ]
							});

			var chart1 = $("#ap_class").highcharts();
			var telchart = $("#tel_class").highcharts();
			var customchart = $("#custom_class").highcharts();
			var timechart = $("#time_custom").highcharts();
			var durationchart = $("#storey_all_stay").highcharts();
			function changedraw(json) {
				if (json.length > 0) {
					var data = [];
					var teldata = [];
					var customdata = [];
					var timedata = [];
					var durationdata = [];
					for (var i = 0; i < json.length; i++) {
						if (json[i].type == "1") {
							data
									.push([ json[i].name,
											parseInt(json[i].value) ]);
						} else if (json[i].type == "2") {
							teldata.push([ json[i].name,
									parseInt(json[i].value) ]);
						} else if (json[i].type == "3") {
							customdata.push([ json[i].name,
									parseInt(json[i].value) ]);
						} else if (json[i].type == "4") {
							var time = json[i].value.replace(/ /g, "");
							var times = time.split(',');
							for (var j = 0; j < times.length; j++) {
								if (times[j] != "") {
									var num = parseInt(times[j]);
									timedata.push(num);
								}
							}
						}else if (json[i].type == "5") {
							var time = json[i].value.replace(/ /g, "");
							var times = time.split(',');
							for (var j = 0; j < times.length; j++) {
								if (times[j] != "") {
									var num = parseInt(times[j]);
									durationdata.push(num);
								}
							}
						}

					}
					if (data.length > 0) {
						chart1.series[0].remove();
						chart1.addSeries({
							type : 'pie',
							name : "比例",
							data : data
						}, false);
						chart1.redraw();
					}

					if (teldata.length > 0) {
						telchart.series[0].remove();
						telchart.addSeries({
							type : 'pie',
							name : "比例",
							data : teldata
						}, false);
						telchart.redraw();
					}
					if (customdata.length > 0) {
						customchart.series[0].remove();
						customchart.addSeries({
							type : 'pie',
							name : "比例",
							data : customdata
						}, false);
						customchart.redraw();
					}

					if (timedata.length > 0) {
						timechart.series[0].remove();
						timechart.addSeries({
							name : "客户数",
							data : timedata,
							pointStart : Date.UTC(2015, 01, 04),
							pointInterval : 3600 * 1000
						}, false);
						timechart.redraw();
					}
					
					if (durationdata.length > 0) {
						durationchart.series[0].remove();
						durationchart.addSeries({
							data : durationdata,
							name : '停留分布',
							dataLabels : {
								enabled : true,
								rotation : -90,
								color : '#FFFFFF',
								align : 'right',
								x : 3,
								y : 10,
								style : {
									fontSize : '13px',
									fontFamily : 'Verdana, sans-serif',
									textShadow : '0 0 3px black'
								}
							}
						}, false);
						durationchart.redraw();
					}
				}
			}
			choicearea("全国","","","","",0);
			!function() {
				window.GLOBAL_DATA = {
					"API_URL_dev" : "http:\/\/cp01-rdqa-dev361.cp01.baidu.com:8080",
					"API_URL" : "http:\/\/huiyan.baidu.com",
					"ECHARTS_THEMES" : {
						"color" : [ "#4DB8EC", "#4CD2EF", "#1581FF", "#496BB5",
								"#FF524E", "#FF8381", "#FEAB81", "#FE964D",
								"#FD4F84", "#DB3164", "#A0C152", "#C4EA62",
								"#42940C", "#78C63E", "#DBD7D8", "#BDBDBD",
								"#999", "#555", "#333" ]
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
				require('home:widget/coming_province/coming_province.js')
						.init();
			}();

			!function() {
				/*require('home:widget/storey_flow_all/stay.js').init();
				var PopTips = require('common:widget/tip/poptips.js').popTips;
				new PopTips({
					'handle' : $('.hourTips_staying'),
					'tips' : '停留时长：指当天到达商场的顾客在商场内停留的时间。'
				});*/
			}();
			!function() {
				jQuery(document).ready(function() {
					Metronic.init(); // init metronic core components
					Layout.init(); // init current layout
				});
			}();
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
		<script type="text/javascript"
			src="${ctx}/source/js/nuomi/common_d94e172.js"></script>
		<script type="text/javascript"
			src="${ctx}/source/js/nuomi/city_list_513635c.js"></script>
		<div class="suggestion-wrap select-city-list"
			id="j-suggestion-1419564297198"
			style="position: absolute; display: none; padding-bottom: 12px; width: 188px; top: 306px; left: 714.96875px; z-index: 101;"></div>
		<script type="text/javascript">
			function awifi() {
				window.location = "mall!awifi.do?mac=" + mac;
			}

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
				$(window)
						.scroll(
								function() {
									var scrollHeight = $(window).scrollTop();
									if (scrollHeight > 10) {
										var isIE6 = !!window.ActiveXObject
												&& !window.XMLHttpRequest;
										if (!isIE6) {
											$(".go-top").css("display",
													"inline-block");
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
				require
						.async(
								[ 'common:widget/ui/cookie/cookie.js' ],
								function(Cookie) {
									function initErweima() {
										//读取cookie，查看之前用户是否关闭了二维码，如果关闭，一段时间之内不再显示
										var mobileUploadEntry = Cookie
												.get("mobile_upload_entry");
										if (mobileUploadEntry) {
											$("#mobile-upload-entry").css(
													"display", "none");
										}
										$(window)
												.scroll(
														function() {
															var scrollHeight = $(
																	window)
																	.scrollTop();
															if (scrollHeight > 96) {
																$(
																		"#mobile-upload-entry")
																		.css(
																				"position",
																				"fixed");
																$(
																		"#mobile-upload-entry")
																		.css(
																				"top",
																				"250px");
															} else {
																$(
																		"#mobile-upload-entry")
																		.css(
																				"position",
																				"absolute");
																$(
																		"#mobile-upload-entry")
																		.css(
																				"top",
																				"346px");
															}
														})
									}
									function closeErweima() {
										$("#mobile-upload-entry").css(
												"display", "none");
										Cookie.set('mobile_upload_entry', '0',
												'today');
									}
									$("#mobile-upload-entry .close-btn").click(
											closeErweima);
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
				require
						.async([ 'common:widget/header/top-banner/top-banner.js' ]);
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
																	content : '<p>问题反馈邮箱及电话接受对内部员工违规违法行为的举报，接受对内部流程及制度建设方面的建议，对于公司内部风险方面问题都可以反馈给我们。<br />不接受用户咨询及商务合作咨询。<br />问题反馈邮箱：<a href="mailto:bdnm_jiancha@baidu.com" class="link">bdnm_jiancha@baidu.com</a><br />问题反馈手机：13269403604</p>',
																	footer : [
																			'<a href="javascript:;" class="dialog-btn-ok j-dialog-btn" data-event="ok">发邮件</a>',
																			'<a href="javascript:;" class="dialog-btn-cancel j-dialog-btn" data-event="cancel">取消</a>' ]
																			.join(''),
																	onok : function() {
																		location.href = "mailto:bdnm_jiancha@baidu.com";
																	}
																});
													});
								});
			}();
			!function() {
				$.ajaxSetup({
					cache : false
				});

				//2014_10_11 zhangyijun02: 因增加广告轮播曝光日志逻辑，调整showtrack初始化方式
				require
						.async(
								[
										'common:widget/ui/usertrack/usertrack.js',
										'common:widget/ui/lazyload/lazyload.js',
										'common:widget/ui/cookie/cookie.js',
										'common:widget/ui/showtrack/showtrack.js',
										'common:widget/ui/items_post/items_post.js' ],
								function(usertrack, LazyLoad, Cookie,
										ShowTrack, itemsPost) {
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

											$
													.ajax(
															getBaiduidUrl,
															{
																dataType : 'jsonp',
																success : function(
																		json) {
																	if (json.errno == 0) {
																		var baiduid = json.data.baiduid;
																		if (baiduid) {
																			Cookie
																					.setRaw(
																							'BAIDUID',
																							baiduid,
																							365);
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
											da_src : encodeURIComponent($
													.stringify({
														page : "city_list"
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
			var _trace_page_logid = 1498516392;
		</script>
		<div class="suggestion-wrap search-suggestion"
			id="j-suggestion-1419564297222"
			style="position: absolute; display: none; padding-bottom: 12px; width: 310px; top: 96px; left: 535.5px; z-index: 101;"></div>
</body>
</html>