<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<!-- saved from url=(0032)http://bj.nuomi.com/all/396-1375 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="shortcut icon"
	href="http://bj.nuomi.com/static/common/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate">
<script async="" src="${ctx}/source/js/nuomi/dp.csp.min.js"></script>
<script async="" src="${ctx}/source/js/nuomi/dp.min.js"></script>
<script async="" src="${ctx}/source/js/nuomi/element.min.js"></script>
<script async="" src="${ctx}/source/js/nuomi/monkey.min.js"></script>
<script type="text/javascript" async=""
	src="${ctx}/source/js/nuomi/rt.js"></script>
<script src="${ctx}/source/js/nuomi/alog.min.js"></script>
<script src="${ctx}/source/js/nuomi/hm.js"></script>
<script async="" src="${ctx}/source/js/nuomi/alog.min(1).js"></script>

<script type="text/javascript" src="${ctx}/source/js/eye/api。js"></script>
<script type="text/javascript" src="${ctx}/source/js/eye/getscript.js"></script>
<script type="text/javascript" src="${ctx}/source/js/jquery-1.9.1.js"></script>
<script type="text/javascript"
	src="${ctx}/source/js/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript"
	src="${ctx}/source/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${ctx}/source/js/jquery.json-2.4.js"></script>
<script type="text/javascript" src="${ctx}/source/js/eye/placepoi.js"></script>
<script type="text/javascript"
	src="${ctx}/source/js/nuomi/city_list_513635c.js"></script>
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/nuomi/common_84beec6.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/nuomi/city_list_f046acb.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/eye/common.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/eye/home.css">
<style type="text/css">
.BMap_mask {
	background: transparent url(http://api0.map.bdimg.com/images/blank.gif);
}

.BMap_noscreen {
	display: none;
}

.BMap_button {
	cursor: pointer;
}

.BMap_zoomer {
	background-image: url(http://api0.map.bdimg.com/images/mapctrls1d3.gif);
	background-repeat: no-repeat;
	overflow: hidden;
	font-size: 1px;
	position: absolute;
	width: 7px;
	height: 7px;
}

.BMap_stdMpCtrl div {
	position: absolute;
}

.BMap_stdMpPan {
	width: 44px;
	height: 44px;
	overflow: hidden;
	background: url(http://api0.map.bdimg.com/images/mapctrls2d0.png)
		no-repeat;
}

.BMap_ie6 .BMap_stdMpPan {
	background: none;
}

.BMap_ie6 .BMap_smcbg {
	left: 0;
	width: 44px;
	height: 464px;
	filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="http://api0.map.bdimg.com/images/mapctrls2d0.png");
}

.BMap_ie6 .BMap_stdMpPanBg {
	z-index: -1;
}

.BMap_stdMpPan .BMap_button {
	height: 15px;
	width: 15px;
}

.BMap_panN, .BMap_panW, .BMap_panE, .BMap_panS {
	overflow: hidden;
}

.BMap_panN {
	left: 14px;
	top: 0;
}

.BMap_panW {
	left: 1px;
	top: 12px;
}

.BMap_panE {
	left: 27px;
	top: 12px;
}

.BMap_panS {
	left: 14px;
	top: 25px;
}

.BMap_stdMpZoom {
	top: 45px;
	overflow: hidden;
}

.BMap_stdMpZoom .BMap_button {
	width: 22px;
	height: 21px;
	left: 12px;
	overflow: hidden;
	background-image: url(http://api0.map.bdimg.com/images/mapctrls2d0.png);
	background-repeat: no-repeat;
	z-index: 10;
}

.BMap_ie6 .BMap_stdMpZoom .BMap_button {
	background: none;
}

.BMap_stdMpZoomIn {
	background-position: 0 -221px;
}

.BMap_stdMpZoomOut {
	background-position: 0 -265px;
}

.BMap_ie6 .BMap_stdMpZoomIn div {
	left: 0;
	top: -221px;
}

.BMap_ie6 .BMap_stdMpZoomOut div {
	left: 0;
	top: -265px;
}

.BMap_stdMpType4 .BMap_stdMpZoom .BMap_button {
	left: 0;
	overflow: hidden;
	background: -webkit-gradient(linear, 50% 0, 50% 100%, from(rgba(255, 255, 255, 0.85)),
		to(rgba(217, 217, 217, 0.85)));
	z-index: 10;
	-webkit-border-radius: 22px;
	width: 34px;
	height: 34px;
	border: 1px solid rgba(255, 255, 255, 0.5);
	-webkit-box-shadow: 0 2px 3.6px #CCC;
	display: -webkit-box;
	-webkit-box-align: center;
	-webkit-box-pack: center;
	-webkit-box-sizing: border-box;
}

.BMap_stdMpType4 .BMap_smcbg {
	position: static;
	background: url(http://api0.map.bdimg.com/images/mapctrls2d0_mb.png) 0 0
		no-repeat;
	-webkit-background-size: 24px 32px;
}

.BMap_stdMpType4 .BMap_stdMpZoomIn {
	background-position: 0 0;
}

.BMap_stdMpType4 .BMap_stdMpZoomIn .BMap_smcbg {
	width: 24px;
	height: 24px;
	background-position: 0 0;
}

.BMap_stdMpType4 .BMap_stdMpZoomOut {
	background-position: 0 0;
}

.BMap_stdMpType4 .BMap_stdMpZoomOut .BMap_smcbg {
	width: 24px;
	height: 6px;
	background-position: 0 -25px;
}

.BMap_stdMpSlider {
	width: 37px;
	top: 18px;
}

.BMap_stdMpSliderBgTop {
	left: 18px;
	width: 10px;
	overflow: hidden;
	background: url(http://api0.map.bdimg.com/images/mapctrls2d0.png)
		no-repeat -23px -226px;
}

.BMap_stdMpSliderBgBot {
	left: 19px;
	height: 8px;
	width: 10px;
	top: 124px;
	overflow: hidden;
	background: url(http://api0.map.bdimg.com/images/mapctrls2d0.png)
		no-repeat -33px bottom;
}

.BMap_ie6 .BMap_stdMpSliderBgTop, .BMap_ie6 .BMap_stdMpSliderBgBot {
	background: none;
}

.BMap_ie6 .BMap_stdMpSliderBgTop div {
	left: -23px;
	top: -226px;
}

.BMap_ie6 .BMap_stdMpSliderBgBot div {
	left: -33px;
	bottom: 0;
}

.BMap_stdMpSliderMask {
	height: 100%;
	width: 24px;
	left: 10px;
	cursor: pointer;
}

.BMap_stdMpSliderBar {
	height: 11px;
	width: 19px;
	left: 13px;
	top: 80px;
	overflow: hidden;
	background: url(http://api0.map.bdimg.com/images/mapctrls2d0.png)
		no-repeat 0 -309px;
}

.BMap_stdMpSliderBar.h {
	background: url(http://api0.map.bdimg.com/images/mapctrls2d0.png)
		no-repeat 0 -320px;
}

.BMap_ie6 .BMap_stdMpSliderBar, .BMap_ie6 .BMap_stdMpSliderBar.h {
	background: none;
}

.BMap_ie6 .BMap_stdMpSliderBar div {
	top: -309px;
}

.BMap_ie6 .BMap_stdMpSliderBar.h div {
	top: -320px;
}

.BMap_zlSt, .BMap_zlCity, .BMap_zlProv, .BMap_zlCountry {
	position: absolute;
	left: 34px;
	height: 21px;
	width: 28px;
	background-image: url(http://api0.map.bdimg.com/images/mapctrls2d0.png);
	background-repeat: no-repeat;
	font-size: 0;
	cursor: pointer;
}

.BMap_ie6 .BMap_zlSt, .BMap_ie6 .BMap_zlCity, .BMap_ie6 .BMap_zlProv,
	.BMap_ie6 .BMap_zlCountry {
	background: none;
	overflow: hidden;
}

.BMap_zlHolder {
	display: none;
	position: absolute;
	top: 0;
}

.BMap_zlHolder.hvr {
	display: block;
}

.BMap_zlSt {
	background-position: 0 -380px;
	top: 21px;
}

.BMap_zlCity {
	background-position: 0 -401px;
	top: 52px;
}

.BMap_zlProv {
	background-position: 0 -422px;
	top: 76px;
}

.BMap_zlCountry {
	background-position: 0 -443px;
	top: 100px;
}

.BMap_ie6 .BMap_zlSt div {
	top: -380px;
}

.BMap_ie6 .BMap_zlCity div {
	top: -401px;
}

.BMap_ie6 .BMap_zlProv div {
	top: -422px;
}

.BMap_ie6 .BMap_zlCountry div {
	top: -443px;
}

.BMap_stdMpType1 .BMap_stdMpSlider, .BMap_stdMpType2 .BMap_stdMpSlider,
	.BMap_stdMpType3 .BMap_stdMpSlider, .BMap_stdMpType4 .BMap_stdMpSlider,
	.BMap_stdMpType2 .BMap_stdMpZoom, .BMap_stdMpType3 .BMap_stdMpPan,
	.BMap_stdMpType4 .BMap_stdMpPan {
	display: none;
}

.BMap_stdMpType3 .BMap_stdMpZoom {
	top: 0;
}

.BMap_stdMpType4 .BMap_stdMpZoom {
	top: 0;
}

.BMap_cpyCtrl a {
	font-size: 11px;
	color: #7979CC;
}

.BMap_scaleCtrl {
	height: 23px;
	overflow: hidden;
}

.BMap_scaleCtrl div.BMap_scaleTxt {
	font-size: 11px;
	font-family: Arial, sans-serif;
}

.BMap_scaleCtrl div {
	position: absolute;
	overflow: hidden;
}

.BMap_scaleHBar img, .BMap_scaleLBar img, .BMap_scaleRBar img {
	position: absolute;
	width: 37px;
	height: 442px;
	left: 0;
}

.BMap_scaleHBar {
	width: 100%;
	height: 5px;
	font-size: 0;
	bottom: 0;
}

.BMap_scaleHBar img {
	top: -437px;
	width: 100%;
}

.BMap_scaleLBar, .BMap_scaleRBar {
	width: 3px;
	height: 9px;
	bottom: 0;
	font-size: 0;
	z-index: 1;
}

.BMap_scaleLBar img {
	top: -427px;
	left: 0;
}

.BMap_scaleRBar img {
	top: -427px;
	left: -5px;
}

.BMap_scaleLBar {
	left: 0;
}

.BMap_scaleRBar {
	right: 0;
}

.BMap_scaleTxt {
	text-align: center;
	width: 100%;
	cursor: default;
	line-height: 18px;
}

.BMap_omCtrl {
	background-color: #fff;
	overflow: hidden;
}

.BMap_omOutFrame {
	position: absolute;
	width: 100%;
	height: 100%;
	left: 0;
	top: 0;
}

.BMap_omInnFrame {
	position: absolute;
	border: 1px solid #999;
	background-color: #ccc;
	overflow: hidden;
}

.BMap_omMapContainer {
	position: absolute;
	overflow: hidden;
	width: 100%;
	height: 100%;
	left: 0;
	top: 0;
}

.BMap_omViewMv {
	border-width: 1px;
	border-style: solid;
	border-left-color: #84b0df;
	border-top-color: #adcff4;
	border-right-color: #274b8b;
	border-bottom-color: #274b8b;
	position: absolute;
	z-index: 600;
}

.BMap_omViewInnFrame {
	border: 1px solid #3e6bb8;
}

.BMap_omViewMask {
	width: 1000px;
	height: 1000px;
	position: absolute;
	left: 0;
	top: 0;
	background-color: #68c;
	opacity: .2;
	filter: progid:DXImageTransform.Microsoft.Alpha(opacity=20);
}

.BMap_omBtn {
	height: 13px;
	width: 13px;
	position: absolute;
	cursor: pointer;
	overflow: hidden;
	background: url(http://api0.map.bdimg.com/images/mapctrls1d3.gif)
		no-repeat;
	z-index: 1210;
}

.anchorBR .BMap_omOutFrame {
	border-top: 1px solid #999;
	border-left: 1px solid #999;
}

.quad4 .BMap_omBtn {
	background-position: -26px -27px;
}

.quad4 .BMap_omBtn.hover {
	background-position: 0 -27px;
}

.quad4 .BMap_omBtn.BMap_omBtnClosed {
	background-position: -39px -27px;
}

.quad4 .BMap_omBtn.BMap_omBtnClosed.hover {
	background-position: -13px -27px;
}

.anchorTR .BMap_omOutFrame {
	border-bottom: 1px solid #999;
	border-left: 1px solid #999;
}

.quad1 .BMap_omBtn {
	background-position: -39px -41px;
}

.quad1 .BMap_omBtn.hover {
	background-position: -13px -41px;
}

.quad1 .BMap_omBtn.BMap_omBtnClosed {
	background-position: -26px -41px;
}

.quad1 .BMap_omBtn.BMap_omBtnClosed.hover {
	background-position: 0 -41px;
}

.anchorBL .BMap_omOutFrame {
	border-top: 1px solid #999;
	border-right: 1px solid #999;
}

.quad3 .BMap_omBtn {
	background-position: -27px -40px;
}

.quad3 .BMap_omBtn.hover {
	background-position: -1px -40px;
}

.quad3 .BMap_omBtn.BMap_omBtnClosed {
	background-position: -40px -40px;
}

.quad3 .BMap_omBtn.BMap_omBtnClosed.hover {
	background-position: -14px -40px;
}

.anchorTL .BMap_omOutFrame {
	border-bottom: 1px solid #999;
	border-right: 1px solid #999;
}

.quad2 .BMap_omBtn {
	background-position: -40px -28px;
}

.quad2 .BMap_omBtn.hover {
	background-position: -14px -28px;
}

.quad2 .BMap_omBtn.BMap_omBtnClosed {
	background-position: -27px -28px;
}

.quad2 .BMap_omBtn.BMap_omBtnClosed.hover {
	background-position: -1px -28px;
}

.anchorR .BMap_omOutFrame {
	border-bottom: 1px solid #999;
	border-left: 1px solid #999;
	border-top: 1px solid #999;
}

.anchorL .BMap_omOutFrame {
	border-bottom: 1px solid #999;
	border-right: 1px solid #999;
	border-top: 1px solid #999;
}

.anchorB .BMap_omOutFrame {
	border-top: 1px solid #999;
	border-left: 1px solid #999;
	border-right: 1px solid #999;
}

.anchorT .BMap_omOutFrame {
	border-bottom: 1px solid #999;
	border-right: 1px solid #999;
	border-left: 1px solid #999;
}

.anchorNon .BMap_omOutFrame, .withOffset .BMap_omOutFrame {
	border: 1px solid #999;
}

.BMap_zoomMask0, .BMap_zoomMask1 {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background: transparent url(http://api0.map.bdimg.com/images/blank.gif);
	z-index: 1000;
}

.BMap_contextMenu {
	position: absolute;
	border-top: 1px solid #adbfe4;
	border-left: 1px solid #adbfe4;
	border-right: 1px solid #8ba4d8;
	border-bottom: 1px solid #8ba4d8;
	padding: 0;
	margin: 0;
	width: auto;
	visibility: hidden;
	background: #fff;
	z-index: 10000000;
}

.BMap_cmShadow {
	position: absolute;
	background: #000;
	opacity: .3;
	filter: alpha(opacity = 30);
	visibility: hidden;
	z-index: 9000000;
}

div.BMap_cmDivider {
	border-bottom: 1px solid #adbfe4;
	font-size: 0;
	padding: 1px;
	margin: 0 6px;
}

div.BMap_cmFstItem {
	margin-top: 2px;
}

div.BMap_cmLstItem {
	margin-bottom: 2px;
}

.BMap_shadow img {
	border: 0 none;
	margin: 0;
	padding: 0;
	height: 370px;
	width: 1144px;
}

.BMap_pop .BMap_top {
	border-top: 1px solid #ababab;
	background-color: #fff;
}

.BMap_pop .BMap_center {
	border-left: 1px solid #ababab;
	border-right: 1px solid #ababab;
	background-color: #fff;
}

.BMap_pop .BMap_bottom {
	border-bottom: 1px solid #ababab;
	background-color: #fff;
}

.BMap_shadow, .BMap_shadow img, .BMap_shadow div {
	-moz-user-select: none;
	-webkit-user-select: none;
}

.BMap_checkbox {
	background: url(http://api0.map.bdimg.com/images/mapctrls1d3.gif);
	vertical-align: middle;
	display: inline-block;
	width: 11px;
	height: 11px;
	margin-right: 4px;
	background-position: -14px 90px;
}

.BMap_checkbox.checked {
	background-position: -2px 90px;
}

.BMap_pop .BMap_top img, .BMap_pop .BMap_center img, .BMap_pop .BMap_bottom img
	{
	display: none;
}

@media print {
	.BMap_noprint {
		display: none;
	}
	.BMap_noscreen {
		display: block;
	}
	.BMap_mask {
		background: none;
	}
	.BMap_pop .BMap_top img, .BMap_pop .BMap_center img, .BMap_pop .BMap_bottom img
		{
		display: block;
	}
}

.BMap_vectex {
	cursor: pointer;
	width: 11px;
	height: 11px;
	position: absolute;
	background-repeat: no-repeat;
	background-position: 0 0;
}

.BMap_vectex_nodeT {
	background-image: url(http://api0.map.bdimg.com/images/nodeT.gif);
}

.BMap_vectex_node {
	background-image: url(http://api0.map.bdimg.com/images/node.gif);
}

.iw {
	width: 100%;
	-webkit-box-sizing: border-box;
	border: .3em solid transparent;
	-webkit-background-clip: padding;
}

.iw_rt {
	position: relative;
	height: 46px;
	width: 195px;
	-webkit-box-sizing: border-box;
	display: -webkit-box;
	-webkit-box-align: center;
	margin: 2px 5px 0 2px;
	background-color: rgba(0, 0, 0, 0.8);
	-webkit-box-shadow: 2px 2px 7px rgba(0, 0, 0, 0.3);
	-webkit-border-radius: 2px;
	color: #fff;
}

.iw_rt:after {
	content: "";
	position: absolute;
	left: 50%;
	bottom: -8px;
	width: 0;
	height: 0;
	border-left: 5px solid transparent;
	border-top: 8px solid rgba(0, 0, 0, 0.8);
	border-right: 5px solid transparent;
	margin: 0 0 0 -6px;
}

.iw_s {
	text-align: center;
	vertical-align: middle;
	height: 100%;
	-webkit-box-sizing: border-box;
}

.iw_rt .iw_s1 {
	color: #cbcbcb;
}

.iw_rt b {
	color: #fff;
	font-weight: bold;
}

.iw_rt_gr {
	margin-left: -4px;
}

.iw_busline {
	margin: 32px 0 0 -3px;
}

.iw_busline .iw_cc {
	text-align: center;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
	padding: 0 6px;
}

.iw_r {
	-webkit-box-ordinal-group: 3;
}

.iw_r, .iw_l {
	height: 100%;
	font-size: 4.5em;
	text-align: center;
	color: #747474;
	border: none;
	-webkit-box-sizing: border-box;
	-webkit-border-radius: 0;
	line-height: .7em;
	border: 1px solid rgba(255, 255, 255, 0.2);
	width: 41px;
}

.iw_r {
	border-style: none none none solid;
}

.iw_l {
	border-style: none solid none none;
}

.iw_search, .iw_l {
	background:
		url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAlCAYAAAAuqZsAAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ bWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6 eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNl SUQ9InhtcC5paWQ6QjA3NjMyREJDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiIHhtcE1NOkRvY3Vt ZW50SUQ9InhtcC5kaWQ6QjA3NjMyRENDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiPiA8eG1wTU06 RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCMDc2MzJEOUM3NDYxMUUxOUFB QzlDOUJENkY4NkJCRiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCMDc2MzJEQUM3NDYxMUUx OUFBQzlDOUJENkY4NkJCRiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1w bWV0YT4gPD94cGFja2V0IGVuZD0iciI/PllB9T8AAAKuSURBVHjaxFjRcdpAEAX+mVEqiFxB5AoQ HZAKElcArsBWBSgVQCoAVwCuwEoFlivwGQpI7jKrzGXn7ep0EsPO7BjLp/O73bdv9xifTqdRpCXW c+sz65n1lNy3mvzZemX9aN34C6bTKdx8HAHMgVlaX0QeaGv9J4EcBJgD9EA/hzAH7N4Cq/oAW1tf KX+vKEXP7PlMSLFvhQX32BWY49GBOIRO7FKy57wBlnoUQHu5yJX+g4mymdvgFWzkAM3JtwGgmiJw a2/pvQoEYBQCLKNI8RfuaeNjT245gAUdqgHdmkqUPiOctLdJVYkithkAVO/K5cC+M30KAZVSxboo /ybnn1eIR5r5qUyI7P4GX6nqJHskbQsxQ7wqu6aSn2qrgHLrXjqAat5ZC0WlRuzVE0J3uhtBCjRt a3qjX92JIMiOIqYtYgumzpo+7RRtu/E0zvknokMF5GgdQv4Ze/5DWL8CFVe2aNuedGsLCi1vS+WL F4WKNkL2Dnh414FnO1b1R5vKuRaxjKUF2YKBqjuCGtF6nyL5+XxOJWCcL2/CpjzdRYRuGpDShQQs ARUj9U/OnRh7Yr9/CW1JXU4fYxXoHIMCu+iB+gBLIt/LgShDYCYktGCDfCBgvyRgVQgZwTy/jIzy EnQNMZV1QCT4bJ+3XFCkS81/WijdkiYAdSak04BWtabWEmIbsNZYgU00YE+gjyErQeo31GpShVMH Yc+/dwsEzh97/D6ojT2ZMlM1XwN8WP9Ma7NAbZvbtBoEjE+jBT2TusCu5SIbI7z/wLWN1rdKi0o6 cqwTuAmYyTm5NQW/82atWvlnBbo7apxD98qDJxl7mkC76JQ2Qm0CI1xKF95Gb4oLXHJDwJlxjy/u LgruGtNFM8lqnNtfK2JqN3CVeW1gzWj9jThd0xd59R8BBgAAiefGO1Bt1gAAAABJRU5ErkJggg==")
		no-repeat 50% 50%;
	-webkit-background-size: 19px 19px;
}

.iw_line_s, .iw_r {
	background:
		url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACUAAAAmCAYAAABDClKtAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ bWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6 eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNl SUQ9InhtcC5paWQ6QjA3NjMyREZDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiIHhtcE1NOkRvY3Vt ZW50SUQ9InhtcC5kaWQ6QjA3NjMyRTBDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiPiA8eG1wTU06 RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCMDc2MzJEREM3NDYxMUUxOUFB QzlDOUJENkY4NkJCRiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCMDc2MzJERUM3NDYxMUUx OUFBQzlDOUJENkY4NkJCRiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1w bWV0YT4gPD94cGFja2V0IGVuZD0iciI/PqheQ+MAAAEtSURBVHja7JftDYIwEIbB8JeEUXACZQPd oGygE+gGxAnQEZzAOgEdwREIDKBXUgjBIqW5Npj0kvcHpG0erveFX1WVZ8l2oBhEhRoLw/BroW8J KgeR3vMVlI5BrSwAHQZAnngmYxtMe4oIL41ZAp6iNqF4/BQTa0oBxmxAcaAHKFJY+wKtAaw0CRUJ oHjGHiY8VpqCKmYCdRkJUKmJ7Ms1gZqkqOs6w/bUGXRCOGePCcXjaItwDsW8PoZ0zhM70IeeyiZi jH/Isf+CF9MAOdCppDj+LJ6yim6j9802B6VqQa818BFjY6AHakHp9Crj15ctCaiFIi7Q/wCKLRHq vjSoVNKWunH4rTBDv5Cv7NKeKfvvU2nINzHAuexzUA7KQTkoB6UxDicKvc+qfQQYABaiUBxugCsr AAAAAElFTkSuQmCC")
		no-repeat 50% 50%;
	-webkit-background-size: 19px 19px;
}

.iw_line {
	height: 64px;
	width: 228px;
	padding: 0 11px;
	line-height: 20px;
}

.iw_bustrans .iw_cc {
	text-align: center;
}

.iw_c {
	color: #FFFFFF;
	text-decoration: none;
	overflow: hidden;
	display: -webkit-box;
	-webkit-box-align: center;
	-webkit-box-flex: 1;
}

.iw_cc {
	-webkit-box-sizing: border-box;
	width: 100%;
	border: none;
}

.gray_background {
	filter: alpha(opacity = 50);
	-moz-opacity: 0.5;
	-khtml-opacity: 0.5;
	opacity: 0.5
}

.light_gray_background {
	filter: alpha(opacity = 70);
	-moz-opacity: 0.7;
	-khtml-opacity: 0.7;
	opacity: 0.7
}

.panoInfoBox {
	cursor: pointer;
}

.panoInfoBox {
	position: relative;
	width: 323px;
	height: 101px;
	margin-bottom: 4px;
	cursor: pointer;
}

.panoInfoBox .panoInfoBoxTitleBg {
	width: 323px;
	height: 19px;
	position: absolute;
	left: 0;
	bottom: 0;
	z-index: 2;
	background-color: #000;
	opacity: .7;
}

.panoInfoBox .panoInfoBoxTitleContent {
	font-size: 12px;
	color: #fff;
	position: absolute;
	bottom: 2px;
	left: 5px;
	z-index: 3;
	text-decoration: none;
}

.RouteAddressOuterBkg {
	position: relative;
	padding: 32px 4px 4px 3px;
	background-color: #ffdd99;
}

.RouteAddressInnerBkg {
	padding: 3px 5px 8px 8px;
	background-color: #ffffff;
}

#RouteAddress_DIV1 {
	margin-top: 5px;
}

.RouteAddressTip {
	position: absolute;
	width: 100%;
	top: 0px;
	text-align: center;
	height: 30px;
	line-height: 30px;
	color: #994c00;
}

.route_tip_con {
	position: absolute;
	top: 145px;
}

.route_tip_con .route_tip {
	position: absolute;
	width: 233px;
	height: 29px;
	color: #803300;
	text-align: center;
	line-height: 29px;
	border: #cc967a solid 1px;
	background: #fff2b2;
	z-index: 100000;
}

.route_tip_con .route_tip span {
	position: absolute;
	top: 0;
	right: 0;
	_right: -1px;
	width: 14px;
	height: 13px;
	background:
		url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107)
		no-repeat 0 -121px;
	cursor: pointer;
}

.route_tip_con .route_tip_shadow {
	width: 233px;
	height: 29px;
	position: absolute;
	left: 1px;
	top: 1px;
	background: #505050;
	border: 1px solid #505050;
	opacity: 0.2;
	filter: alpha(opacity = 20)
}

.sel_body_body_page {
	margin: 5px 0
}

.sel_n {
	margin-top: 5px;
	overflow: hidden;
}

.sel_n .sel_top {
	background: url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0
		-418px;
	height: 4px;
	font-size: 0px;
}

.sel_n .sel_body_top {
	height: 32px;
	width: 100%;
	background:
		url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107)
		no-repeat 0 -41px;
}

.sel_n .sel_body_title {
	float: left;
	width: 100%;
	height: 31px;
}

.sel_n .sel_body_sign {
	margin-top: 1px;
	width: 30px;
	height: 31px;
	float: left;
	background: url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat
		-79px -387px;
}

.sel_n .sel_body_name {
	height: 10px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	margin: 0 20px 0 30px;
	padding: 8px 7px 7px;
	font-size: 14px;
	color: #FA8722;
}

.sel_n .sel_body_button {
	float: left;
	width: 55px;
	margin-left: -55px;
	padding-top: 8px;
}

.sel_n .sel_body_button a {
	
}

.sel_n .sel_bottom {
	background: url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0
		-415px;
	height: 4px;
	font-size: 0px;
}

.sel_n .sel_body_body {
	padding: 3px 0 0 0
}

.sel_n1 {
	margin-top: 5px;
	width: 329px;
	overflow: hidden;
}

.sel_n1 .sel_top {
	background: url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0
		-418px;
	height: 4px;
	font-size: 0px;
}

.sel_n1 .sel_body_top {
	height: 31px;
	width: 100%;
	background: url(http://api0.map.bdimg.com/images/sel_body_n_top.gif)
		repeat-x;
}

.sel_n1 .sel_body_top {
	height: 32px;
	width: 100%;
	background:
		url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107)
		no-repeat 0 -41px
}

.sel_n1 .sel_body_title {
	float: left;
	width: 100%;
	height: 31px;
	cursor: pointer;
}

.sel_n1 .sel_body_sign {
	margin-top: 1px;
	width: 30px;
	height: 31px;
	float: left;
	background: url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat
		-79px -387px;
}

.sel_n1 .sel_body_name {
	margin: 0 20px 0 30px;
	padding: 8px 7px 7px;
	font-size: 14px;
	color: #FA8722;
}

.sel_n1 .sel_body_button {
	float: left;
	width: 20px;
	height: 31px;
	margin-left: -23px;
	background: url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat
		-253px -382px;
	overflow: hidden;
	zoom: 1;
	cursor: pointer;
}

.sel_n1 .sel_body_button a {
	display: none;
}

.sel_n1 .sel_body_body {
	display: none
}

.sel_n1 .sel_bottom {
	background: url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0
		-415px;
	height: 4px;
	font-size: 0px;
}

.sel_y {
	margin-top: 5px;
	overflow: hidden;
}

.sel_y .sel_top {
	background: url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0
		-439px;
	height: 4px;
	zoom: 1;
	font-size: 0px;
}

.sel_y .sel_body_top {
	height: 32px;
	width: 100%;
	background:
		url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107)
		no-repeat 0 0
}

.sel_y .sel_body_title {
	float: left;
	width: 100%;
	height: 31px;
	cursor: pointer;
}

.sel_y .sel_body_sign {
	margin-top: 1px;
	width: 30px;
	height: 31px;
	float: left;
	background: url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat
		-167px -384px;
}

.sel_y .sel_body_name {
	margin: 0 20px 0 30px;
	padding: 8px 7px 7px;
	font-size: 14px;
	color: #5B7BCB;
}

.sel_y .sel_body_button {
	float: left;
	width: 20px;
	height: 31px;
	margin-left: -20px;
	background: url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat
		-269px -297px;
	cursor: pointer;
}

.sel_y .sel_body_button a {
	display: none;
}

.sel_y .sel_body_body {
	display: none;
	height: 0px
}

.sel_y .sel_body_body_div {
	
}

.sel_y .sel_bottom {
	background: url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0
		-436px;
	height: 4px;
	font-size: 0px;
}

.sel_y .sel_body_body_page {
	display: none;
	height: 0px;
}

.sel_x {
	margin-top: 5px;
	width: 329px;
	overflow: hidden;
}

.sel_x .sel_top {
	background: url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0
		-418px;
	height: 4px;
	font-size: 0px;
}

.sel_x .sel_body_top {
	height: 32px;
	width: 100%;
	background:
		url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107)
		no-repeat 0 -41px;
}

.sel_x .sel_body_title {
	float: left;
	width: 100%;
	height: 31px;
}

.sel_x .sel_body_sign {
	margin-top: 1px;
	width: 30px;
	height: 31px;
	float: left;
	background: url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat
		-122px -384px;
}

.sel_x .sel_body_name {
	margin: 0 20px 0 30px;
	padding: 8px 7px 7px;
	font-size: 14px;
	color: #FA8722;
}

.sel_x .sel_body_button {
	float: left;
	width: 55px;
	margin-left: -55px;
	padding-top: 8px;
}

.sel_x .sel_body_button a {
	
}

.sel_x .sel_body_body {
	
}

.sel_x .sel_body_body_div {
	padding: 5px 5px 0 5px;
}

.sel_x .sel_bottom {
	background: url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0
		-415px;
	height: 4px;
	font-size: 0px;
}

.sel_x1 {
	margin-top: 5px;
	width: 329px;
	overflow: hidden;
}

.sel_x1 .sel_top {
	background: url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0
		-418px;
	height: 4px;
	font-size: 0px;
}

.sel_x1 .sel_body_top {
	height: 32px;
	width: 100%;
	background:
		url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107)
		no-repeat 0 -41px
}

.sel_x1 .sel_body_title {
	float: left;
	width: 100%;
	height: 31px;
	cursor: pointer;
}

.sel_x1 .sel_body_sign {
	margin-top: 1px;
	width: 30px;
	height: 31px;
	float: left;
	background: url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat
		-122px -384px;
}

.sel_x1 .sel_body_name {
	margin: 0 20px 0 30px;
	padding: 8px 7px 7px;
	font-size: 14px;
	color: #FA8722;
}

.sel_x1 .sel_body_button {
	float: left;
	width: 55px;
	height: 31px;
	margin-left: -55px;
}

.sel_x1 .sel_body_button a {
	display: none;
}

.sel_x1 .sel_body_body {
	display: none;
	height: 0px;
}

.sel_x1 .sel_body_body_div {
	padding: 5px 5px 0 5px;
}

.sel_x1 .sel_bottom {
	background: url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0
		-415px;
	height: 4px;
	font-size: 0px;
}

.sel_body_citylist {
	height: 100px;
	padding: 0 0 0 5px
}

.sel_body_resitem {
	table-layout: fixed;
	overflow-x: hidden;
	overflow-y: hidden;
}

.sel_body_resitem table {
	margin-right: 5px;
}

.sel_body_resitem tr {
	cursor: pointer;
}

.sel_body_resitem th {
	padding-top: 5px;
	padding-left: 5px;
	text-align: left;
	vertical-align: top;
	width: 22px;
}

.sel_body_resitem th div.iconbg {
	background: url(http://api0.map.bdimg.com/images/markers_new_ie6.png)
		no-repeat scroll 0 0;
	height: 29px;
	width: 24px;
}

.sel_body_resitem th div.icon {
	cursor: pointer
}

.sel_body_resitem th div#no_0_1, .sel_body_resitem th div#no_1_1 {
	background-position: 0 -64px
}

.sel_body_resitem th div#no_0_2, .sel_body_resitem th div#no_1_2 {
	background-position: -24px -64px
}

.sel_body_resitem th div#no_0_3, .sel_body_resitem th div#no_1_3 {
	background-position: -48px -64px
}

.sel_body_resitem th div#no_0_4, .sel_body_resitem th div#no_1_4 {
	background-position: -72px -64px
}

.sel_body_resitem th div#no_0_5, .sel_body_resitem th div#no_1_5 {
	background-position: -96px -64px
}

.sel_body_resitem th div#no_0_6, .sel_body_resitem th div#no_1_6 {
	background-position: -120px -64px
}

.sel_body_resitem th div#no_0_7, .sel_body_resitem th div#no_1_7 {
	background-position: -144px -64px
}

.sel_body_resitem th div#no_0_8, .sel_body_resitem th div#no_1_8 {
	background-position: -168px -64px
}

.sel_body_resitem th div#no_0_9, .sel_body_resitem th div#no_1_9 {
	background-position: -192px -64px
}

.sel_body_resitem th div#no_0_10, .sel_body_resitem th div#no_1_10 {
	background-position: -216px -64px
}

.sel_body_resitem td {
	line-height: 160%;
	padding: 3px 0 3px 3px;
	vertical-align: top;
}

.sel_body_resitem div.ra_td_title {
	float: left;
	margin-right: 40px;
}

.sel_body_resitem div.ra_td_button {
	float: right;
	width: 40px;
}

.sel_body_resitem div.ra_td_button input {
	height: 18px;
	font-size: 12px;
	width: 40px;
}

.sel_body_resitem div.clear {
	clear: both;
	height: 0px;
	width: 100%;
}

.sel_body_resitem td .selBtn {
	width: 70px;
	height: 29px;
	background:
		url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107)
		no-repeat -21px -81px;
	text-align: center;
	line-height: 29px;
	visibility: hidden;
	color: #b35900;
	display: inline-block;
	*display: inline;
	*zoom: 1;
}

.sel_body_resitem td .list_street_view_poi {
	display: inline-block;
	float: none;
	margin-right: 6px;
	position: static;
	*vertical-align: -3px;
	_vertical-align: -5px;
	*display: inline;
	*zoom: 1;
}

.selInfoWndBtn {
	width: 70px;
	height: 29px;
	background:
		url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107)
		no-repeat -21px -81px;
	text-align: center;
	line-height: 29px;
	margin: 0 auto;
	cursor: pointer;
	color: #b35900
}

.sel_body_body td a {
	text-decoration: none;
	cursor: auto;
}

.sel_body_body td a:hover, .sel_body_body td a:focus {
	text-decoration: underline;
}

.panoInfoBox {
	cursor: pointer
}

.panoInfoBox {
	position: relative;
	width: 323px;
	height: 101px;
	margin-bottom: 4px;
	cursor: pointer
}

.panoInfoBox .panoInfoBoxTitleBg {
	width: 323px;
	height: 19px;
	position: absolute;
	left: 0;
	bottom: 0;
	z-index: 2;
	background-color: #000;
	opacity: .7
}

.panoInfoBox .panoInfoBoxTitleContent {
	font-size: 12px;
	color: #fff;
	position: absolute;
	bottom: 2px;
	left: 5px;
	z-index: 3;
	text-decoration: none
}

.pano_switch_left, .pano_switch_right {
	position: absolute;
	width: 28px;
	height: 28px;
	border: 1px solid gray;
	cursor: pointer;
	background:
		url(http://api0.map.bdimg.com/images/panorama/switch_control.png)
		no-repeat
}

.pano_switch_left {
	background-position: -28px 0
}

.pano_switch_right {
	background-position: -28px -28px
}

.pano_switch_left:hover {
	background-position: 0 0
}

.pano_switch_right:hover {
	background-position: 0 -28px
}

.pano_switch_left.pano_switch_disable, .pano_switch_right.pano_switch_disable
	{
	background: none;
	border: none
}

.pano_poi_4, .pano_poi_2, .pano_poi_1 {
	display: inline-block;
	width: 16px;
	height: 16px;
	vertical-align: middle;
	background:
		url(http://webmap1.map.bdimg.com/newmap/static/common/images/pano_whole/guide_icons_4b871b2.png)
		no-repeat;
	_background:
		url(http://webmap0.map.bdimg.com/newmap/static/common/images/pano_whole/guide_icons-8_71d5176.png)
		no-repeat;
	background-position: 0 0
}

.pano_photo_arrow_l, .pano_photo_arrow_r {
	position: absolute;
	top: 0;
	width: 20px;
	height: 100%;
	background: rgb(243, 238, 238)
}

.pano_photo_arrow_l {
	left: 0
}

.pano_photo_arrow_r {
	right: 0
}

.pano_arrow_r, .pano_arrow_l {
	display: inline-block;
	width: 18px;
	height: 18px;
	background:
		url(http://webmap0.map.bdimg.com/newmap/static/common/images/pano_whole/pano-icons_223a291.png)
		no-repeat;
	_background:
		url(http://webmap0.map.bdimg.com/newmap/static/common/images/pano_whole/pano-icons-8_0878d3c.png)
		no-repeat
}

.pano_arrow_l {
	background-position: 0 -36px
}

.pano_arrow_r {
	background-position: -54px -36px
}

.pano_photo_arrow_l:hover .pano_arrow_l {
	background-position: -18px -36px
}

.pano_photo_arrow_r:hover .pano_arrow_r {
	background-position: -72px -36px
}

.pano_photo_arrow_l.pano_arrow_disable .pano_arrow_l {
	background-position: -36px -36px
}

.pano_photo_arrow_r.pano_arrow_disable .pano_arrow_r {
	background-position: -90px -36px
}

.pano_photo_item {
	position: relative;
	float: left;
	line-height: 0;
	padding-left: 8px
}

.pano_photo_decs {
	position: absolute;
	bottom: 1px;
	left: 0;
	padding: 2px 0;
	text-indent: 5px;
	margin-left: 8px;
	display: inline-block;
	color: white;
	background: black;
	opacity: 0.5;
	filter: alpha(opacity = 50) 9;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap
}

.pano_photo_item img {
	display: inline-block;
	border: solid 1px #ccd2dc;
	cursor: pointer
}

.pano_photo_item:hover img {
	border-color: rgb(0, 94, 252)
}

.pano_photo_item_seleted {
	position: absolute;
	top: 0;
	left: -100000px;
	border: 3px solid rgb(9, 125, 243)
}
</style>

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
<meta name="Description" content="">


<script>
	// pc和mobile端会稍有不同，必须严格按照该文档来部署
	void function(g, f, j, c, h, d, b) {
		g.alogObjectName = h, g[h] = g[h] || function() {
			(g[h].q = g[h].q || []).push(arguments)
		}, g[h].l = g[h].l || +new Date, d = f.createElement(j), d.async = !0,
				d.src = c, b = f.getElementsByTagName(j)[0], b.parentNode
						.insertBefore(d, b)
	}(window, document, "script",
			"http://img.baidu.com/hunter/alog/alog.min.js", "alog");
	void function() {
		function c() {
			return;
		}
		window.PDC = {
			mark : function(a, b) {
				alog("speed.set", a, b || +new Date);
				alog.fire && alog.fire("mark")
			},
			init : function(a) {
				alog("speed.set", "options", a)
			},
			view_start : c,
			tti : c,
			page_ready : c
		}
	}();
	void function(n) {
		var o = !1;
		n.onerror = function(n, e, t, c) {
			var i = !0;
			return !e && /^script error/i.test(n) && (o ? i = !1 : o = !0), i
					&& alog("exception.send", "exception", {
						msg : n,
						js : e,
						ln : t,
						col : c
					}), !1
		}, alog("exception.on", "catch", function(n) {
			alog("exception.send", "exception", {
				msg : n.msg,
				js : n.path,
				ln : n.ln,
				method : n.method,
				flag : "catch"
			})
		})
	}(window);
</script>


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
	href="${ctx}/source/js/nuomi/list_e3d4fcf.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/nuomi/channel_f81c892.css">
<script>
	alog('speed.set', 'ht', new Date);
</script>
<script type="text/javascript"
	src="${ctx}/source/js/nuomi/list_827e67b.js"></script>
</head>





<body mon="page=channel">

	<script type="text/javascript">
		F
				.context({
					"channel" : "zhifang_index",
					"channel_content" : "",
					"da_page" : "channel",
					"nuomi_base" : "http://www.nuomi.com",
					"logout_nuomi" : "/pclogin/main/logout",
					"baid_uss_url" : "http://uid.nuomi.baidu.com/getbduss",
					"logout_baidu" : "https://passport.baidu.com/?logout",
					"xll" : "",
					"xll_meishi" : "0",
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
		style="position: absolute; top: 346px;">
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
			alog-group="bainuo-order-headerbar">
			<div class="wrap  max-wrap">
				<div class="city-area fl">
					<span class="city-name" id="id_cityname">北京</span><a
						href="mall!changecity.do" class="link">[切换城市]</a>
				</div>
				<div class="fr">
					<div class="uc-order-status" id="j-ucOrderStatus">
						<ul>
							<li><span></span>个可使用的红包<a
								href="http://www.nuomi.com/uc/hongbao/list?status=1"
								id="j-ucStatusLink-f">查看</a></li>
							<li>有即将到期的糯米券<a
								href="http://www.nuomi.com/uc/order/order?status=2"
								id="j-ucStatusLink-b">查看</a></li>
							<li><span></span>笔订单未评价<a
								href="http://www.nuomi.com/uc/comment/not" id="j-ucStatusLink-c">去评价</a></li>
							<li><span></span>笔订单未付款<a
								href="http://www.nuomi.com/uc/order/order?status=3"
								id="j-ucStatusLink-d">去付款</a></li>
							<li><span></span>条新的商家回复<a
								href="http://www.nuomi.com/uc/comment/reply"
								id="j-ucStatusLink-e">查看</a></li>
						</ul>
						<a href="javascript:;" title="关闭消息框" class="close-button"
							id="j-ucStatusLink-a"></a>
					</div>
					<ul class="uc-login-list clearfix" id="j-ucLoginList">
						<li class="welcome-text"><span class="line-sprite"></span><span
							class="welcome-tag" id="j-welcomeTag"></span></li>
						<li class="login"><span class="line-sprite"></span><a
							href="http://www.nuomi.com/pclogin/main/loginpage?u=http%3A%2F%2Fbj.nuomi.com%2Fall%2F396-1375"
							id="j-barLoginBtn" class="link mm-link">登录</a></li>
						<li class="reg"><a
							href="http://passport.baidu.com/v2/?reg&tpl=nuomi&color=pink&u=http%3A%2F%2Fbj.nuomi.com%2Fall%2F396-1375"
							class="link mm-link" id="j-barRegBtn">注册</a></li>
						<li class="logout"><a id="j-logout"
							href="https://passport.baidu.com/?logout" class="link mm-link">退出</a></li>
					</ul>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			F.context("page_name", "channel");
			F.context("coupon_url",
					"http://www.nuomi.com/uc/giftcard/find?status=1");
		</script>
		<div class="logo-search clearfix -search max-search"
			alog-alias="bainuo-user-logosearch"
			alog-group="bainuo-user-logosearch">
			<a href=""
				style="background-image:${ctx}/source/js/nuomi/awifi_logo.png;"><img
				src="${ctx}/source/js/nuomi/awifi_logo.png" />
				<div class="beta-tag" style="display: none;"></div>

				<div class="wrap"></div>
		</div>

	</div>


	<div class="page-body">

		<div class="filter-bg">

			<div class="filter-wrap" alog-alias="bainuo-channel-filter-wrap"
				alog-group="bainuo-channel-filter-wrap">

				<div class="w-filter filter-channel">
					<div class="w-district filter-section" mon="area=filterArea"
						alog-alias="bainuo-filter-district"
						alog-group="bainuo-filter-district">
						<h5 class="filter-label">区域:</h5>
						<div id="j-district-filter-list"
							class="filter-list district-filter-list over-hidden">
							<div id="j-district-item-wrap" class="filter-item-wrap"></div>
							<a href="javascript:;" id="j-show-more-district"
								class="show-more" style="" title="更多"></a>
						</div>
						<div class="sub-filter-section">
							<div class="sub-filter-list" id="j-sub-filter-list"></div>
						</div>
					</div>
				</div>

				<div class="w-sort-bar" id="j-sort-bar" alog-alias="bainuo-sort-bar"
					alog-group="bainuo-sort-bar">
					<div class="bar-area" id="j-bar-area">

						<div class="sortbar-right">
							<div class="w-search" mon="area=search&amp;element_type=nav"
								style="display: none;">
								<div class="search-wrap">
									<form method="get" action="http://www.nuomi.com/search"
										target="_blank" class="j-searchForm">
										<input type="text"
											class="search-input placeholder j-searchInput input-sel"
											name="k" value="" placeholder="酒店" autocomplete="off"
											elem-init="t"> <input type="submit"
											class="btn search-btn j-search-btn" value=""
											mon="element=button"> <input type="text"
											class="input-hidden j-input-hidden" name="rid"
											value="4d8a9b32a96e4dbcf3148021b259f167">
									</form>
								</div>
								<div class="hot-area" alog-alias="bainuo-header-hot-area"
									alog-group="bainuo-header-hot-area">
									<a
										href="http://bj.nuomi.com/search?k=%E5%B0%8F%E5%90%83%E5%BF%AB%E9%A4%90&rid=6f90c1b013b5a0088e7ccb8740330916"
										class="link" mon="element=hot">小吃快餐</a> <a
										href="http://bj.nuomi.com/search?k=%E8%9B%8B%E7%B3%95&rid=6f90c1b013b5a0088e7ccb8740330916"
										class="link" mon="element=hot">蛋糕</a> <a
										href="http://bj.nuomi.com/search?k=%E8%80%81%E5%8C%97%E4%BA%AC%E5%8D%A4%E8%82%89%E5%8D%B7&rid=6f90c1b013b5a0088e7ccb8740330916"
										class="link" mon="element=hot">老北京卤肉卷</a> <a
										href="http://bj.nuomi.com/search?k=%E9%98%BF%E7%94%B0%E5%A4%A7%E8%99%BE&rid=6f90c1b013b5a0088e7ccb8740330916"
										class="link" mon="element=hot">阿田大虾</a> <a
										href="http://bj.nuomi.com/search?k=%E6%98%93%E4%BD%B0%E8%BF%9E%E9%94%81%E6%97%85%E5%BA%97&rid=6f90c1b013b5a0088e7ccb8740330916"
										class="link" mon="element=hot">易佰连锁旅店</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="layout_content">

					<div class="layout_rightmain">
						<div class="r-top" style="background: rgb(255, 255, 255);">
							<div class="menu" id="menu">
								<dl>
									<dt>
										<b class="menu-icon-location"></b><span id="currentCooperLoc">商圈</span><b
											class="menu-icon-arrow" style="display: none;"></b>
									</dt>
									<dd>
										<ul id="cooperLocList"></ul>
									</dd>
								</dl>
							</div>

							<div class="tool_date cf" style="display: none;">
								<div class="date" id="div_date">
									<span class="date_title" id="date">2014-08-25 至
										2014-08-31</span> <a class="opt_sel" id="input_trigger"
										href="http://huiyan.baidu.com/malldemo/flow/coming#"> <i
										class="i_orderd"></i>
									</a>
								</div>
								<label class="contrast" for="needCompare_1419484885278"
									style="display: none;"><input type="checkbox"
									class="pc" name="needCompare_1419484885278"
									id="needCompare_1419484885278" value="1" disabled="disabled">对比</label>
								<div class="ta_date" id="div_compare_date"
									style="display: none;">
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
						<div class="w-filter filter-channel">
							<div class="w-category filter-section" mon="area=filterCatg">
								<h5 class="filter-label">分类</h5>
								<div class="filter-list filter-list-without-border"
									alog-alias="bainuo-category-filter-list"
									alog-group="bainuo-category-filter-list">
									<a href="javascript:;"
										class="w-filter-item  item-all filter-active-all"
										mon="element=0&amp;element_type=filter">全部<span
										class="filter-item-arrow"></span></a><a
										href="http://bj.nuomi.com/meishi/396-1375"
										class="w-filter-item  "
										mon="element=326&amp;element_type=filter">美食<span
										class="filter-count">229</span><span class="filter-item-arrow"></span></a><a
										href="http://bj.nuomi.com/movie" class="w-filter-item  "
										mon="element=10345&amp;element_type=filter">电影<span
										class="filter-count">2</span><span class="filter-item-arrow"></span></a><a
										href="http://bj.nuomi.com/yule/396-1375"
										class="w-filter-item  "
										mon="element=320&amp;element_type=filter">娱乐<span
										class="filter-count">31</span><span class="filter-item-arrow"></span></a><a
										href="http://bj.nuomi.com/shenghuo/396-1375"
										class="w-filter-item  "
										mon="element=316&amp;element_type=filter">生活<span
										class="filter-count">66</span><span class="filter-item-arrow"></span></a><a
										href="http://bj.nuomi.com/liren/396-1375"
										class="w-filter-item  "
										mon="element=10955&amp;element_type=filter">丽人<span
										class="filter-count">33</span><span class="filter-item-arrow"></span></a><a
										href="http://t.nuomi.com/" class="w-filter-item  "
										mon="element=10642&amp;element_type=filter">酒店<span
										class="filter-count">67</span><span class="filter-item-arrow"></span></a>
								</div>
							</div>
						</div>
						<div id="tipBox" style="height: 0px;">
							<span class="title">温馨提示：</span> <span class="message"></span> <span
								class="close_icon"></span>
						</div>
						<div class="chartArea">
							<dl class="itemBox">
								<dd class="clearfix">
									<div id="coming_village">
										<div class="coming_village_tips"
											style="text-align: center; height: 2em; line-height: 2em; display: none; background: rgb(255, 254, 209);">加载中，请稍后...</div>
										<div id="comming_village_left"
											_echarts_instance_="1419484884957"
											style="display: none; cursor: default; background-color: rgba(0, 0, 0, 0);">

										</div>

										<div class="comming_village_right_box" style="width: 100%;">
											<div id="container" style="display: none"></div>
											<div id="comming_village_right"
												style="overflow: hidden; position: relative; z-index: 0; color: rgb(0, 0, 0); text-align: left; background-color: rgb(243, 241, 236);">

											</div>
										</div>
									</div>
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
									<div id="time_custom"
										style="background-color: rgba(0, 0, 0, 0);"></div>
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
							<div style="display: none">
								<dl class="itemBox">
									<dt>全国客流来源分布</dt>
									<dd>
										<div id="coming_province_map"
											_echarts_instance_="1419484884960"
											style="background-color: rgba(0, 0, 0, 0);"></div>
									</dd>
								</dl>
							</div>
							>
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
							<div class="coming" style="display: none">
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

										</div>
										<div id="districtArea" style="display: block;">
											<div id="main_coming_district"
												_echarts_instance_="1419484884962"
												style="background-color: rgba(0, 0, 0, 0);"></div>
											<div id="sub_coming_district"
												_echarts_instance_="1419484884963"
												style="background-color: rgba(0, 0, 0, 0);"></div>
										</div>
									</dd>
								</dl>
							</div>
							<div class="coming" style="display: none">
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
											style="background-color: rgba(0, 0, 0, 0);"></div>
										<div id="coming_business_sub"
											_echarts_instance_="1419484884965"
											style="background-color: rgba(0, 0, 0, 0);"></div>
									</dd>
								</dl>
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
				<script type="text/javascript"
					src="${ctx}/source/js/eye//CityList.js"></script>
				<script type="text/javascript" src="${ctx}/source/js/eye/mod.js"></script>
				<script type="text/javascript" src="${ctx}/source/js/eye/jquery.js"></script>
				<script type="text/javascript" src="${ctx}/source/js/eye/common.js"></script>
				<script type="text/javascript"
					src="${ctx}/source/js/eye/metronic.js"></script>
				<script type="text/javascript"
					src="${ctx}/source/js/eye/echarts-plain-map.js"></script>
				<script type="text/javascript" src="${ctx}/source/js/eye/home.js"></script>
				<script type="text/javascript"
					src="${ctx}/source/js/eye/mall_spread.js"></script>

				<script type="text/javascript"
					src="${ctx}/source/js/highcharts/js/highcharts.js"></script>
				<script type="text/javascript"
					src="${ctx}/source/js/highcharts/js/highcharts-3d.js"></script>
				<script type="text/javascript"
					src="${ctx}/source/js/highcharts/js/modules/exporting.js"></script>

				<script type="text/javascript">
					function choicearea(province, city, borough, business,
							type, level) {
						var data = "province=" + province;
						data += "&city=" + city;
						data += "&borough=" + borough;
						data += "&business=" + business;
						data += "&type=" + type;
						data += "&level=" + level;
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
					var highchartsOptions = Highcharts
							.setOptions(Highcharts.theme);
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
											data : [ [ '餐饮', 60.0 ],
													[ '娱乐', 30 ], [ '其他', 10 ] ]
										} ]
									});
					Highcharts.theme = {
						colors : [ "#DDDF0D", "#7798BF", "#55BF3B", "#DF5353",
								"#aaeeee", "#ff0066", "#eeaaee", "#55BF3B",
								"#DF5353", "#7798BF", "#aaeeee" ],
						chart : {
							backgroundColor : {
								linearGradient : {
									x1 : 0,
									y1 : 0,
									x2 : 0,
									y2 : 1
								},
								stops : [ [ 0, 'rgb(96, 96, 96)' ],
										[ 1, 'rgb(16, 16, 16)' ] ]
							},
							borderWidth : 0,
							borderRadius : 0,
							plotBackgroundColor : null,
							plotShadow : false,
							plotBorderWidth : 0
						},
						title : {
							style : {
								color : '#FFF',
								font : '16px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
							}
						},
						subtitle : {
							style : {
								color : '#DDD',
								font : '12px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
							}
						},
						xAxis : {
							gridLineWidth : 0,
							lineColor : '#999',
							tickColor : '#999',
							labels : {
								style : {
									color : '#999',
									fontWeight : 'bold'
								}
							},
							title : {
								style : {
									color : '#AAA',
									font : 'bold 12px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
								}
							}
						},
						yAxis : {
							alternateGridColor : null,
							minorTickInterval : null,
							gridLineColor : 'rgba(255, 255, 255, .1)',
							minorGridLineColor : 'rgba(255,255,255,0.07)',
							lineWidth : 0,
							tickWidth : 0,
							labels : {
								style : {
									color : '#999',
									fontWeight : 'bold'
								}
							},
							title : {
								style : {
									color : '#AAA',
									font : 'bold 12px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
								}
							}
						},
						legend : {
							itemStyle : {
								color : '#CCC'
							},
							itemHoverStyle : {
								color : '#FFF'
							},
							itemHiddenStyle : {
								color : '#333'
							}
						},
						labels : {
							style : {
								color : '#CCC'
							}
						},
						tooltip : {
							backgroundColor : {
								linearGradient : {
									x1 : 0,
									y1 : 0,
									x2 : 0,
									y2 : 1
								},
								stops : [ [ 0, 'rgba(96, 96, 96, .8)' ],
										[ 1, 'rgba(16, 16, 16, .8)' ] ]
							},
							borderWidth : 0,
							style : {
								color : '#FFF'
							}
						},

						plotOptions : {
							series : {
								nullColor : '#444444'
							},
							line : {
								dataLabels : {
									color : '#CCC'
								},
								marker : {
									lineColor : '#333'
								}
							},
							spline : {
								marker : {
									lineColor : '#333'
								}
							},
							scatter : {
								marker : {
									lineColor : '#333'
								}
							},
							candlestick : {
								lineColor : 'white'
							}
						},

						toolbar : {
							itemStyle : {
								color : '#CCC'
							}
						},

						navigation : {
							buttonOptions : {
								symbolStroke : '#DDDDDD',
								hoverSymbolStroke : '#FFFFFF',
								theme : {
									fill : {
										linearGradient : {
											x1 : 0,
											y1 : 0,
											x2 : 0,
											y2 : 1
										},
										stops : [ [ 0.4, '#606060' ],
												[ 0.6, '#333333' ] ]
									},
									stroke : '#000000'
								}
							}
						},

						// scroll charts
						rangeSelector : {
							buttonTheme : {
								fill : {
									linearGradient : {
										x1 : 0,
										y1 : 0,
										x2 : 0,
										y2 : 1
									},
									stops : [ [ 0.4, '#888' ], [ 0.6, '#555' ] ]
								},
								stroke : '#000000',
								style : {
									color : '#CCC',
									fontWeight : 'bold'
								},
								states : {
									hover : {
										fill : {
											linearGradient : {
												x1 : 0,
												y1 : 0,
												x2 : 0,
												y2 : 1
											},
											stops : [ [ 0.4, '#BBB' ],
													[ 0.6, '#888' ] ]
										},
										stroke : '#000000',
										style : {
											color : 'white'
										}
									},
									select : {
										fill : {
											linearGradient : {
												x1 : 0,
												y1 : 0,
												x2 : 0,
												y2 : 1
											},
											stops : [ [ 0.1, '#000' ],
													[ 0.3, '#333' ] ]
										},
										stroke : '#000000',
										style : {
											color : 'yellow'
										}
									}
								}
							},
							inputStyle : {
								backgroundColor : '#333',
								color : 'silver'
							},
							labelStyle : {
								color : 'silver'
							}
						},

						navigator : {
							handles : {
								backgroundColor : '#666',
								borderColor : '#AAA'
							},
							outlineColor : '#CCC',
							maskFill : 'rgba(16, 16, 16, 0.5)',
							series : {
								color : '#7798BF',
								lineColor : '#A6C7ED'
							}
						},

						scrollbar : {
							barBackgroundColor : {
								linearGradient : {
									x1 : 0,
									y1 : 0,
									x2 : 0,
									y2 : 1
								},
								stops : [ [ 0.4, '#888' ], [ 0.6, '#555' ] ]
							},
							barBorderColor : '#CCC',
							buttonArrowColor : '#CCC',
							buttonBackgroundColor : {
								linearGradient : {
									x1 : 0,
									y1 : 0,
									x2 : 0,
									y2 : 1
								},
								stops : [ [ 0.4, '#888' ], [ 0.6, '#555' ] ]
							},
							buttonBorderColor : '#CCC',
							rifleColor : '#FFF',
							trackBackgroundColor : {
								linearGradient : {
									x1 : 0,
									y1 : 0,
									x2 : 0,
									y2 : 1
								},
								stops : [ [ 0, '#000' ], [ 1, '#333' ] ]
							},
							trackBorderColor : '#666'
						},

						// special colors for some of the demo examples
						legendBackgroundColor : 'rgba(48, 48, 48, 0.8)',
						background2 : 'rgb(70, 70, 70)',
						dataLabelsColor : '#444',
						textColor : '#E0E0E0',
						maskColor : 'rgba(255,255,255,0.3)'
					};
					highchartsOptions = Highcharts.setOptions(Highcharts.theme);

					$('#tel_class')
							.highcharts(
									{
										chart : {
											backgroundColor : "#A8B848",
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
											data : [ [ 'iphone', 30.0 ],
													[ '小米', 20 ], [ '华为', 10 ],
													[ 'HTC', 10 ],
													[ '联想', 10 ], [ '其他', 20 ] ]
										} ]
									});

					Highcharts.theme = {
						colors : [ "#DDDF0D", "#55BF3B", "#DF5353", "#7798BF",
								"#aaeeee", "#ff0066", "#eeaaee", "#55BF3B",
								"#DF5353", "#7798BF", "#aaeeee" ],
						chart : {
							backgroundColor : {
								linearGradient : {
									x1 : 0,
									y1 : 0,
									x2 : 1,
									y2 : 1
								},
								stops : [ [ 0, 'rgb(48, 48, 96)' ],
										[ 1, 'rgb(0, 0, 0)' ] ]
							},
							borderColor : '#000000',
							borderWidth : 2,
							className : 'dark-container',
							plotBackgroundColor : 'rgba(255, 255, 255, .1)',
							plotBorderColor : '#CCCCCC',
							plotBorderWidth : 1
						},
						title : {
							style : {
								color : '#C0C0C0',
								font : 'bold 16px "Trebuchet MS", Verdana, sans-serif'
							}
						},
						subtitle : {
							style : {
								color : '#666666',
								font : 'bold 12px "Trebuchet MS", Verdana, sans-serif'
							}
						},
						xAxis : {
							gridLineColor : '#333333',
							gridLineWidth : 1,
							labels : {
								style : {
									color : '#A0A0A0'
								}
							},
							lineColor : '#A0A0A0',
							tickColor : '#A0A0A0',
							title : {
								style : {
									color : '#CCC',
									fontWeight : 'bold',
									fontSize : '12px',
									fontFamily : 'Trebuchet MS, Verdana, sans-serif'

								}
							}
						},
						yAxis : {
							gridLineColor : '#333333',
							labels : {
								style : {
									color : '#A0A0A0'
								}
							},
							lineColor : '#A0A0A0',
							minorTickInterval : null,
							tickColor : '#A0A0A0',
							tickWidth : 1,
							title : {
								style : {
									color : '#CCC',
									fontWeight : 'bold',
									fontSize : '12px',
									fontFamily : 'Trebuchet MS, Verdana, sans-serif'
								}
							}
						},
						tooltip : {
							backgroundColor : 'rgba(0, 0, 0, 0.75)',
							style : {
								color : '#F0F0F0'
							}
						},
						toolbar : {
							itemStyle : {
								color : 'silver'
							}
						},
						plotOptions : {
							line : {
								dataLabels : {
									color : '#CCC'
								},
								marker : {
									lineColor : '#333'
								}
							},
							spline : {
								marker : {
									lineColor : '#333'
								}
							},
							scatter : {
								marker : {
									lineColor : '#333'
								}
							},
							candlestick : {
								lineColor : 'white'
							}
						},
						legend : {
							itemStyle : {
								font : '9pt Trebuchet MS, Verdana, sans-serif',
								color : '#A0A0A0'
							},
							itemHoverStyle : {
								color : '#FFF'
							},
							itemHiddenStyle : {
								color : '#444'
							}
						},
						credits : {
							style : {
								color : '#666'
							}
						},
						labels : {
							style : {
								color : '#CCC'
							}
						},

						navigation : {
							buttonOptions : {
								symbolStroke : '#DDDDDD',
								hoverSymbolStroke : '#FFFFFF',
								theme : {
									fill : {
										linearGradient : {
											x1 : 0,
											y1 : 0,
											x2 : 0,
											y2 : 1
										},
										stops : [ [ 0.4, '#606060' ],
												[ 0.6, '#333333' ] ]
									},
									stroke : '#000000'
								}
							}
						},

						// scroll charts
						rangeSelector : {
							buttonTheme : {
								fill : {
									linearGradient : {
										x1 : 0,
										y1 : 0,
										x2 : 0,
										y2 : 1
									},
									stops : [ [ 0.4, '#888' ], [ 0.6, '#555' ] ]
								},
								stroke : '#000000',
								style : {
									color : '#CCC',
									fontWeight : 'bold'
								},
								states : {
									hover : {
										fill : {
											linearGradient : {
												x1 : 0,
												y1 : 0,
												x2 : 0,
												y2 : 1
											},
											stops : [ [ 0.4, '#BBB' ],
													[ 0.6, '#888' ] ]
										},
										stroke : '#000000',
										style : {
											color : 'white'
										}
									},
									select : {
										fill : {
											linearGradient : {
												x1 : 0,
												y1 : 0,
												x2 : 0,
												y2 : 1
											},
											stops : [ [ 0.1, '#000' ],
													[ 0.3, '#333' ] ]
										},
										stroke : '#000000',
										style : {
											color : 'yellow'
										}
									}
								}
							},
							inputStyle : {
								backgroundColor : '#333',
								color : 'silver'
							},
							labelStyle : {
								color : 'silver'
							}
						},

						navigator : {
							handles : {
								backgroundColor : '#666',
								borderColor : '#AAA'
							},
							outlineColor : '#CCC',
							maskFill : 'rgba(16, 16, 16, 0.5)',
							series : {
								color : '#7798BF',
								lineColor : '#A6C7ED'
							}
						},

						scrollbar : {
							barBackgroundColor : {
								linearGradient : {
									x1 : 0,
									y1 : 0,
									x2 : 0,
									y2 : 1
								},
								stops : [ [ 0.4, '#888' ], [ 0.6, '#555' ] ]
							},
							barBorderColor : '#CCC',
							buttonArrowColor : '#CCC',
							buttonBackgroundColor : {
								linearGradient : {
									x1 : 0,
									y1 : 0,
									x2 : 0,
									y2 : 1
								},
								stops : [ [ 0.4, '#888' ], [ 0.6, '#555' ] ]
							},
							buttonBorderColor : '#CCC',
							rifleColor : '#FFF',
							trackBackgroundColor : {
								linearGradient : {
									x1 : 0,
									y1 : 0,
									x2 : 0,
									y2 : 1
								},
								stops : [ [ 0, '#000' ], [ 1, '#333' ] ]
							},
							trackBorderColor : '#666'
						},

						// special colors for some of the
						legendBackgroundColor : 'rgba(0, 0, 0, 0.5)',
						background2 : 'rgb(35, 35, 70)',
						dataLabelsColor : '#444',
						textColor : '#C0C0C0',
						maskColor : 'rgba(255,255,255,0.3)'
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
											data : [ [ '餐饮', 70.0 ],
													[ '娱乐', 20 ], [ '其他', 10 ] ]
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
									data : [ 29, 71, 106, 129, 144, 176, 135,
											148, 216, 194, 95, 54 ],
									pointStart : Date.UTC(2015, 01, 04),
									pointInterval : 3600 * 1000
								} ]
							});

					Highcharts.theme = {
						colors : [ "#DDDF0D", "#55BF3B", "#DF5353", "#7798BF",
								"#aaeeee", "#ff0066", "#eeaaee", "#55BF3B",
								"#DF5353", "#7798BF", "#aaeeee" ],
						chart : {
							backgroundColor : {
								linearGradient : [ 0, 0, 250, 500 ],
								stops : [ [ 0, 'rgb(48, 96, 48)' ],
										[ 1, 'rgb(0, 0, 0)' ] ]
							},
							borderColor : '#000000',
							borderWidth : 2,
							className : 'dark-container',
							plotBackgroundColor : 'rgba(255, 255, 255, .1)',
							plotBorderColor : '#CCCCCC',
							plotBorderWidth : 1
						},
						title : {
							style : {
								color : '#C0C0C0',
								font : 'bold 16px "Trebuchet MS", Verdana, sans-serif'
							}
						},
						subtitle : {
							style : {
								color : '#666666',
								font : 'bold 12px "Trebuchet MS", Verdana, sans-serif'
							}
						},
						xAxis : {
							gridLineColor : '#333333',
							gridLineWidth : 1,
							labels : {
								style : {
									color : '#A0A0A0'
								}
							},
							lineColor : '#A0A0A0',
							tickColor : '#A0A0A0',
							title : {
								style : {
									color : '#CCC',
									fontWeight : 'bold',
									fontSize : '12px',
									fontFamily : 'Trebuchet MS, Verdana, sans-serif'

								}
							}
						},
						yAxis : {
							gridLineColor : '#333333',
							labels : {
								style : {
									color : '#A0A0A0'
								}
							},
							lineColor : '#A0A0A0',
							minorTickInterval : null,
							tickColor : '#A0A0A0',
							tickWidth : 1,
							title : {
								style : {
									color : '#CCC',
									fontWeight : 'bold',
									fontSize : '12px',
									fontFamily : 'Trebuchet MS, Verdana, sans-serif'
								}
							}
						},
						tooltip : {
							backgroundColor : 'rgba(0, 0, 0, 0.75)',
							style : {
								color : '#F0F0F0'
							}
						},
						toolbar : {
							itemStyle : {
								color : 'silver'
							}
						},
						plotOptions : {
							line : {
								dataLabels : {
									color : '#CCC'
								},
								marker : {
									lineColor : '#333'
								}
							},
							spline : {
								marker : {
									lineColor : '#333'
								}
							},
							scatter : {
								marker : {
									lineColor : '#333'
								}
							},
							candlestick : {
								lineColor : 'white'
							}
						},
						legend : {
							itemStyle : {
								font : '9pt Trebuchet MS, Verdana, sans-serif',
								color : '#A0A0A0'
							},
							itemHoverStyle : {
								color : '#FFF'
							},
							itemHiddenStyle : {
								color : '#444'
							}
						},
						credits : {
							style : {
								color : '#666'
							}
						},
						labels : {
							style : {
								color : '#CCC'
							}
						},

						navigation : {
							buttonOptions : {
								symbolStroke : '#DDDDDD',
								hoverSymbolStroke : '#FFFFFF',
								theme : {
									fill : {
										linearGradient : {
											x1 : 0,
											y1 : 0,
											x2 : 0,
											y2 : 1
										},
										stops : [ [ 0.4, '#606060' ],
												[ 0.6, '#333333' ] ]
									},
									stroke : '#000000'
								}
							}
						},

						// scroll charts
						rangeSelector : {
							buttonTheme : {
								fill : {
									linearGradient : {
										x1 : 0,
										y1 : 0,
										x2 : 0,
										y2 : 1
									},
									stops : [ [ 0.4, '#888' ], [ 0.6, '#555' ] ]
								},
								stroke : '#000000',
								style : {
									color : '#CCC',
									fontWeight : 'bold'
								},
								states : {
									hover : {
										fill : {
											linearGradient : {
												x1 : 0,
												y1 : 0,
												x2 : 0,
												y2 : 1
											},
											stops : [ [ 0.4, '#BBB' ],
													[ 0.6, '#888' ] ]
										},
										stroke : '#000000',
										style : {
											color : 'white'
										}
									},
									select : {
										fill : {
											linearGradient : {
												x1 : 0,
												y1 : 0,
												x2 : 0,
												y2 : 1
											},
											stops : [ [ 0.1, '#000' ],
													[ 0.3, '#333' ] ]
										},
										stroke : '#000000',
										style : {
											color : 'yellow'
										}
									}
								}
							},
							inputStyle : {
								backgroundColor : '#333',
								color : 'silver'
							},
							labelStyle : {
								color : 'silver'
							}
						},

						navigator : {
							handles : {
								backgroundColor : '#666',
								borderColor : '#AAA'
							},
							outlineColor : '#CCC',
							maskFill : 'rgba(16, 16, 16, 0.5)',
							series : {
								color : '#7798BF',
								lineColor : '#A6C7ED'
							}
						},

						scrollbar : {
							barBackgroundColor : {
								linearGradient : {
									x1 : 0,
									y1 : 0,
									x2 : 0,
									y2 : 1
								},
								stops : [ [ 0.4, '#888' ], [ 0.6, '#555' ] ]
							},
							barBorderColor : '#CCC',
							buttonArrowColor : '#CCC',
							buttonBackgroundColor : {
								linearGradient : {
									x1 : 0,
									y1 : 0,
									x2 : 0,
									y2 : 1
								},
								stops : [ [ 0.4, '#888' ], [ 0.6, '#555' ] ]
							},
							buttonBorderColor : '#CCC',
							rifleColor : '#FFF',
							trackBackgroundColor : {
								linearGradient : {
									x1 : 0,
									y1 : 0,
									x2 : 0,
									y2 : 1
								},
								stops : [ [ 0, '#000' ], [ 1, '#333' ] ]
							},
							trackBorderColor : '#666'
						},

						// special colors for some of the
						legendBackgroundColor : 'rgba(0, 0, 0, 0.5)',
						background2 : 'rgb(35, 35, 70)',
						dataLabelsColor : '#444',
						textColor : '#C0C0C0',
						maskColor : 'rgba(255,255,255,0.3)'
					};
					highchartsOptions = Highcharts.setOptions(Highcharts.theme);
					$('#storey_all_stay').highcharts(
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
									data.push([ json[i].name,
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
								} else if (json[i].type == "5") {
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
					// 新创建地图
					var map = new BMap.Map("comming_village_right");
					var point = new BMap.Point(116.418261, 39.921984);
					map.centerAndZoom(point, 15); // 初始化地图，设置中心点坐标和地图级别
					map.enableScrollWheelZoom();
					map.addControl(new BMap.NavigationControl());
					var cityList = new BMapLib.CityList({
						container : 'container',
						map : map
					});
					var loc = "";

					cityList.getBusiness('中关村', function(json) {
						console.log('商圈');
						console.log(json);
					});

					cityList.getSubAreaList(131, function(json) {
						console.log('城市列表');
						console.log(json);
					});
					function getQueryString(name) {
						var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)",
								"i");
						var r = window.location.search.substr(1).match(reg);
						if (r != null)
							return (r[2]);
						return "";
					};
					var borough_id = "";
					var business_id = "";
					var provincename = getQueryString("province");
					provincename = decodeURI(provincename);
					var cityname1 = getQueryString("city");
					var cityname = decodeURI(cityname1);
					if (provincename == "") {
						provincename = "北京市";
					}
					if (cityname == "" ) {
						cityname = "北京市";
					}
					$("#id_cityname").html(cityname);
					cityList.selectProvince(cityname, provincename);
					var level = 2;
					if (cityname == "北京市" || cityname == "天津市"
							|| cityname == "上海市") {
						level = 1;
					}

					choicearea(provincename, cityname, "", "", "", level);
					function addClass(obj, cls) {
						if (obj == null)
							return;
						if (!this.hasClass(obj, cls))
							obj.className += " " + cls;
					}

					function removeClass(obj, cls) {
						if (obj == null)
							return;
						if (hasClass(obj, cls)) {
							var reg = new RegExp('(\\s|^)' + cls + '(\\s|$)');
							obj.className = obj.className.replace(reg, ' ');
						}
					}
					function hasClass(obj, cls) {
						return obj.className.match(new RegExp('(\\s|^)' + cls
								+ '(\\s|$)'));
					}

					function borough(name, value) {
						cityList.selectBorough(name);

						if (borough_id != "") {
							removeClass(document.getElementById(borough_id),
									"filter-active-all");
						}
						$("#currentCooperLoc").html(name + "商圈");
						borough_id = "id_" + value;
						addClass(document.getElementById("id_" + value),
								"filter-active-all");
						choicearea(provincename, cityname, name, "", "", 3);

					}
					function business(name, value) {
						loc = cityList.selectbusiness(name);
						getpoi("美食", loc, 1000, map);
						if (business_id != "") {
							removeClass(document.getElementById(business_id),
									"filter-active-all");
						}
						$("#currentCooperLoc").html(name + "商圈");
						business_id = "id_" + value;
						addClass(document.getElementById("id_" + value),
								"filter-active-all");
						var boroughname = document.getElementById(borough_id).text;
						choicearea(provincename, cityname, boroughname, name,
								"", 4);
					}

					function food(name) {
						cityList.selectbusiness(name);
					}

					!function() {
						window.GLOBAL_DATA = {
							"API_URL_dev" : "http:\/\/cp01-rdqa-dev361.cp01.baidu.com:8080",
							"API_URL" : "http:\/\/huiyan.baidu.com",
							"ECHARTS_THEMES" : {
								"color" : [ "#4DB8EC", "#4CD2EF", "#1581FF",
										"#496BB5", "#FF524E", "#FF8381",
										"#FEAB81", "#FE964D", "#FD4F84",
										"#DB3164", "#A0C152", "#C4EA62",
										"#42940C", "#78C63E", "#DBD7D8",
										"#BDBDBD", "#999", "#555", "#333" ]
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
					/*!function() {
						require('home:widget/coming/village.js').init();
					}();*/
					/*!function() {
						require('home:widget/coming/mall_spread.js').init();
					}();*/
					!function() {
						require(
								'home:widget/coming_province/coming_province.js')
								.init();
					}();
					!function() {
						require(
								'home:widget/coming_city_district/coming_city_district.js')
								.init();
					}();
					!function() {
						require(
								'home:widget/coming_business/coming_business.js')
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
						target="_blank"><img border="0"
						src="${ctx}/source/js/eye/21.gif" width="20" height="20"></a>
				</div>

				<div id="calendar_1419484885278" class="ta_calendar ta_calendar2 cf"
					style="z-index: 9999; display: none;">
					<div class="ta_calendar_cont cf" id="dateRangePicker_1419484885278">
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
										href="javascript:void(0);"
										id="dateRangePreMonth_1419484885278"><i class="i_pre"></i></a></td>
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
										href="javascript:void(0);"
										id="dateRangeNextMonth_1419484885278"><i class="i_next"></i></a></td>
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
									<td id="calendar_1419484885278_2014-8-25" class="first"
										style="cursor: pointer;">25</td>
									<td id="calendar_1419484885278_2014-8-26"
										class="ta_dateRangeSelected" style="cursor: pointer;">26</td>
									<td id="calendar_1419484885278_2014-8-27"
										class="ta_dateRangeSelected" style="cursor: pointer;">27</td>
									<td id="calendar_1419484885278_2014-8-28"
										class="ta_dateRangeSelected" style="cursor: pointer;">28</td>
									<td id="calendar_1419484885278_2014-8-29"
										class="ta_dateRangeSelected" style="cursor: pointer;">29</td>
									<td id="calendar_1419484885278_2014-8-30"
										class="ta_dateRangeSelected" style="cursor: pointer;">30</td>
								</tr>
								<tr>
									<td id="calendar_1419484885278_2014-8-31" class="last"
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
							<div id="dateRangeDiv_1419484885278">
								<input type="text" class="ta_ipt_text_s ta_dateRangeSelected"
									name="startDate_1419484885278" id="startDate_1419484885278"
									value="2014-08-25" readonly=""
									style="background-repeat: repeat;"><span
									class="joinLine"> - </span><input type="text"
									class="ta_ipt_text_s" name="endDate_1419484885278"
									id="endDate_1419484885278" value="2014-08-31" readonly=""><br>
							</div>
							<div id="dateRangeCompareDiv_1419484885278"
								style="display: none;">
								<input type="text" class="ta_ipt_text_s"
									name="startCompareDate_1419484885278"
									id="startCompareDate_1419484885278" value="" readonly=""
									disabled="disabled"><span class="joinLine"> - </span><input
									type="text" class="ta_ipt_text_s"
									name="endCompareDate_1419484885278"
									id="endCompareDate_1419484885278" value="" readonly=""
									disabled="disabled">
							</div>
						</div>
						<div class="frm_btn">
							<input class="ta_btn ta_btn_primary" type="button"
								name="submit_1419484885278" id="submit_1419484885278" value="确定"><input
								class="ta_btn" type="button" id="closeBtn_1419484885278"
								value="取消">
						</div>
					</div>
				</div>

			</div>

		</div>

		<script>
			void function(e, t) {
				for (var n = t.getElementsByTagName("img"), a = +new Date, i = [], o = function() {
					this.removeEventListener
							&& this.removeEventListener("load", o, !1), i
							.push({
								img : this,
								time : +new Date
							})
				}, s = 0; s < n.length; s++)
					!function() {
						var e = n[s];
						e.addEventListener ? !e.complete
								&& e.addEventListener("load", o, !1)
								: e.attachEvent
										&& e.attachEvent("onreadystatechange",
												function() {
													"complete" == e.readyState
															&& o.call(e, o)
												})
					}();
				alog("speed.set", {
					fsItems : i,
					fs : a
				})
			}(window, document);
		</script>

		<div class="content-wrap" id="j-goods-area">


			<div class="w-search-bottom clearfix">
				<div class="w-search" mon="area=search&amp;element_type=nav"
					style="display: none;">
					<div class="search-wrap">
						<form method="get" action="http://www.nuomi.com/search"
							target="_blank" class="j-searchForm">
							<input type="text"
								class="search-input placeholder j-searchInput input-sel"
								name="k" value="" placeholder="酒店" autocomplete="off"
								elem-init="t"> <input type="submit"
								class="btn search-btn j-search-btn" value=""
								mon="element=button"> <input type="text"
								class="input-hidden j-input-hidden" name="rid"
								value="4d8a9b32a96e4dbcf3148021b259f167">
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		//F.context("page_base_url", "http:\/\/bj.nuomi.com\/all\/396-1375");
		//F.context("goods_total", "396");
		//F.context("goods_num", "72");
	</script>

	<div class="w-footer">
		<div class="wrap">


			<div class="site-info">
				<span class="copyright">©</span>2014&nbsp;nuomi.com &nbsp;<a
					href="http://www.miitbeian.gov.cn/" class="link" target="_blank">京ICP证060807号京公网安备</a>&nbsp;京公网安备11010802014106号&nbsp;<a
					href="http://s1.nuomi.bdimg.com/vone/img/license_v.jpg"
					class="link" target="_blank">工商注册号110000450203508</a>&nbsp;<a
					href="http://s1.nuomi.bdimg.com/vone/img/certificate.jpg"
					class="link" target="_blank">互联网药品信息服务资格证编号（京-经营性-2011-0009）</a>
			</div>
		</div>
	</div>




	<script>
		/* 配置需要统计的模块 */
		window.alogObjectConfig = { // 配置各种统计模块，不需要的模块不配置即可
			product : '273', // 必须, DP平台产品线id
			page : "273_274", // 必须, DP平台页面id

			// 性能
			speed : {
				sample : '0.8' // 抽样率, 0~1
			//special_pages: [{id:34,sample:1}] // 特殊页面，和老的性能配置一致
			//custom_metrics : ['c_item1','p_item3'],//自定义的性能指标，自动上报，只有这些指标都统计完毕之后数据才会发送
			},

			// 访问、点击
			//monkey: {
			// sample: '0.3'      // 抽样率, 0~1  建议使采样的pv控制在50万以内
			//hid: ''       // 兼容老版本的monkey，monkey实验的ID
			//pageflag: ''  // 个别特殊产品线使用的老monkey的pageflag
			// },

			// js异常
			exception : { // 注意：需要异常统计时，必须引入上面head中的相应代码
				sample : '0.8' // 抽样率, 0~1  建议使采样的pv控制在50万以内
			},

			// 新特性
			feature : {
				sample : '0.8' // 抽样率, 0~1  建议使采样的pv控制在50万以内
			},

			// csp监控【跨站资源、XSS漏洞】，csp的配置说明见下文的“高级功能”
			csp : {
				sample : '0.8', // 抽样率, 0~1  建议使采样的pv控制在100万以内

				// 默认的跨站策略, 产品线可以根据自己的实际情况进行修改
				'default-src' : [
						{
							match : '*bae.baidu.com',
							target : 'Accept,Warn'
						},
						{
							match : '*.baidu.com,*.bdstatic.com,*.bdimg.com,localhost,*.hao123.com,*.hao123img.com',
							target : 'Accept'
						}, {
							match : /^(127|172|192|10)(\.\d+){3}$/,
							target : 'Accept'
						}, {
							match : '*',
							target : 'Accept,Warn'
						} ],

				// 元素内联事件配置，跟踪线上的 DOM-XSS
				'inline' : {
					'len-limit' : [ // 长度限制。超过match字符数可做相应处理
					{
						match : 400,
						target : 'Accept,Warn'
					} ],
					'key-limit' : [ // 关键字限制。匹配match正则可做相应处理
					{
						match : /fromCharCode|getScript|alert\(\/|alert\(\d+/,
						target : 'Accept,Warn'
					} ],
					'unsafe-eval' : 'Accept,Warn' // 在内联事件里调用eval函数，可做相应处理
				}
			}
		};

		// pc和mobile端会稍有不同，必须严格按照该文档来部署，该段代码必须放在上面的window.alogObjectConfig配置之后
		void function(e, t, n, a, r, o) {
			function c(t) {
				e.attachEvent ? e.attachEvent("onload", t, !1)
						: e.addEventListener && e.addEventListener("load", t)
			}
			function i(e, n, a) {
				a = a || 15;
				var r = new Date;
				r.setTime((new Date).getTime() + 1e3 * a), t.cookie = e + "="
						+ escape(n) + ";path=/;expires=" + r.toGMTString()
			}
			function s(e) {
				var n = t.cookie
						.match(new RegExp("(^| )" + e + "=([^;]*)(;|$)"));
				return null != n ? unescape(n[2]) : null
			}
			function d() {
				var e = s("PMS_JT");
				if (e) {
					i("PMS_JT", "", -1);
					try {
						e = eval(e)
					} catch (n) {
						e = {}
					}
					e.r && t.referrer.replace(/#.*/, "") != e.r
							|| alog("speed.set", "wt", e.s)
				}
			}
			c(function() {
				alog("speed.set", "lt", +new Date), r = t.createElement(n),
						r.async = !0, r.src = a + "?v=" + ~(new Date / 864e5),
						o = t.getElementsByTagName(n)[0], o.parentNode
								.insertBefore(r, o)
			}), d()
		}(window, document, "script",
				"http://img.baidu.com/hunter/alog/dp.min.js");
	</script>

	<script>
		var monkeyPageId = "bainuo-list-page-channel";
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
						"list:widget/cinema_list/cinema_list.js" : {
							"url" : "http://newpc0.nuomi.bdimg.com/static/list/widget/cinema_list/cinema_list_28986c0.js",
							"pkg" : "list:p0",
							"deps" : [ "common:widget/ui/dialog/dialog.js",
									"common:widget/ui/template/template.js",
									"common:widget/map/map.js" ]
						},
						"list:widget/city_search/city_search.js" : {
							"url" : "http://newpc2.nuomi.bdimg.com/static/list/widget/city_search/city_search_7d702c5.js",
							"pkg" : "list:p0",
							"deps" : [ "common:widget/ui/suggestion/suggestion.js" ]
						},
						"list:widget/filter_ab/filter_ab.js" : {
							"url" : "http://newpc1.nuomi.bdimg.com/static/list/widget/filter_ab/filter_ab_d0fbe42.js",
							"pkg" : "list:p0",
							"deps" : [ "common:widget/ui/cookie/cookie.js" ]
						},
						"list:widget/filter_ab/filter_district_ab/filter_district_ab.js" : {
							"url" : "http://newpc2.nuomi.bdimg.com/static/list/widget/filter_ab/filter_district_ab/filter_district_ab_193b006.js",
							"pkg" : "list:p0",
							"deps" : [ "common:widget/ui/cookie/cookie.js" ]
						},
						"list:widget/filter_ab/filter_normal_ab/filter_normal_ab.js" : {
							"url" : "http://newpc0.nuomi.bdimg.com/static/list/widget/filter_ab/filter_normal_ab/filter_normal_ab_6ca83e0.js",
							"pkg" : "list:p0",
							"deps" : [ "common:widget/ui/cookie/cookie.js" ]
						},
						"list:widget/filter_ab/filter_top_nav/filter_top_nav.js" : {
							"url" : "http://newpc1.nuomi.bdimg.com/static/list/widget/filter_ab/filter_top_nav/filter_top_nav_379f3f8.js",
							"pkg" : "list:p0"
						},
						"list:widget/hotel_search_bar/hotel_search_bar.js" : {
							"url" : "http://newpc2.nuomi.bdimg.com/static/list/widget/hotel_search_bar/hotel_search_bar_1976cac.js",
							"pkg" : "list:p0"
						},
						"list:widget/ui/ad/ad.js" : {
							"url" : "http://newpc2.nuomi.bdimg.com/static/list/widget/ui/ad/ad_13ff9fb.js",
							"pkg" : "list:p0",
							"deps" : [ "common:widget/ui/sliderbar/sliderbar.js" ]
						},
						"list:widget/ui/ajax_get_goods/ajax_get_goods.js" : {
							"url" : "http://newpc0.nuomi.bdimg.com/static/list/widget/ui/ajax_get_goods/ajax_get_goods_1c10e5c.js",
							"pkg" : "list:p0"
						}
					},
					"pkg" : {
						"list:p0" : {
							"url" : "http://newpc1.nuomi.bdimg.com/static/list/pkg/list_827e67b.js"
						}
					}
				});
	</script>
	<script type="text/javascript"
		src="${ctx}/source/js/nuomi/common_d94e172.js"></script>
	<script type="text/javascript">
		
	</script>
	<script>
		var _trace_page_logid = 0986478187;
	</script>
	<div class="suggestion-wrap search-suggestion"
		id="j-suggestion-1419570985373"
		style="position: absolute; display: none; padding-bottom: 12px; width: 310px; top: 96px; left: 642.5px; z-index: 101;"></div>
	<div class="suggestion-wrap search-suggestion"
		id="j-suggestion-1419570985380"
		style="position: absolute; display: none; padding-bottom: 12px; width: 180px; top: 30px; left: 0px; z-index: 101;"></div>
	<div class="suggestion-wrap search-suggestion"
		id="j-suggestion-1419570985382"
		style="position: absolute; display: none; padding-bottom: 12px; width: 310px; top: 7560px; left: 497.5px; z-index: 101;"></div>
</body>
</html>