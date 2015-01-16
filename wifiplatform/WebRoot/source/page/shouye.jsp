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
<style type="text/css">
${
demo












.css












}
</style>
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
		$
				.ajax(
						{
							type : "POST",
							dataType : "json",
							url : "countController!initAPChart.do",
							success : function(json) {
								var data = [];
								var datacustomer = [];
								for (var i = 0; i < json.length; i++) {
									data.push(json[i].ap_total);
									data.push(json[i].online_num);
									data.push(json[i].ap_total
											- json[i].online_num);
									datacustomer.push(json[i].customer_num);
									datacustomer
											.push(json[i].onlinecustomer_num);
									datacustomer.push(json[i].customer_num
											- json[i].onlinecustomer_num);
								}
								for (var i = 0; i < data.length; i++) {
									speData.push({
										name : categories[i],
										y : data[i]
									})
								}

								for (var i = 0; i < datacustomer.length; i++) {
									speCustomerData.push({
										name : categories[i],
										y : datacustomer[i]
									})
								}

								var chart = $("#container").highcharts();
								chart
										.addSeries(
												{
													name : '',
													data : speData,
													size : '80%',
													innerSize : '60%',
													dataLabels : {
														align : 'left',
														formatter : function() {
															return this.y > 1 ? '<b style="font-size:15px;font-family:微软雅黑;">'
																	+ this.point.name

																	+ ': '
																	+ this.y
																	+ '</b>'
																	: null;
														}
													}
												}, false);
								chart.addSeries({
									name : 'a',
									size : '70%'
								}, false);
								chart.redraw();

								var chartCustomer = $("#customer").highcharts();
								chartCustomer
										.addSeries(
												{
													name : '',
													data : speCustomerData,
													size : '80%',
													innerSize : '60%',
													dataLabels : {
														align : 'left',
														formatter : function() {
															return this.y > 1 ? '<b style="font-size:15px;font-family:微软雅黑;">'
																	+ this.point.name

																	+ ': '
																	+ this.y
																	+ '</b>'
																	: null;
														}
													}
												}, false);
								chartCustomer.addSeries({
									name : 'a',
									size : '70%'
								}, false);
								chartCustomer.redraw();
							}
						}, 'json');
	}

	// 创建圆环图
	function draw2DPieChart() {
		$('#container').highcharts({
			chart : {
				type : 'pie',
				borderRadius : '0',
				backgroundColor : '#EEFFFF'
			},
			title : {
				text : 'AP总量及在线率',
				style : {
					fontFamily : '宋体',
					fontSize : '20px'
				}
			},
			yAxis : {
				title : {
					text : '比例'
				}
			},
			plotOptions : {
				pie : {
					shadow : true,
					center : [ '50%', '50%' ]
				}
			},
			credits : {
				text : '',
				href : ''
			},
			tooltip : {
				fontSize : '12px'
			},
			series : []
		});

		$('#customer').highcharts({
			chart : {
				type : 'pie',
				borderRadius : '0'

			},
			title : {
				text : '用户总量及在线率',
				style : {
					fontFamily : '宋体',
					fontSize : '20px'
				}
			},
			yAxis : {
				title : {
					text : '比例'
				}
			},
			plotOptions : {
				pie : {
					shadow : true,
					center : [ '50%', '50%' ]
				}
			},
			credits : {
				text : '',
				href : ''
			},
			tooltip : {
				fontSize : '12px'
			},
			series : []
		});

		var options = {
			chart : {
				type : 'column'
			},
			title : {
				text : '各省运行状态',
				style : {
					fontFamily : '宋体',
					fontSize : '20px'
				}
			},
			subtitle : {
				text : ''
			},
			xAxis : {
				categories : []
			},
			yAxis : {
				min : 0,
				title : {
					text : '总数'
				}
			},
			credits : {
				text : '',
				href : ''
			},
			tooltip : {
				headerFormat : '<span style="font-size:10px">{point.key}</span>',
				shared : true,
				useHTML : true
			},
			plotOptions : {
				column : {
					pointPadding : 0.2,
					borderWidth : 0
				}
			},
			series : []
		};
		var data = '${adrs.size()}';
		var aps = [];
		options.series[0] = new Object();
		options.series[0].name = 'AP';
		options.series[0].data = new Array();

		options.series[1] = new Object();
		options.series[1].name = '在线AP';
		options.series[1].data = new Array();

		options.series[2] = new Object();
		options.series[2].name = '用户';
		options.series[2].data = new Array();

		options.series[3] = new Object();
		options.series[3].name = '在线用户';
		options.series[3].data = new Array();
		for (var i = 0; i < parseInt(data); i++) {
			if (i == 0) {
				name = '${adrs[0].name}';
				options.xAxis.categories.push(name);
				ap_total = '${adrs[0].ap_total}';
				customer_num = '${adrs[0].customer_num}';
				online_num = '${adrs[0].online_num}';
				onlinecustomer_num = '${adrs[0].onlinecustomer_num}';
				options.series[0].data.push(parseInt(ap_total));
				options.series[1].data.push(parseInt(online_num));
				options.series[2].data.push(parseInt(customer_num));
				options.series[3].data.push(parseInt(onlinecustomer_num));
			}
			if (i == 1) {
				name = '${adrs[1].name}';
				options.xAxis.categories.push(name);
				ap_total = '${adrs[1].ap_total}';
				customer_num = '${adrs[1].customer_num}';
				online_num = '${adrs[1].online_num}';
				onlinecustomer_num = '${adrs[1].onlinecustomer_num}';
				options.series[0].data.push(parseInt(ap_total));
				options.series[1].data.push(parseInt(online_num));
				options.series[2].data.push(parseInt(customer_num));
				options.series[3].data.push(parseInt(onlinecustomer_num));
			}
			if (i == 2) {
				name = '${adrs[2].name}';
				options.xAxis.categories.push(name);
				ap_total = '${adrs[2].ap_total}';
				customer_num = '${adrs[2].customer_num}';
				online_num = '${adrs[2].online_num}';
				onlinecustomer_num = '${adrs[2].onlinecustomer_num}';
				options.series[0].data.push(parseInt(ap_total));
				options.series[1].data.push(parseInt(online_num));
				options.series[2].data.push(parseInt(customer_num));
				options.series[3].data.push(parseInt(onlinecustomer_num));
			}
			if (i == 3) {
				name = '${adrs[3].name}';
				options.xAxis.categories.push(name);
				ap_total = '${adrs[3].ap_total}';
				customer_num = '${adrs[3].customer_num}';
				online_num = '${adrs[3].online_num}';
				onlinecustomer_num = '${adrs[3].onlinecustomer_num}';
				options.series[0].data.push(parseInt(ap_total));
				options.series[1].data.push(parseInt(online_num));
				options.series[2].data.push(parseInt(customer_num));
				options.series[3].data.push(parseInt(onlinecustomer_num));
			}
			if (i == 4) {
				name = '${adrs[4].name}';
				options.xAxis.categories.push(name);
				ap_total = '${adrs[4].ap_total}';
				customer_num = '${adrs[4].customer_num}';
				online_num = '${adrs[4].online_num}';
				onlinecustomer_num = '${adrs[4].onlinecustomer_num}';
				options.series[0].data.push(parseInt(ap_total));
				options.series[1].data.push(parseInt(online_num));
				options.series[2].data.push(parseInt(customer_num));
				options.series[3].data.push(parseInt(onlinecustomer_num));
			}

			if (i == 5) {
				name = '${adrs[5].name}';
				options.xAxis.categories.push(name);
				ap_total = '${adrs[5].ap_total}';
				customer_num = '${adrs[5].customer_num}';
				online_num = '${adrs[5].online_num}';
				onlinecustomer_num = '${adrs[5].onlinecustomer_num}';
				options.series[0].data.push(parseInt(ap_total));
				options.series[1].data.push(parseInt(online_num));
				options.series[2].data.push(parseInt(customer_num));
				options.series[3].data.push(parseInt(onlinecustomer_num));
			}
			if (i == 6) {
				name = '${adrs[6].name}';
				options.xAxis.categories.push(name);
				ap_total = '${adrs[6].ap_total}';
				customer_num = '${adrs[6].customer_num}';
				online_num = '${adrs[6].online_num}';
				onlinecustomer_num = '${adrs[6].onlinecustomer_num}';
				options.series[0].data.push(parseInt(ap_total));
				options.series[1].data.push(parseInt(online_num));
				options.series[2].data.push(parseInt(customer_num));
				options.series[3].data.push(parseInt(onlinecustomer_num));
			}
			if (i == 7) {
				name = '${adrs[7].name}';
				options.xAxis.categories.push(name);
				ap_total = '${adrs[7].ap_total}';
				customer_num = '${adrs[7].customer_num}';
				online_num = '${adrs[7].online_num}';
				onlinecustomer_num = '${adrs[7].onlinecustomer_num}';
				options.series[0].data.push(parseInt(ap_total));
				options.series[1].data.push(parseInt(online_num));
				options.series[2].data.push(parseInt(customer_num));
				options.series[3].data.push(parseInt(onlinecustomer_num));
			}
			if (i == 8) {
				name = '${adrs[8].name}';
				options.xAxis.categories.push(name);
				ap_total = '${adrs[8].ap_total}';
				customer_num = '${adrs[8].customer_num}';
				online_num = '${adrs[8].online_num}';
				onlinecustomer_num = '${adrs[8].onlinecustomer_num}';
				options.series[0].data.push(parseInt(ap_total));
				options.series[1].data.push(parseInt(online_num));
				options.series[2].data.push(parseInt(customer_num));
				options.series[3].data.push(parseInt(onlinecustomer_num));
			}
			if (i == 9) {
				name = '${adrs[9].name}';
				options.xAxis.categories.push(name);
				ap_total = '${adrs[9].ap_total}';
				customer_num = '${adrs[9].customer_num}';
				online_num = '${adrs[9].online_num}';
				onlinecustomer_num = '${adrs[9].onlinecustomer_num}';
				options.series[0].data.push(parseInt(ap_total));
				options.series[1].data.push(parseInt(online_num));
				options.series[2].data.push(parseInt(customer_num));
				options.series[3].data.push(parseInt(onlinecustomer_num));
			}
			if (i == 10) {
				name = '${adrs[10].name}';
				options.xAxis.categories.push(name);
				ap_total = '${adrs[10].ap_total}';
				customer_num = '${adrs[10].customer_num}';
				online_num = '${adrs[10].online_num}';
				onlinecustomer_num = '${adrs[10].onlinecustomer_num}';
				options.series[0].data.push(parseInt(ap_total));
				options.series[1].data.push(parseInt(online_num));
				options.series[2].data.push(parseInt(customer_num));
				options.series[3].data.push(parseInt(onlinecustomer_num));
			}
		}
		$('#column').highcharts(options);

		optionsflow = {
			chart : {
				type : 'spline',
				animation : Highcharts.svg,
				backgroundColor : '#EEFFFF'
			},
			title : {
				text : 'AP流量'
			},
			xAxis : {
				type : 'datetime',
				tickPixelInterval : 100
			},
			yAxis : {
				title : {
					text : '流量(K)'
				}
			},
			credits : {
				text : '',
				href : ''
			},
			tooltip : {
				formatter : function() {
					return '<b>'
							+ this.series.name
							+ '</b><br/>'
							+ Highcharts
									.dateFormat('%Y-%m-%d %H:%M:%S', this.x)
							+ '<br/>' + Highcharts.numberFormat(this.y, 2);
				}
			},
			legend : {
				layout : 'horizontal',
				align : 'center',
				verticalAlign : 'bottom',
				borderWidth : 0
			},
			exporting : {
				enabled : false
			},
			series : [ {
				name : '上行流量',
				dataLabels : {
					enabled : false
				},
				data : (function() {
					var data = [], time = (new Date()).getTime(), i;
					for (i = -5; i <= 0; i++) {
						data.push({
							x : time,
							y : 0
						});
					}
					return data;
				})()
			}, {
				name : '下行流量',
				dataLabels : {
					enabled : false
				},
				data : (function() {
					var data = [], time = (new Date()).getTime(), i;
					for (i = -5; i <= 0; i++) {
						data.push({
							x : time,
							y : 0
						});
					}
					return data;
				})()
			} ]
		};
		Highcharts.setOptions({
			global : {
				useUTC : false
			//关闭UTC
			}
		});
		$('#apflow').highcharts(optionsflow);
		var apflowcharts = $('#apflow').highcharts();
		$.get("apmController!lookApFlow.do",
				"mac=&rand=" + 100 * Math.random(), function(data) {
					//时间
					var x = (new Date()).getTime();

					//上行流量
					var series1 = apflowcharts.series[0];
					//下行流量
					var series2 = apflowcharts.series[1];
					a1 = parseInt(data.incoming);
					a2 = parseInt(data.outgoing);
					//将打开的window放入缓存中
					/*timeInterval = setInterval(function() {
						$.get("apmController!lookApFlow.do", "mac=&rand=" + 100
								* Math.random(), function(data) {
							series1 = apflowcharts.series[0];
							series2 = apflowcharts.series[1];
							var x = (new Date()).getTime();
							var  og=parseInt(data.outgoing);
							og=og* Math.random();
							var  ig=parseInt(data.incoming);
							ig=ig* Math.random();
							series1.addPoint(
									[ x, parseInt(data.outgoing) - a1 ], true,
									true);
							series2.addPoint(
									[ x, parseInt(data.incoming) - a2 ], true,
									true);
							a1 = parseInt(data.outgoing)- a1;
							a2 = parseInt(data.incoming)- a2;
							apflowcharts.redraw();
						}, "JSON");
					}, 10000);*/
				}, "JSON");

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
				<div class="top_left" id="container"></div>
				<div class="top_right" id="customer">
					<img src="${ctx}/source/images/33.png"
						style="float: left; margin: 20px 0 0 20px;" />
					<div id="g1"></div>
				</div>
			</div>
			<div class="main_bottom">
				<div class="bottom_left" id="column">
					<img src="${ctx}/source/images/44.png"
						style="float: left; margin: 20px 0 0 20px;" /> <span
						style="text-align: center; font-size: 80px; color: #fff; float: left; margin-top: 120px; margin-left: 10px;">${apTotal}</span>
				</div>
				<div class="bottom_right" id="apflow">
					<span
						style="float: right; color: #fff; font-size: 80px; margin-top: 60px; margin-right: -100px;"></span>
				</div>
			</div>
		</div>

	</div>
</body>
</html>