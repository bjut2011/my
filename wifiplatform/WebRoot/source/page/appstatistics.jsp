<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>

<link type="text/css" rel="stylesheet"
	href="${ctx}/source/css/index.css" />
<script type="text/javascript" src="${ctx}/source/js/jquery.json-2.4.js">
	
</script>
<script type="text/javascript"
	src="${ctx}/source/js/highcharts/js/jquery-1.8.2.min.js">
	
</script>
<script type="text/javascript">
	var speData = [];
	var speCustomerData = [];
	var categories = [ '总数', '在线数', '离线数' ];
	var columnX = [ '上行总流量', '下行总流量' ];
	$(function() {
		draw2DPieChart();
		get2DPieChartData();
	});
	//获取圆环图数据
	function get2DPieChartData() {
		$.ajax({
			type : "POST",
			dataType : "json",
			url : "dpi!initAPChart.do",
			success : function(json) {
				var data = [];
				categories.splice(0,categories.length);  
				var colors = Highcharts.getOptions().colors;
				var str="[";
				var datacustomer = [];
				var num = colors.length;
				var index=0;
				for (var i = 0; i < json.length; i++) {
					categories.push(json[i].name_cn);
					if(index>=num){
						index=0
					}
					data.push({
						y : parseInt(json[i].num),
						color : colors[index]
					});
					index++;
					
				}
				
				
				var chart = $("#container").highcharts();
				chart.xAxis[0].setCategories(categories, false);
				chart.series[0].remove(false);
				chart.addSeries({
					name : " ",
					data : data,
					color :  'white'
				}, false);
				chart.redraw();
			}
		}, 'json');
	}

	// 创建圆环图
	function draw2DPieChart() {
		var colors = Highcharts.getOptions().colors;
		categories = [ 'MSIE','Firefox', 'Chrome', 'Safari', 'Opera' ];
		name = ' ';
		data = [
				{
					y : 55.11,
					color : colors[0],
					drilldown : {
						name : 'MSIE versions',
						categories : [ 'MSIE 6.0', 'MSIE 7.0', 'MSIE 8.0',
								'MSIE 9.0' ],
						data : [ 10.85, 7.35, 33.06, 2.81 ],
						color : colors[0]
					}
				},
				{
					y : 21.63,
					color : colors[1],
					drilldown : {
						name : 'Firefox versions',
						categories : [ 'Firefox 2.0', 'Firefox 3.0',
								'Firefox 3.5', 'Firefox 3.6', 'Firefox 4.0' ],
						data : [ 0.20, 0.83, 1.58, 13.12, 5.43 ],
						color : colors[1]
					}
				},
				{
					y : 11.94,
					color : colors[2],
					drilldown : {
						name : 'Chrome versions',
						categories : [ 'Chrome 5.0', 'Chrome 6.0',
								'Chrome 7.0', 'Chrome 8.0', 'Chrome 9.0',
								'Chrome 10.0', 'Chrome 11.0', 'Chrome 12.0' ],
						data : [ 0.12, 0.19, 0.12, 0.36, 0.32, 9.91, 0.50, 0.22 ],
						color : colors[2]
					}
				},
				{
					y : 7.15,
					color : colors[3],
					drilldown : {
						name : 'Safari versions',
						categories : [ 'Safari 5.0', 'Safari 4.0',
								'Safari Win 5.0', 'Safari 4.1',
								'Safari/Maxthon', 'Safari 3.1', 'Safari 4.1' ],
						data : [ 4.55, 1.42, 0.23, 0.21, 0.20, 0.19, 0.14 ],
						color : colors[3]
					}
				},
				{
					y : 2.14,
					color : colors[4],
					drilldown : {
						name : 'Opera versions',
						categories : [ 'Opera 9.x', 'Opera 10.x', 'Opera 11.x' ],
						data : [ 0.12, 0.37, 1.65 ],
						color : colors[4]
					}
				} ];

		function setChart(name, categories, data, color) {
			chart.xAxis[0].setCategories(categories, false);
			chart.series[0].remove(false);
			chart.addSeries({
				name : name,
				data : data,
				color : color || 'white'
			}, false);
			chart.redraw();
		}
		data = [];
		var chart = $('#container')
				.highcharts(
						{
							chart : {
								type : 'column'
							},
							title : {
								text : '应用人气指数',
								style : {
									fontFamily : '宋体',
									fontSize : '20px'
								}
							},
							subtitle : {
								text : ''
							},
							xAxis : {
								categories : categories
							},
							yAxis : {
								title : {
									text : '指数',
									style : {
										fontFamily : '宋体',
										fontSize : '20px'
									}
								}
								
							},
							credits : {
								text : '',
								href : ''
							},
							plotOptions : {
								column : {
									cursor : 'pointer',
									point : {
										events : {
											click : function() {
												var drilldown = this.drilldown;
												if (drilldown) { // drill down
													setChart(
															drilldown.name,
															drilldown.categories,
															drilldown.data,
															drilldown.color);
												} else { // restore
													setChart(name, categories,
															data);
												}
											}
										}
									},
									dataLabels : {
										enabled : true,
										color : colors[0],
										style : {
											fontFamily : '宋体',
											fontWeight : 'bold'
										},
										formatter : function() {
											return this.y + '';
										}
									}
								}
							},
							tooltip : {
								formatter : function() {
									var point = this.point, s = this.x + ':<b>'
											+ this.y + '指数</b><br>';
									if (point.drilldown) {
										//s += 'Click to view ' + point.category
												+ ' versions';
									} else {
										//s += 'Click to return to browser brands';
									}
									return s;
								}
							},
							series : [ {
								name : name,
								data : data,
								color : 'white'
							} ],
							exporting : {
								enabled : false
							}
						}).highcharts(); // return chart

	}
</script>
</head>
<body>

	<script type="text/javascript"
		src="${ctx}/source/js/highcharts/js/highcharts.js"></script>
	<script type="text/javascript"
		src="${ctx}/source/js/highcharts/js/highcharts-3d.js"></script>
	<script type="text/javascript"
		src="${ctx}/source/js/highcharts/js/modules/exporting.js"></script>

	<div class="main">
		<div class="main_left">
			<div class="main_top">
				<div class="top_all" id="container"></div>

			</div>
			<div class="main_bottom">
				
			</div>
		</div>

	</div>
</body>
</html>