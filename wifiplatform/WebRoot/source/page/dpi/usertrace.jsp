<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
		body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=Q15HFmKZ9NEPV8UjvItUNLE2"></script>
	<script type="text/javascript" src="http://developer.baidu.com/map/jsdemo/demo/convertor.js"></script>
	<title>GPS转百度</title>
</head>
<body>
	<div id="allmap"></div>
</body>
</html>
<script type="text/javascript">
	// 百度地图API功能
	//GPS坐标
	var xx = 116.397428;
	var yy = 39.90923;
	var gpsPoint = new BMap.Point(xx,yy);

	//地图初始化
	var bm = new BMap.Map("allmap");
	bm.centerAndZoom(gpsPoint, 15);
	bm.addControl(new BMap.NavigationControl());

	//添加谷歌marker和label
	var markergps = new BMap.Marker(gpsPoint);
	bm.addOverlay(markergps); //添加GPS标注
	var labelgps = new BMap.Label("我是GPS标注哦",{offset:new BMap.Size(20,-10)});
	markergps.setLabel(labelgps); //添加GPS标注

	//坐标转换完之后的回调函数
	translateCallback = function (point){
		var marker = new BMap.Marker(point);
		bm.addOverlay(marker);
		var label = new BMap.Label("我是百度标注哦",{offset:new BMap.Size(20,-10)});
		marker.setLabel(label); //添加百度label
		bm.setCenter(point);
		alert(point.lng + "," + point.lat);
	}

	setTimeout(function(){
		BMap.Convertor.translate(gpsPoint,0,translateCallback);     //真实经纬度转成百度坐标
	}, 2000);
</script>