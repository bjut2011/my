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
								for (var i = 0; i < json.length; i++) {
									data.push(json[i].ap_total);
									data.push(json[i].online_num);
									data.push(json[i].ap_total
											- json[i].online_num);
								}
								for (var i = 0; i < data.length; i++) {
									speData.push({
										name : categories[i],
										y : data[i]
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
							}
						}, 'json');
	}

	// 创建圆环图
	function draw2DPieChart() {
		$('#container').highcharts({
			chart : {
				type : 'pie',
				borderRadius : '0',
				backgroundColor:'#EEFFFF'
			},
			title : {
				text : '管理域AP总量及在线率',
				style : {
					fontFamily : '微软雅黑',
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
			credits: {
            	text: '',
            	href: ''
        	},
			tooltip : {
				fontSize : '12px'
			},
			series : []
		});
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
				<div class="top_left" id="container">
					
				</div>
				<div class="top_right">
					<img src="${ctx}/source/images/33.png"
						style="float: left; margin: 20px 0 0 20px;" />
					<div id="g1"></div>
				</div>
			</div>
			<div class="main_bottom">
				<div class="bottom_left">
					<img src="${ctx}/source/images/44.png"
						style="float: left; margin: 20px 0 0 20px;" /> <span
						style="text-align: center; font-size: 80px; color: #fff; float: left; margin-top: 120px; margin-left: 10px;">${apTotal}</span>
				</div>
				<div class="bottom_right">
					<img src="${ctx}/source/images/55.png"
						style="float: right; margin: 20px 70px 0 0" /> <span
						style="float: right; color: #fff; font-size: 80px; margin-top: 60px; margin-right: -100px;">${customerNum}</span>
				</div>
			</div>
		</div>
		<div class="main_right" id="main_right"
			style="height: 100%; overflow: scroll;">
			<div style="width: 100%; overflow: auto;" id="main_right_content">
				<table width="90%" border="0" class="page_table"
					style="margin-top: 30px;">
					<tr height="30px;">
						<td>全网</td>
						<td>AP</td>
						<td>客户</td>
						<td>在线比</td>
					</tr>
					<c:forEach items="${adrs}" var="adr">
						<tr>
							<td>${adr.name}</td>
							<td>${adr.ap_total}</td>
							<td>${adr.customer_num}</td>
							<td>${adr.online_rate}</td>
						</tr>
					</c:forEach>
				</table>
			</div>

		</div>
	</div>
</body>
</html>