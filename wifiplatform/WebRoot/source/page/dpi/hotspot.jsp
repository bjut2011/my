<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<!-- saved from url=(0051)http://map.baidu.com/heatmap/index/index/from=pcmap -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta charset="utf-8">

<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="edge">
<meta name="description"
	content="景区热力图,景区人流图,景区人多不多,人群分布热力图,景区拥挤指数,春节拥挤指数,热力地图。">
<title>百度地图热力图</title>

<script type="text/javascript">!function(t,e){if(t._isPushState=t.history&&"pushState"in t.history,!t._isPushState&&"onhashchange"in t){var o=e.hash.replace(/^#/,""),n=/^[#\/]?(.+)\/(.+)/i,s="http://"+e.host+"/heatmap/",a=s+o+"/?"+location.search.replace(/^\?/,""),h="fromhash=1";-1===a.indexOf(h)&&(a=a+(/(\?|&)$/.test(a)?"":"&")+h),n.test(o)&&e.replace(a)}"undefined"==typeof console&&(t.console={},t.console.log=function(){},t.console.trace=function(){}),t.onerror=function(){return!1;}}(this,location);</script>
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/hotspot/common_42fea1c.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/hotspot/index_1062b37.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/hotspot/listpage_6bc1d8e.css" />
<script src="${ctx}/source/js/hotspot/mod_448ddd4.js"
	type="text/javascript" defer="true" class="lazyload" charset="utf-8"></script>
<script src="${ctx}/source/js/hotspot/util_091cb67.js"
	type="text/javascript" defer="true" class="lazyload" charset="utf-8"></script>
<script src="${ctx}/source/js/hotspot/HeatLayer_91eb8ef.js"
	type="text/javascript" defer="true" class="lazyload" charset="utf-8"></script>
<script src="${ctx}/source/js/hotspot/common-widget_a9bed14.js"
	type="text/javascript" defer="true" class="lazyload" charset="utf-8"></script>
<script src="${ctx}/source/js/hotspot/searchBox_aa15577.js"
	type="text/javascript" defer="true" class="lazyload" charset="utf-8"></script>
<script src="${ctx}/source/js/hotspot/hotplace_84a3cda.js"
	type="text/javascript" defer="true" class="lazyload" charset="utf-8"></script>
<script src="${ctx}/source/js/hotspot/listheader_b7ca76a.js"
	type="text/javascript" defer="true" class="lazyload" charset="utf-8"></script>
<script src="${ctx}/source/js/hotspot/page_c950326.js"
	type="text/javascript" defer="true" class="lazyload" charset="utf-8"></script>
<script src="${ctx}/source/js/hotspot/listpage_6ad79d9.js"
	type="text/javascript" defer="true" class="lazyload" charset="utf-8"></script>
<script src="${ctx}/source/js/hotspot/poilist_b9d9c85.js"
	type="text/javascript" defer="true" class="lazyload" charset="utf-8"></script>


<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&amp;ak=Q15HFmKZ9NEPV8UjvItUNLE2"></script>
<script type="text/javascript"
	src="http://api.map.baidu.com/getscript?v=2.0&amp;ak=Q15HFmKZ9NEPV8UjvItUNLE2&amp;services=&amp;t=20141223182951"></script>
<script src="http://mapclick.map.baidu.com/data/197_74_12_018.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript"
	src="http://api.map.baidu.com/library/Heatmap/2.0/src/Heatmap_min.js"></script>
<script type="text/javascript"
	src="http://api.map.baidu.com/library/CityList/1.4/src/CityList_min.js"></script>
<style type="text/css">
#legend {
	background: #fff;
	padding: 7px;
	z-index: 100
}

.legend-text {
	float: left;
	line-height: 21px
}

.legend-item {
	border: 1px solid #21bb0c;
	background: #46b035;
	float: left;
	margin-left: 1px;
	padding: 2px 12px;
	color: #fff;
	position: relative;
	overflow: hidden;
	text-decoration: none
}

.legend-1 {
	border-color: #21bb0c;
	background: #46b035
}

.legend-2 {
	border-color: #93bd02;
	background: #9bc702
}

.legend-3 {
	border-color: #f5a700;
	background: #ffae00
}

.legend-4 {
	border-color: #f46e01;
	background: #ff7200
}

.legend-5 {
	border-color: #f52a1d;
	background: #fd3023
}

.legend-item-wrapper {
	position: absolute;
	height: 45px;
	top: -46px;
	left: -84px
}

.legend-item-tip {
	position: relative;
	border: 1px solid #acb2bb;
	color: #333;
	white-space: nowrap;
	background-repeat: no-repeat;
	background-position: 14px 50%;
	padding: 6px 14px 6px 99px;
	height: 26px;
	width: 145px;
	line-height: 26px;
	text-align: center
}

.legend-1 .legend-item-tip {
	background:
		url(http://webmap0.map.bdimg.com/newheatmap/static/index/images/bg_level_1_334d47d.png?__sprite)
		no-repeat 14px 50% #fff
}

.legend-2 .legend-item-wrapper {
	left: -94px
}

.legend-2 .legend-item-tip {
	background:
		url(http://webmap0.map.bdimg.com/newheatmap/static/index/images/bg_level_2_d9f377d.png?__sprite)
		no-repeat 14px 50% #fff
}

.legend-3 .legend-item-wrapper {
	left: -94px
}

.legend-3 .legend-item-tip {
	background:
		url(http://webmap0.map.bdimg.com/newheatmap/static/index/images/bg_level_3_485941c.png?__sprite)
		no-repeat 14px 50% #fff
}

.legend-4 .legend-item-wrapper {
	left: -94px
}

.legend-4 .legend-item-tip {
	background:
		url(http://webmap0.map.bdimg.com/newheatmap/static/index/images/bg_level_4_44190f0.png?__sprite)
		no-repeat 14px 50% #fff
}

.legend-5 .legend-item-wrapper {
	left: -173px
}

.legend-5 .legend-item-tip {
	width: 165px;
	background:
		url(http://webmap0.map.bdimg.com/newheatmap/static/index/images/bg_level_5_f28380e.png?__sprite)
		no-repeat 14px 50% #fff
}

.legend-item:hover {
	overflow: visible
}

.legend-item-tip-arrow {
	background:
		url(http://webmap0.map.bdimg.com/newheatmap/static/index/images/tip_arrow_c777bf8.png?__sprite)
		no-repeat 0 0;
	width: 7px;
	height: 5px;
	position: absolute;
	left: 50%;
	margin-left: -3px;
	top: 38px
}

.legend-5 .legend-item-tip-arrow {
	left: 220px
}

#time-control-btns {
	overflow: hidden
}

.time-control-btn {
	margin-left: 5px;
	padding: 5px 10px;
	border: 1px solid #acb2bb;
	background: #fff;
	color: #000;
	text-decoration: none;
	float: left
}

.time-control-btn.active {
	background: #278df2;
	color: #fff
}

#time-panel {
	background: rgba(255, 255, 255, .8);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#CCFFFFFF,
		endColorstr=#CCFFFFFF);
	border: 1px solid #acb2bb;
	padding: 13px;
	margin-top: 5px;
	width: 295px;
	overflow: hidden;
	position: absolute;
	top: 32px;
	right: 0;
	display: none
}

.time-panel-title {
	font-weight: 700;
	font-size: 14px
}

.time-panel-title .time-panel-time {
	font-size: 12px;
	font-weight: 400;
	margin-left: 10px
}

.time-panel-control {
	overflow: hidden
}

.time-panel-progress-container {
	float: left;
	width: 252px
}

.time-panel-progress-bar {
	background:
		url(http://webmap0.map.bdimg.com/newheatmap/static/index/images/time-progress-bar_3d8a295.png?__sprite)
		no-repeat right 0;
	width: 252px;
	height: 8px;
	position: relative;
	margin-top: 10px
}

.time-panel-progress-text {
	overflow: hidden;
	margin-top: -3px;
	width: 270px;
	position: relative;
	left: -5px
}

.time-panel-progress-tick {
	float: left;
	background:
		url(http://webmap0.map.bdimg.com/newheatmap/static/index/images/tick_72211ea.png?__sprite)
		no-repeat 50% 0;
	padding-top: 7px;
	width: 12.5%;
	text-align: center;
	*width: 12.4%
}

.time-panel-week .time-panel-progress-tick {
	width: 14.28%;
	*width: 14.2%
}

.time-panel-progress {
	background:
		url(http://webmap0.map.bdimg.com/newheatmap/static/index/images/time-progress_cb28985.png?__sprite)
		no-repeat 0 0;
	width: 16px;
	height: 16px;
	position: absolute;
	top: -5px;
	left: 0
}

.time-panel-btn {
	background:
		url(http://webmap0.map.bdimg.com/newheatmap/static/index/images/time-btn-pause_8c55183.png?__sprite)
		no-repeat 0 0;
	width: 33px;
	height: 33px;
	float: right;
	cursor: pointer
}

.time-panel-btn.play {
	background:
		url(http://webmap0.map.bdimg.com/newheatmap/static/index/images/time-btn-play_22fead8.png?__sprite)
		no-repeat 0 0
}
</style>
</head>
<body style="min-width: 990px; min-height: 621px;">

	<div id="page_data"></div>
	<div id="bodyWrapper"></div>
	<div id="wrapper">
		<div id="contentWrapper" style="height: 525px;">
			<div id="pager">

				<div id="__elm__2">
					<div class="index-select-city">
						<a href="http://map.baidu.com/heatmap/index/index" title="返回热力图首页">热力图</a>
						<span class="sp">&gt;</span> <a class="city-name" title="切换城市"
							href="javascript:void(0)">北京市<em></em></a>
					</div>
					<div id="index_sel_city"></div>
				</div>
				<div id="__elm__3">
					<div class="index-list" id="poi_list" style="height: 492px;">
						<div class="index-list-title">
							<span class="title-txt">用户指数排行:</span> <span
								class="title-right"> <span>最后刷新:</span> <span
								class="upd-time">15:09</span> <em title="刷新"></em>
							</span>
						</div>
						<div class="index-list-wrapper">
							<div class="index-list-filter">
								<form id="sel_city_form">
									<input type="radio" id="crowd_level" name="sort"
										value="spothot" checked="checked">按密度程度&nbsp;&nbsp;&nbsp;<input
										type="radio" id="hot_level" name="sort" value="hot_value">按热门
								</form>
							</div>
							<ul class="index-list-content">
								<li data-uid="dfe7d4e88ccc3f7f4e3a5974">
									<div class="list-wrapper">
										<div class="list-item-title">
											<span class="idx">1</span> <span class="title-name"
												title="前门">前门</span>
										</div>
										<div class="list-item-level">
											<span class="hot-level-bg level-bg_4"></span> <span>当前:</span>
											<span class="hot-level-value level-value_4">拥挤</span>
										</div>

									</div>
									<div class="list-img">
										<img class="lazy-load" data-url=""
											src="${ctx}/source/js/hotspot/thumbnails.txt" onclick="">
									</div>
									<div class="list-clear"></div>
								</li>
								<li data-uid="7aea43b721dd95e17d29bda4">
									<div class="list-wrapper">
										<div class="list-item-title">
											<span class="idx">2</span> <span class="title-name"
												title="后海公园">后海公园</span>
										</div>
										<div class="list-item-level">
											<span class="hot-level-bg level-bg_3"></span> <span>当前:</span>
											<span class="hot-level-value level-value_3">一般</span>
										</div>

									</div>
									<div class="list-img">
										<img class="lazy-load" data-url=""
											src="${ctx}/source/js/hotspot/thumbnails(1).txt" onclick="">
									</div>
									<div class="list-clear"></div>
								</li>
								<li data-uid="49d959381b59a043c61e5102">
									<div class="list-wrapper">
										<div class="list-item-title">
											<span class="idx">3</span> <span class="title-name"
												title="北海公园">北海公园</span>
										</div>
										<div class="list-item-level">
											<span class="hot-level-bg level-bg_3"></span> <span>当前:</span>
											<span class="hot-level-value level-value_3">一般</span>
										</div>

									</div>
									<div class="list-img">
										<img class="lazy-load" data-url=""
											src="${ctx}/source/js/hotspot/thumbnails(2).txt"
											onclick="ccStat">
									</div>
									<div class="list-clear"></div>
								</li>
								<li data-uid="a5097bfa3a635763f03cba06">
									<div class="list-wrapper">
										<div class="list-item-title">
											<span class="idx">4</span> <span class="title-name"
												title="首都博物馆">首都博物馆</span>
										</div>
										<div class="list-item-level">
											<span class="hot-level-bg level-bg_2"></span> <span>当前:</span>
											<span class="hot-level-value level-value_2">舒适</span>
										</div>

									</div>
									<div class="list-img">
										<img class="lazy-load" data-url=""
											src="${ctx}/source/js/hotspot/thumbnails(3).txt" onclick="">
									</div>
									<div class="list-clear"></div>
								</li>
								<li data-uid="db1f39d42752aa6ff5c59cd1">
									<div class="list-wrapper">
										<div class="list-item-title">
											<span class="idx">5</span> <span class="title-name"
												title="中国国家博物馆">中国国家博物馆</span>
										</div>
										<div class="list-item-level">
											<span class="hot-level-bg level-bg_2"></span> <span>当前:</span>
											<span class="hot-level-value level-value_2">舒适</span>
										</div>

									</div>
									<div class="list-img">
										<img class="lazy-load" data-url=""
											src="${ctx}/source/js/hotspot/thumbnails(4).txt" onclick="">
									</div>
									<div class="list-clear"></div>
								</li>
								<li data-uid="2bc817dd9172c47ef21937c2">
									<div class="list-wrapper">
										<div class="list-item-title">
											<span class="idx">6</span> <span class="title-name"
												title="农业展览馆">农业展览馆</span>
										</div>
										<div class="list-item-level">
											<span class="hot-level-bg level-bg_2"></span> <span>当前:</span>
											<span class="hot-level-value level-value_2">舒适</span>
										</div>

									</div>
									<div class="list-img">
										<img class="lazy-load" data-url=""
											src="${ctx}/source/js/hotspot/thumbnails(5).txt" onclick="">
									</div>
									<div class="list-clear"></div>
								</li>
								<li data-uid="e2c734e489d8d15d15a190d1">
									<div class="list-wrapper">
										<div class="list-item-title">
											<span class="idx">7</span> <span class="title-name"
												title="中山公园">中山公园</span>
										</div>
										<div class="list-item-level">
											<span class="hot-level-bg level-bg_2"></span> <span>当前:</span>
											<span class="hot-level-value level-value_2">舒适</span>
										</div>

									</div>
									<div class="list-img">
										<img class="lazy-load" data-url=""
											src="${ctx}/source/js/hotspot/thumbnails(6).txt" onclick="">
									</div>
									<div class="list-clear"></div>
								</li>
								<li data-uid="d5f93c0e977e385feddfca27">
									<div class="list-wrapper">
										<div class="list-item-title">
											<span class="idx">8</span> <span class="title-name"
												title="八达岭长城">八达岭长城</span>
										</div>
										<div class="list-item-level">
											<span class="hot-level-bg level-bg_2"></span> <span>当前:</span>
											<span class="hot-level-value level-value_2">舒适</span>
										</div>

									</div>
									<div class="list-img">
										<img class="lazy-load" data-url=""
											src="${ctx}/source/js/hotspot/thumbnails(7).txt" onclick="">
									</div>
									<div class="list-clear"></div>
								</li>
								<li data-uid="2949a58c58499370a1d230e5">
									<div class="list-wrapper">
										<div class="list-item-title">
											<span class="idx">9</span> <span class="title-name"
												title="中央电视塔">中央电视塔</span>
										</div>
										<div class="list-item-level">
											<span class="hot-level-bg level-bg_2"></span> <span>当前:</span>
											<span class="hot-level-value level-value_2">舒适</span>
										</div>

									</div>
									<div class="list-img">
										<img class="lazy-load" data-url=""
											src="${ctx}/source/js/hotspot/thumbnails(8).txt" onclick="">
									</div>
									<div class="list-clear"></div>
								</li>
								<li data-uid="2a7a25ecf9cf13636d3e1bad">
									<div class="list-wrapper">
										<div class="list-item-title">
											<span class="idx">10</span> <span class="title-name"
												title="颐和园">颐和园</span>
										</div>
										<div class="list-item-level">
											<span class="hot-level-bg level-bg_2"></span> <span>当前:</span>
											<span class="hot-level-value level-value_2">舒适</span>
										</div>

									</div>
									<div class="list-img">
										<img class="lazy-load" data-url=""
											src="${ctx}/source/js/hotspot/thumbnails(9).txt" onclick="">
									</div>
									<div class="list-clear"></div>
								</li>
							</ul>
							<div id="__elm__4">
								<div id="index_list_page">
									<p class="index-page">
										<span class="cur-page">1</span><span><a
											class="sel-page" data-page="2" href="javascript:void(0)"
											tid="secPageNum">2</a></span><span><a class="sel-page"
											data-page="3" href="javascript:void(0)">3</a></span><span><a
											class="sel-page" data-page="4" href="javascript:void(0)">4</a></span><span><a
											class="next-page" data-page="2" href="javascript:void(0)"
											tid="toNextPage">下一页&gt;</a></span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="mapWrapper" style="height: 625px;">
			<div id="__elm__5">

				<div class="common-widget-map">
					<div class="map-holder" id="map-holder"
						style="height: 625px; overflow: hidden; position: relative; text-align: left; background-image: url(http://webmap0.map.bdimg.com/image/api/bg.png);">
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<img id="statImg" style="display: none">
	<script type="text/javascript">var BigPipe=function(){function parseJSON(json){return window.JSON?JSON.parse(json):eval("("+json+")")}function ajax(e,r,t){var a=new(window.XMLHttpRequest||ActiveXObject)("Microsoft.XMLHTTP");a.onreadystatechange=function(){4==a.readyState&&r(a.responseText)},a.open(t?"POST":"GET",e+"&t="+~~(1e6*Math.random()),!0),t&&a.setRequestHeader("Content-type","application/x-www-form-urlencoded"),a.setRequestHeader("X-Requested-With","XMLHttpRequest"),a.send(t)}function getCommentById(e){var r=document.getElementById(e);if(!r)return"";var t=r.firstChild.nodeValue;return t=t.substring(1,t.length-1).replace(/\\([\s\S]|$)/g,"$1"),r.parentNode.removeChild(r),t}function renderPagelet(e,r,t){if(!(e.id in t)){t[e.id]=!0,e.parent_id&&renderPagelet(r[e.parent_id],r,t);var a=document.getElementById(e.id);a||(a=document.createElement("div"),a.id=e.id,container?container.appendChild(a):document.body.appendChild(a)),a.innerHTML=e.html||getCommentById(e.html_id)}}function render(e){var r,t=pagelets.length,a={},n={},e=e||{};for(r=0;t>r;r++){var o=pagelets[r];a[o.id]=o}for(r=0;t>r;r++)renderPagelet(pagelets[r],a,n);e.trigger===!0&&trigger("pagerendercomplete",{url:pageUrl,resource:resource})}function process(e,r){function t(){var t=getNeedLoad(e.js);if(e.style){var a=document.createElement("style");a.innerHTML=e.style,document.getElementsByTagName("head")[0].appendChild(a)}r(),t?LazyLoad.js(t,function(){recordLoaded(t),e.script&&window.eval(e.script),trigger("onpageloaded")}):(e.script&&window.eval(e.script),trigger("onpageloaded"))}e.async&&require.resourceMap(e.async);var a=getNeedLoad(e.css);a?LazyLoad.css(a.reverse(),function(){recordLoaded(a),t()}):t()}function getNeedLoad(e){var r=[];if("string"==typeof e)r=[e];else if("[object Array]"===Object.prototype.toString.call(e))for(var t=0;t<e.length;t++)loadedResource[e[t]]!==LOADED&&r.push(e[t]);return 0===r.length&&(r=null),r}function recordLoaded(e){var r=e;"string"==typeof r&&(r=[r]);for(var t=0;t<r.length;t++)loadedResource[e[t]]=LOADED}function register(e){process(e,function(){render({trigger:!0}),"function"==typeof onReady&&onReady()})}function fetch(e,r,t,a){var n,o=location.href,t=t||{},i={};containerId=r;var c=function(t,n){if(o===location.href&&r==containerId){pageUrl=e;var i=parseJSON(t);resource=i,trigger("pagearrived",n),onPagelets(i,r,a)}};isCacheAvailable(e)&&t.cache!==!1&&!isDisableCached(e)?(n=getCachedResource(e),i.initiator=initiatorType.FROM_CACHE,statRecord(e),c(n,i)):(t.cache===!1&&disableCache(e),ajax(e,function(r){i.initiator=initiatorType.QUICKLING,addResourceToCache(e,r),c(r,i)}))}function isDisableCached(e){return 1===disabledCacheResource[e]}function disableCache(e){"string"==typeof e&&(disabledCacheResource[e]=1)}function refresh(e,r,t,a){fetch(e,r,t,a)}function asyncLoad(e,r,t){e instanceof Array||(e=[e]),r=r||{};var a,n=[],o=location.href,i=r.param?"&"+r.param:"",c="string"==typeof r.url?r.url:location.href.split("#")[0];for(a=e.length-1;a>=0;a--){var s=e[a].id;if(!s)throw Error("[BigPipe] missing pagelet id");n.push("pagelets[]="+s)}c=c.replace(/\/$/,"")+"&"+n.join("&")+"&force_mode=1&fis_widget=true"+i,ajax(c,function(e){if(o===location.href){var r=parseJSON(e);resource=r,pageUrl=c,pagelets=r.pagelets,process(r.resource_map,function(){render(),"function"==typeof t&&t()})}})}function statRecord(){}function addResourceToCache(e,r){resourceCache[e]={data:r,time:(new Date).getTime()||Date.now()}}function getCachedResource(e){return resourceCache[e]?resourceCache[e].data:void 0}function isCacheAvailable(e){var r=(new Date).getTime()||Date.now();return!!resourceCache[e]&&r-resourceCache[e].time<=cacheMaxTime}function onPageletArrived(e){pagelets.push(e)}function onPagelets(e,r,t){e.title&&(document.title=e.title),container=document.getElementById(r),container.innerHTML="",pagelets=e.pagelets,process(e.resource_map,function(){t&&t(),render({trigger:!0})})}function onPageReady(e){onReady=e,trigger("pageready",pagelets)}function onPageChange(e){fetch(location.pathname+(location.search?location.search+"&":"?")+"pagelets="+e)}function trigger(e){var r=events[e];if(r)for(var t=SLICE.call(arguments,1),a=0,n=r.length;n>a;a++){var o=r[a];if(o.f.apply(o.o,t)===!1)break;}}function on(e,r,t){var a=events[e]||(events[e]=[]);a.push({f:r,o:t})}var pagelets=[],loadedResource={},container,containerId,pageUrl=location.pathname+(location.search?"?"+location.search:""),resource,resourceCache={},onReady,initiatorType={LANDING:0,QUICKLING:1,FROM_CACHE:2},LOADED=1,disabledCacheResource={},cacheMaxTime=3e5,SLICE=[].slice,events={};return{asyncLoad:asyncLoad,register:register,refresh:refresh,onPageReady:onPageReady,onPageChange:onPageChange,onPageletArrived:onPageletArrived,onPagelets:onPagelets,on:on,trigger:trigger}}();</script>
	<script type="text/javascript">var LazyLoad=function(e){function t(t,n){var s,r=e.createElement(t);for(s in n)n.hasOwnProperty(s)&&r.setAttribute(s,n[s]);return r}function n(e){var t,n,s=l[e];s&&(t=s.callback,n=s.urls,n.shift(),u=0,n.length||(t&&t.call(s.context,s.obj),l[e]=null,f[e].length&&r(e)))}function s(){var t=navigator.userAgent;o={async:e.createElement("script").async===!0},(o.webkit=/AppleWebKit\//.test(t))||(o.ie=/MSIE|Trident/.test(t))||(o.opera=/Opera/.test(t))||(o.gecko=/Gecko\//.test(t))||(o.unknown=!0)}function r(r,u,h,g,d){var p,y,b,k,v,m,j=function(){n(r)},w="css"===r,T=[];if(o||s(),u)if(u="string"==typeof u?[u]:u.concat(),w||o.async||o.gecko||o.opera)f[r].push({urls:u,callback:h,obj:g,context:d});else for(p=0,y=u.length;y>p;++p)f[r].push({urls:[u[p]],callback:p===y-1?h:null,obj:g,context:d});if(!l[r]&&(k=l[r]=f[r].shift())){for(i||(i=e.head||e.getElementsByTagName("head")[0]),v=k.urls,p=0,y=v.length;y>p;++p){if(m=v[p],w?b=o.gecko?t("style"):t("link",{href:m,rel:"stylesheet"}):(b=t("script",{src:m,type:"text/javascript",defer:!0}),b.async=!1),b.className="lazyload",b.setAttribute("charset","utf-8"),o.ie&&!w&&"onreadystatechange"in b&&!("draggable"in b))b.onreadystatechange=function(){/loaded|complete/.test(b.readyState)&&(b.onreadystatechange=null,j())};else if(w&&(o.gecko||o.webkit))if(o.webkit){var x;if(k.urls[p]=b.href,x=c()){p--,y=v.length;continue;}}else b.innerHTML='@import "'+m+'";',a(b);else b.onload=b.onerror=j;T.push(b)}for(p=0,y=T.length;y>p;++p)i.appendChild(T[p])}}function a(e){var t;try{t=!!e.sheet.cssRules}catch(s){return u+=1,void(200>u?setTimeout(function(){a(e)},50):t&&n("css"))}n("css")}function c(){var e,t=l.css,s=!1;if(t){for(e=h.length;--e>=0;)if(h[e].href===t.urls[0]){s=!0,n("css");break;}u+=1,t&&(200>u?setTimeout(c,50):n("css"))}return s}var o,i,l={},u=0,f={css:[],js:[]},h=e.styleSheets;return{css:function(e,t,n,s){r("css",e,t,n,s)},js:function(e,t,n,s){r("js",e,t,n,s)}}}(this.document);</script>
	<script type="text/javascript">
// 新创建地图
var map = new BMap.Map("map-holder");
var point = new BMap.Point(116.418261, 39.921984);
map.centerAndZoom(point, 15);             // 初始化地图，设置中心点坐标和地图级别
map.enableScrollWheelZoom();

var cityList = new BMapLib.CityList({
    map: map
});

cityList.getBusiness('中关村', function(json){
    console.log('商圈');
    console.log(json);
});

cityList.getSubAreaList(131, function(json){
    console.log('城市列表');
    console.log(json);
});
addHeatmap(map);

function addHeatmap(map){
	var points =[
	             {"lng":116.418261,"lat":39.921984,"count":50},
	             {"lng":116.423332,"lat":39.916532,"count":51},
	             {"lng":116.419787,"lat":39.930658,"count":15},
	             {"lng":116.418455,"lat":39.920921,"count":40},
	             {"lng":116.418843,"lat":39.915516,"count":100},
	             {"lng":116.42546,"lat":39.918503,"count":6},
	             {"lng":116.423289,"lat":39.919989,"count":18},
	             {"lng":116.418162,"lat":39.915051,"count":80},
	             {"lng":116.422039,"lat":39.91782,"count":11},
	             {"lng":116.41387,"lat":39.917253,"count":7},
	             {"lng":116.41773,"lat":39.919426,"count":42},
	             {"lng":116.421107,"lat":39.916445,"count":4},
	             {"lng":116.417521,"lat":39.917943,"count":27},
	             {"lng":116.419812,"lat":39.920836,"count":23},
	             {"lng":116.420682,"lat":39.91463,"count":60},
	             {"lng":116.415424,"lat":39.924675,"count":8},
	             {"lng":116.419242,"lat":39.914509,"count":15},
	             {"lng":116.422766,"lat":39.921408,"count":25},
	             {"lng":116.421674,"lat":39.924396,"count":21},
	             {"lng":116.427268,"lat":39.92267,"count":1},
	             {"lng":116.417721,"lat":39.920034,"count":51},
	             {"lng":116.412456,"lat":39.92667,"count":7},
	             {"lng":116.420432,"lat":39.919114,"count":11},
	             {"lng":116.425013,"lat":39.921611,"count":35},
	             {"lng":116.418733,"lat":39.931037,"count":22},
	             {"lng":116.419336,"lat":39.931134,"count":4},
	             {"lng":116.413557,"lat":39.923254,"count":5},
	             {"lng":116.418367,"lat":39.92943,"count":3},
	             {"lng":116.424312,"lat":39.919621,"count":100},
	             {"lng":116.423874,"lat":39.919447,"count":87},
	             {"lng":116.424225,"lat":39.923091,"count":32},
	             {"lng":116.417801,"lat":39.921854,"count":44},
	             {"lng":116.417129,"lat":39.928227,"count":21},
	             {"lng":116.426426,"lat":39.922286,"count":80},
	             {"lng":116.421597,"lat":39.91948,"count":32},
	             {"lng":116.423895,"lat":39.920787,"count":26},
	             {"lng":116.423563,"lat":39.921197,"count":17},
	             {"lng":116.417982,"lat":39.922547,"count":17},
	             {"lng":116.426126,"lat":39.921938,"count":25},
	             {"lng":116.42326,"lat":39.915782,"count":100},
	             {"lng":116.419239,"lat":39.916759,"count":39},
	             {"lng":116.417185,"lat":39.929123,"count":11},
	             {"lng":116.417237,"lat":39.927518,"count":9},
	             {"lng":116.417784,"lat":39.915754,"count":47},
	             {"lng":116.420193,"lat":39.917061,"count":52},
	             {"lng":116.422735,"lat":39.915619,"count":100},
	             {"lng":116.418495,"lat":39.915958,"count":46},
	             {"lng":116.416292,"lat":39.931166,"count":9},
	             {"lng":116.419916,"lat":39.924055,"count":8},
	             {"lng":116.42189,"lat":39.921308,"count":11},
	             {"lng":116.413765,"lat":39.929376,"count":3},
	             {"lng":116.418232,"lat":39.920348,"count":50},
	             {"lng":116.417554,"lat":39.930511,"count":15},
	             {"lng":116.418568,"lat":39.918161,"count":23},
	             {"lng":116.413461,"lat":39.926306,"count":3},
	             {"lng":116.42232,"lat":39.92161,"count":13},
	             {"lng":116.4174,"lat":39.928616,"count":6},
	             {"lng":116.424679,"lat":39.915499,"count":21},
	             {"lng":116.42171,"lat":39.915738,"count":29},
	             {"lng":116.417836,"lat":39.916998,"count":99},
	             {"lng":116.420755,"lat":39.928001,"count":10},
	             {"lng":116.414077,"lat":39.930655,"count":14},
	             {"lng":116.426092,"lat":39.922995,"count":16},
	             {"lng":116.41535,"lat":39.931054,"count":15},
	             {"lng":116.413022,"lat":39.921895,"count":13},
	             {"lng":116.415551,"lat":39.913373,"count":17},
	             {"lng":116.421191,"lat":39.926572,"count":1},
	             {"lng":116.419612,"lat":39.917119,"count":9},
	             {"lng":116.418237,"lat":39.921337,"count":54},
	             {"lng":116.423776,"lat":39.921919,"count":26},
	             {"lng":116.417694,"lat":39.92536,"count":17},
	             {"lng":116.415377,"lat":39.914137,"count":19},
	             {"lng":116.417434,"lat":39.914394,"count":43},
	             {"lng":116.42588,"lat":39.922622,"count":27},
	             {"lng":116.418345,"lat":39.919467,"count":8},
	             {"lng":116.426883,"lat":39.917171,"count":3},
	             {"lng":116.423877,"lat":39.916659,"count":34},
	             {"lng":116.415712,"lat":39.915613,"count":14},
	             {"lng":116.419869,"lat":39.931416,"count":12},
	             {"lng":116.416956,"lat":39.925377,"count":11},
	             {"lng":116.42066,"lat":39.925017,"count":38},
	             {"lng":116.416244,"lat":39.920215,"count":91},
	             {"lng":116.41929,"lat":39.915908,"count":54},
	             {"lng":116.422116,"lat":39.919658,"count":21},
	             {"lng":116.4183,"lat":39.925015,"count":15},
	             {"lng":116.421969,"lat":39.913527,"count":3},
	             {"lng":116.422936,"lat":39.921854,"count":24},
	             {"lng":116.41905,"lat":39.929217,"count":12},
	             {"lng":116.424579,"lat":39.914987,"count":57},
	             {"lng":116.42076,"lat":39.915251,"count":70},
	             {"lng":116.425867,"lat":39.918989,"count":8}];
	heatmapOverlay = new BMapLib.HeatmapOverlay({"radius":20});
	map.addOverlay(heatmapOverlay);
	heatmapOverlay.setDataSet({data:points,max:100});
	heatmapOverlay.show();
}

</script>

</body>
</html>