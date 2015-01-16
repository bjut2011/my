<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<style type="text/css">
html {
	-webkit-text-size-adjust: none;
}

body, html {
	margin: 0;
	padding: 0;
	font-size: 12px;
	font-family: Arial;
	background: #fff;
	width: 100%;
	height: 100%;
}

img {
	border: 0;
}

ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

a {
	text-decoration: none;
}

.logo1, .logo2, .container, .sc, .showbox, .item, .dispc, .disp, .desc,
	.dinfo, .pi, .pagec, .callaction {
	width: 100%;
	height: 100%;
	position: absolute;
	left: 0;
	top: 0;
	overflow: hidden;
}

.container {
	border: 0px #006ec3 solid;
	background: #fff;
	border-radius: 8px
}

.logo1, .logo2 {
	z-index: 50
}

.logo1, .logo2 {
	background: #006ec3
}

.pagec {
	cursor: pointer;
	z-index: 40;
}

.pagec:hover {
	opacity: 0.6;
	filter: alpha(opacity = 60);
}

.desc {
	text-align: center
}

.dinfo {
	font-family: microsoft yahei, simsun;
	color: #006ec3;
}

.pi {
	color: #ec5c20;
	font-family: microsoft yahei, simsun;
}

.line_through, .line_through * {
	text-decoration: line-through;
}
</style>

<script>
	function strSub(string) {
		var s1 = string.split(".")[2];
		var s2 = s1.split("/")[1];
		return s2;
	}
	// 获取8位随机数
	function myRan() {
		var str = "00000000";
		var aI = parseInt(Math.random() * 100000000);// 数值型
		var aS = str.substring(0, 8 - (aI + "").length) + aI;// 字符串型aI+""转化为字符串后计算长度
		return aS;
	}
	// 获取当前时间（yyyyMMddhhmmssS）
	function noTime() {
		return formateTiem("yyyyMMddhhmmssS");
	}
	// 对Date的扩展，将 Date 转化为指定格式的String
	// 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符，
	// 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字)
	// 例子：
	// (new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423
	// (new Date()).Format("yyyy-M-d h:m:s.S") ==> 2006-7-2 8:9:4.18
	function formateTiem(fmt) { // author: meizz
		var now = new Date();
		var o = {
			"M+" : now.getMonth() + 1, // 月份
			"d+" : now.getDate(), // 日
			"h+" : now.getHours(), // 小时
			"m+" : now.getMinutes(), // 分
			"s+" : now.getSeconds(), // 秒
			"q+" : Math.floor((now.getMonth() + 3) / 3), // 季度
			"S" : now.getMilliseconds()
		// 毫秒
		};
		if (/(y+)/.test(fmt))
			fmt = fmt.replace(RegExp.$1, (now.getFullYear() + "")
					.substr(4 - RegExp.$1.length));
		for ( var k in o)
			if (new RegExp("(" + k + ")").test(fmt))
				fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k])
						: (("00" + o[k]).substr(("" + o[k]).length)));
		return fmt;
	}
	var proInfo = eval("(" + document.getElementById("info").value + ")");
	var skuList = proInfo[0].skuList;
	var _AdID = proInfo[0].position;
	var tactics = proInfo[0].tactics;
	var _requestID = _AdID + myRan() + noTime();
	var dspUrl = proInfo[0].dspUrl;
	var defaultUrl = "http://www.suning.com";
	var logoClick = proInfo[0].logoClick == null || proInfo[0].logoClick == "" ? defaultUrl
			: proInfo[0].logoClick;
	var sloganClick = proInfo[0].sloganClick == null
			|| proInfo[0].sloganClick == "" ? defaultUrl
			: proInfo[0].sloganClick;
	var logo = proInfo[0].logo == null || proInfo[0].logo == "" ? "suning_n_images/h_logo.png"
			: proInfo[0].logo;
	var slogan = proInfo[0].slogan == null || proInfo[0].slogan == "" ? "suning_n_images/h_slogan.gif"
			: proInfo[0].slogan;
	var __sa__ = {
		AdID : _AdID,
		Cookie_ID : proInfo[0].cookieId,
		REQUESTID : _requestID,
		Pro_IDS : "",
		EXPO_Content : tactics
	};
	var __gdsId__ = {};
	if (dspUrl == null) {
		var logoUrl = {
			"logoClick" : logoClick + proInfo[0].urlFlag + "&utm_campaign="
					+ _AdID + "," + _requestID + "&utm_content=" + tactics
		};
		var sloganUrl = {
			"sloganClick" : sloganClick + proInfo[0].urlFlag + "&utm_campaign="
					+ _AdID + "," + _requestID + "&utm_content=" + tactics
		};
		for (var i = 0; i < skuList.length; i++) {
			if (i == skuList.length - 1) {
				__sa__.Pro_IDS += strSub(skuList[i].cu);
			} else {
				__sa__.Pro_IDS += strSub(skuList[i].cu) + ",";
			}
			skuList[i].cu = skuList[i].cu + proInfo[0].urlFlag
					+ "&utm_campaign=" + _AdID + "," + _requestID
					+ "&utm_content=" + tactics;
		}
	} else {
		var logoUrl = {
			"logoClick" : dspUrl + logoClick + proInfo[0].urlFlag
					+ "&utm_campaign=" + _AdID + "," + _requestID
					+ "&utm_content=" + tactics
		};
		var sloganUrl = {
			"sloganClick" : dspUrl + sloganClick + proInfo[0].urlFlag
					+ "&utm_campaign=" + _AdID + "," + _requestID
					+ "&utm_content=" + tactics
		};
		for (var i = 0; i < skuList.length; i++) {
			if (i == skuList.length - 1) {
				__sa__.Pro_IDS += strSub(skuList[i].cu);
			} else {
				__sa__.Pro_IDS += strSub(skuList[i].cu) + ",";
			}
			skuList[i].cu = dspUrl + skuList[i].cu + proInfo[0].urlFlag
					+ "&utm_campaign=" + _AdID + "," + _requestID
					+ "&utm_content=" + tactics;
		}
	}
	window.__zp_config_init = {
		z_bid : 0,//广告位id 可自定义 一个页面中不可有重复的广告位id
		z_cid : '__suning_manual',//广告标识 可自定义 建议不修改
		w : proInfo[0].w,//广告位的宽度 可自行调整
		h : proInfo[0].h,//广告位的高度 可自行调整
		js : 'zpda_manual_2.js',//广告js引擎文件 可调整为具体的url地址
		z_path : '',//不要修改
		loader : 'template_file_2.0/tploader_1_manual.htm',//广告模板加载器 可调整为具体的url地址
		template : 'suning_manual_auto_h_n_2.htm',//广告展示模板文件名 此文件必须与模板加载器放在同一目录中
		mLists : skuList,
		templateManual : {//有更多丰富的配置属性，见说明文档
			logoClick : logoUrl.logoClick,
			sloganClick : sloganUrl.sloganClick,
			slogan : slogan,
			logo : logo
		},
		clickEvent : {//具体属性事件所对应的涵义，见说明文档
			"item-0" : function(e) {
				__sa__.dsp
						.sendClick(
								e,
								skuList[0].cu,
								new RegExp(
										"http://product\\.suning\\.com/(|[\\d]+/)([\\d]+)\\.html"),
								3, 2, "-");
			},
			"item-1" : function(e) {
				__sa__.dsp
						.sendClick(
								e,
								skuList[1].cu,
								new RegExp(
										"http://product\\.suning\\.com/(|[\\d]+/)([\\d]+)\\.html"),
								3, 2, "-");
			},
			"item-2" : function(e) {
				__sa__.dsp
						.sendClick(
								e,
								skuList[2].cu,
								new RegExp(
										"http://product\\.suning\\.com/(|[\\d]+/)([\\d]+)\\.html"),
								3, 2, "-");
			},
			"item-3" : function(e) {
				__sa__.dsp
						.sendClick(
								e,
								skuList[3].cu,
								new RegExp(
										"http://product\\.suning\\.com/(|[\\d]+/)([\\d]+)\\.html"),
								3, 2, "-");
			},
			"item-4" : function(e) {
				__sa__.dsp
						.sendClick(
								e,
								skuList[4].cu,
								new RegExp(
										"http://product\\.suning\\.com/(|[\\d]+/)([\\d]+)\\.html"),
								3, 2, "-");
			},
			"item-5" : function(e) {
				__sa__.dsp
						.sendClick(
								e,
								skuList[5].cu,
								new RegExp(
										"http://product\\.suning\\.com/(|[\\d]+/)([\\d]+)\\.html"),
								3, 2, "-");
			},
			"item-6" : function(e) {
				__sa__.dsp
						.sendClick(
								e,
								skuList[6].cu,
								new RegExp(
										"http://product\\.suning\\.com/(|[\\d]+/)([\\d]+)\\.html"),
								3, 2, "-");
			},
			"item-7" : function(e) {
				__sa__.dsp
						.sendClick(
								e,
								skuList[7].cu,
								new RegExp(
										"http://product\\.suning\\.com/(|[\\d]+/)([\\d]+)\\.html"),
								3, 2, "-");
			},
			"item-8" : function(e) {
				__sa__.dsp
						.sendClick(
								e,
								skuList[8].cu,
								new RegExp(
										"http://product\\.suning\\.com/(|[\\d]+/)([\\d]+)\\.html"),
								3, 2, "-");
			},
			"item-9" : function(e) {
				__sa__.dsp
						.sendClick(
								e,
								skuList[9].cu,
								new RegExp(
										"http://product\\.suning\\.com/(|[\\d]+/)([\\d]+)\\.html"),
								3, 2, "-");
			},
			"logo" : function(e) {
				__sa__.dsp
						.sendClick(e, logoUrl.logoClick, null, 0, 0, "suning");
			},
			"slogan" : function(e) {
				__sa__.dsp.sendClick(e, sloganUrl.sloganClick, null, 0, 0,
						"sales");
			},
			"prevButton" : function(e) {
				__sa__.dsp.sendClick(e, "button", null, 0, 0, "button");
			},
			"nextButton" : function(e) {
				__sa__.dsp.sendClick(e, "button", null, 0, 0, "button");
			}
		}
	};
	document
			.write('<script type="text/javascript" src="' + __zp_config_init.js + '" charset="utf-8" id="' + __zp_config_init.z_cid + __zp_config_init.z_bid + '"><\/script>');
</script>
</head>

<body>
	<script type="text/javascript" src="${ctx}/source/js/re/tpi_32.js"></script>
	<div class="container">


		<div class="sc">
			<script type="text/javascript">
			<!--
				!function() {
					var aA = '';
					for (var i = 1; i <= 10 && i <= parent.__init.mLists.length; i++) {
						var I = parent.__init.mLists[i - 1];
						aA += ('<div class="showbox" title="'+I.d+'"><a from="'
								+ i
								+ '" class="event event-click-item-'
								+ (i - 1)
								+ '"><div class="item"><div class="desc"><zpdes from="'+i+'" class="dinfo"></zpdes><div class="pi line_through">'
								+ (I.oldPrice || '') + '</div><div class="callaction"></div></div><div  class="dispc"><zpshow class="disp" titlemark="'+i+'"></zpshow></div></div></a></div>');
					}
					document.write(aA);
				}();
			//-->
			</script>
			<div class="showbox" title="美赞臣2段安婴宝A+全新3袋装" style="left: -1000px;">
				<a from="1" class="event event-click-item-0"
					href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0070073469/102461604.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
					target="_blank"><div class="item">
						<div class="desc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0070073469/102461604.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank" from="1" class="dinfo"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 22px;"><span
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 20px; font-size: 12px; display: inline-block; margin-top: 1px;">美赞臣2段安婴宝A…</span></a>
							<div class="pi line_through"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 29px;">
								<span
									style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 28px; font-size: 22px; display: inline-block; margin-top: 1px;">￥239.00</span>
							</div>
							<div class="callaction"
								style="font-size: 0px; line-height: 0; width: 110px; height: 29px;">
								<img
									style="display: block; margin: 0px; padding: 0px; border: 0px; position: absolute; width: 91px; height: 22px; left: 10px; top: 4px; background: none;"
									class="__staticImg"
									src="${ctx}/source/images/suning_n_images/h_callaction.png">
								<div
									style="position: absolute; opacity: 0; filter: alpha(opacity = 0); width: 100%; height: 100%; background: #fff; -moz-user-select: none;"></div>
							</div>
						</div>
						<div class="dispc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0070073469/102461604.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank"><img
								src="http://image.suning.cn/content/catentries/00000000010246/000000000102461604/fullimage/000000000102461604_1.jpg"
								class="disp" titlemark="1"></a>
						</div>
					</div></a>
			</div>
			<div class="showbox" title="华为手机荣耀6联通4G（H60-L02）（16GB）（白） "
				style="left: -1000px;">
				<a from="2" class="event event-click-item-1"
					href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0070073009/121285145.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
					target="_blank"><div class="item">
						<div class="desc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0070073009/121285145.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank" from="2" class="dinfo"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 22px;"><span
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 20px; font-size: 12px; display: inline-block; margin-top: 1px;">华为手机荣耀6联…</span></a>
							<div class="pi line_through"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 29px;">
								<span
									style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 28px; font-size: 22px; display: inline-block; margin-top: 1px;">￥1874.00</span>
							</div>
							<div class="callaction"
								style="font-size: 0px; line-height: 0; width: 110px; height: 29px;">
								<img
									style="display: block; margin: 0px; padding: 0px; border: 0px; position: absolute; width: 91px; height: 22px; left: 10px; top: 4px; background: none;"
									class="__staticImg"
									src="${ctx}/source/images/suning_n_images/h_callaction.png">
								<div
									style="position: absolute; opacity: 0; filter: alpha(opacity = 0); width: 100%; height: 100%; background: #fff; -moz-user-select: none;"></div>
							</div>
						</div>
						<div class="dispc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0070073009/121285145.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank"><img
								src="http://image.suning.cn/content/catentries/00000000012128/000000000121285145/fullimage/000000000121285145_1.jpg"
								class="disp" titlemark="2"></a>
						</div>
					</div></a>
			</div>
			<div class="showbox" title="华为手机荣耀6移动4G（H60-L01）（16GB）（白） "
				style="left: -1000px;">
				<a from="3" class="event event-click-item-2"
					href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0070066243/120908224.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
					target="_blank"><div class="item">
						<div class="desc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0070066243/120908224.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank" from="3" class="dinfo"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 22px;"><span
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 20px; font-size: 12px; display: inline-block; margin-top: 1px;">华为手机荣耀6移…</span></a>
							<div class="pi line_through"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 29px;">
								<span
									style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 28px; font-size: 22px; display: inline-block; margin-top: 1px;">￥1945.00</span>
							</div>
							<div class="callaction"
								style="font-size: 0px; line-height: 0; width: 110px; height: 29px;">
								<img
									style="display: block; margin: 0px; padding: 0px; border: 0px; position: absolute; width: 91px; height: 22px; left: 10px; top: 4px; background: none;"
									class="__staticImg"
									src="${ctx}/source/images/suning_n_images/h_callaction.png">
								<div
									style="position: absolute; opacity: 0; filter: alpha(opacity = 0); width: 100%; height: 100%; background: #fff; -moz-user-select: none;"></div>
							</div>
						</div>
						<div class="dispc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0070066243/120908224.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank"><img
								src="http://image.suning.cn/content/catentries/00000000012090/000000000120908224/fullimage/000000000120908224_1.jpg"
								class="disp" titlemark="3"></a>
						</div>
					</div></a>
			</div>
			<div class="showbox"
				title="方太（FOTILE）CXW-200-EH29T+JZT-FD21BE-12T油烟机燃气灶具套餐"
				style="left: -1000px;">
				<a from="4" class="event event-click-item-3"
					href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0000000000/108928705.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
					target="_blank"><div class="item">
						<div class="desc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0000000000/108928705.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank" from="4" class="dinfo"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 22px;"><span
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 20px; font-size: 12px; display: inline-block; margin-top: 1px;">方太（FOTILE）C…</span></a>
							<div class="pi line_through"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 29px;">
								<span
									style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 28px; font-size: 22px; display: inline-block; margin-top: 1px;">￥3999.00</span>
							</div>
							<div class="callaction"
								style="font-size: 0px; line-height: 0; width: 110px; height: 29px;">
								<img
									style="display: block; margin: 0px; padding: 0px; border: 0px; position: absolute; width: 91px; height: 22px; left: 10px; top: 4px; background: none;"
									class="__staticImg"
									src="${ctx}/source/images/suning_n_images/h_callaction.png">
								<div
									style="position: absolute; opacity: 0; filter: alpha(opacity = 0); width: 100%; height: 100%; background: #fff; -moz-user-select: none;"></div>
							</div>
						</div>
						<div class="dispc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0000000000/108928705.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank"><img
								src="http://image.suning.cn/content/catentries/00000000010892/000000000108928705/fullimage/000000000108928705_1.jpg"
								class="disp" titlemark="4"></a>
						</div>
					</div></a>
			</div>
			<div class="showbox" title="美的厨电套装CXW-200-DJ352R+JZT-Q636B "
				style="left: -1000px;">
				<a from="5" class="event event-click-item-4"
					href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0000000000/121217689.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
					target="_blank"><div class="item">
						<div class="desc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0000000000/121217689.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank" from="5" class="dinfo"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 22px;"><span
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 20px; font-size: 12px; display: inline-block; margin-top: 1px;">美的厨电套装CXW…</span></a>
							<div class="pi line_through"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 29px;">
								<span
									style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 28px; font-size: 22px; display: inline-block; margin-top: 1px;">￥2599.00</span>
							</div>
							<div class="callaction"
								style="font-size: 0px; line-height: 0; width: 110px; height: 29px;">
								<img
									style="display: block; margin: 0px; padding: 0px; border: 0px; position: absolute; width: 91px; height: 22px; left: 10px; top: 4px; background: none;"
									class="__staticImg"
									src="${ctx}/source/images/suning_n_images/h_callaction.png">
								<div
									style="position: absolute; opacity: 0; filter: alpha(opacity = 0); width: 100%; height: 100%; background: #fff; -moz-user-select: none;"></div>
							</div>
						</div>
						<div class="dispc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0000000000/121217689.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank"><img
								src="http://image.suning.cn/content/catentries/00000000012121/000000000121217689/fullimage/000000000121217689_1.jpg"
								class="disp" titlemark="5"></a>
						</div>
					</div></a>
			</div>
			<div class="showbox" title="苹果手机iPhone6(16G)(深空灰)移动版"
				style="left: -1000px;">
				<a from="6" class="event event-click-item-5"
					href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0070073009/123125728.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
					target="_blank"><div class="item">
						<div class="desc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0070073009/123125728.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank" from="6" class="dinfo"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 22px;"><span
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 20px; font-size: 12px; display: inline-block; margin-top: 1px;">苹果手机iPhone6(…</span></a>
							<div class="pi line_through"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 29px;">
								<span
									style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 28px; font-size: 22px; display: inline-block; margin-top: 1px;">￥5488.00</span>
							</div>
							<div class="callaction"
								style="font-size: 0px; line-height: 0; width: 110px; height: 29px;">
								<img
									style="display: block; margin: 0px; padding: 0px; border: 0px; position: absolute; width: 91px; height: 22px; left: 10px; top: 4px; background: none;"
									class="__staticImg"
									src="${ctx}/source/images/suning_n_images/h_callaction.png">
								<div
									style="position: absolute; opacity: 0; filter: alpha(opacity = 0); width: 100%; height: 100%; background: #fff; -moz-user-select: none;"></div>
							</div>
						</div>
						<div class="dispc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0070073009/123125728.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank"><img
								src="http://image.suning.cn/content/catentries/00000000012312/000000000123125728/fullimage/000000000123125728_1.jpg"
								class="disp" titlemark="6"></a>
						</div>
					</div></a>
			</div>
			<div class="showbox" title="老板厨电套装CXW-200-8009(JZ(Y/T/R)-33B7)（赠水壶） "
				style="left: 0px;">
				<a from="7" class="event event-click-item-6"
					href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0000000000/120047576.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
					target="_blank"><div class="item">
						<div class="desc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0000000000/120047576.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank" from="7" class="dinfo"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 22px;"><span
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 20px; font-size: 12px; display: inline-block; margin-top: 1px;">老板厨电套装CXW…</span></a>
							<div class="pi line_through"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 29px;">
								<span
									style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 28px; font-size: 22px; display: inline-block; margin-top: 1px;">￥3780.00</span>
							</div>
							<div class="callaction"
								style="font-size: 0px; line-height: 0; width: 110px; height: 29px;">
								<img
									style="display: block; margin: 0px; padding: 0px; border: 0px; position: absolute; width: 91px; height: 22px; left: 10px; top: 4px; background: none;"
									class="__staticImg"
									src="${ctx}/source/images/suning_n_images/h_callaction.png">
								<div
									style="position: absolute; opacity: 0; filter: alpha(opacity = 0); width: 100%; height: 100%; background: #fff; -moz-user-select: none;"></div>
							</div>
						</div>
						<div class="dispc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0000000000/120047576.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank"><img
								src="http://image.suning.cn/content/catentries/00000000012004/000000000120047576/fullimage/000000000120047576_1.jpg"
								class="disp" titlemark="7"></a>
						</div>
					</div></a>
			</div>
			<div class="showbox" title="华硕W40CC3537-554ASCR2XC0"
				style="left: -1000px;">
				<a from="8" class="event event-click-item-7"
					href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0070074309/120771838.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
					target="_blank"><div class="item">
						<div class="desc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0070074309/120771838.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank" from="8" class="dinfo"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 22px;"><span
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 20px; font-size: 12px; display: inline-block; margin-top: 1px;">华硕W40CC3537-…</span></a>
							<div class="pi line_through"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 29px;">
								<span
									style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 28px; font-size: 22px; display: inline-block; margin-top: 1px;">￥4299.00</span>
							</div>
							<div class="callaction"
								style="font-size: 0px; line-height: 0; width: 110px; height: 29px;">
								<img
									style="display: block; margin: 0px; padding: 0px; border: 0px; position: absolute; width: 91px; height: 22px; left: 10px; top: 4px; background: none;"
									class="__staticImg"
									src="${ctx}/source/images/suning_n_images/h_callaction.png">
								<div
									style="position: absolute; opacity: 0; filter: alpha(opacity = 0); width: 100%; height: 100%; background: #fff; -moz-user-select: none;"></div>
							</div>
						</div>
						<div class="dispc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0070074309/120771838.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank"><img
								src="http://image.suning.cn/content/catentries/00000000012077/000000000120771838/fullimage/000000000120771838_1.jpg"
								class="disp" titlemark="8"></a>
						</div>
					</div></a>
			</div>
			<div class="showbox"
				title="Apple iPad Air MD788CH/A WiFi版 9.7英寸平板电脑 16G 银色"
				style="left: -1000px;">
				<a from="9" class="event event-click-item-8"
					href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0000000000/104885900.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
					target="_blank"><div class="item">
						<div class="desc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0000000000/104885900.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank" from="9" class="dinfo"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 22px;"><span
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 20px; font-size: 12px; display: inline-block; margin-top: 1px;">Apple
									iPad Air M…</span></a>
							<div class="pi line_through"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 29px;">
								<span
									style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 28px; font-size: 22px; display: inline-block; margin-top: 1px;">￥2799.00</span>
							</div>
							<div class="callaction"
								style="font-size: 0px; line-height: 0; width: 110px; height: 29px;">
								<img
									style="display: block; margin: 0px; padding: 0px; border: 0px; position: absolute; width: 91px; height: 22px; left: 10px; top: 4px; background: none;"
									class="__staticImg"
									src="${ctx}/source/images/suning_n_images/h_callaction.png">
								<div
									style="position: absolute; opacity: 0; filter: alpha(opacity = 0); width: 100%; height: 100%; background: #fff; -moz-user-select: none;"></div>
							</div>
						</div>
						<div class="dispc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0000000000/104885900.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank"><img
								src="http://image.suning.cn/content/catentries/00000000010488/000000000104885900/fullimage/000000000104885900_1.jpg"
								class="disp" titlemark="9"></a>
						</div>
					</div></a>
			</div>
			<div class="showbox"
				title="Apple iPad Air MD789CH/A WiFi版 9.7英寸平板电脑 32G 银色"
				style="left: -1000px;">
				<a from="10" class="event event-click-item-9"
					href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0070070818/104885901.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
					target="_blank"><div class="item">
						<div class="desc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0070070818/104885901.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank" from="10" class="dinfo"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 22px;"><span
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 20px; font-size: 12px; display: inline-block; margin-top: 1px;">Apple
									iPad Air M…</span></a>
							<div class="pi line_through"
								style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: 29px;">
								<span
									style="overflow: hidden; text-overflow: ellipsis; word-wrap: break-word; word-break: break-all; height: auto; line-height: 28px; font-size: 22px; display: inline-block; margin-top: 1px;">￥3288.00</span>
							</div>
							<div class="callaction"
								style="font-size: 0px; line-height: 0; width: 110px; height: 29px;">
								<img
									style="display: block; margin: 0px; padding: 0px; border: 0px; position: absolute; width: 91px; height: 22px; left: 10px; top: 4px; background: none;"
									class="__staticImg"
									src="${ctx}/source/images/suning_n_images/h_callaction.png">
								<div
									style="position: absolute; opacity: 0; filter: alpha(opacity = 0); width: 100%; height: 100%; background: #fff; -moz-user-select: none;"></div>
							</div>
						</div>
						<div class="dispc">
							<a
								href="http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=http://product.suning.com/0070070818/104885901.html?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&amp;utm_campaign=10041401,10041401863086502014112013523875&amp;utm_content=3"
								target="_blank"><img
								src="http://image.suning.cn/content/catentries/00000000010488/000000000104885901/fullimage/000000000104885901_1.jpg"
								class="disp" titlemark="10"></a>
						</div>
					</div></a>
			</div>
		</div>

		<a class="pagec pagec1 prev event event-click-prevButton" id="prev"
			hidefocus="true" istouch="1"
			style="font-size: 0px; line-height: 0; width: 21px; height: 96px;"><img
			style="display: block; margin: 0px; padding: 0px; border: 0px; position: absolute; width: 15px; height: 36px; left: 3px; top: 30px; background: none;"
			class="__staticImg"
			src="${ctx}/source/images/suning_n_images/left.png">
			<div
				style="position: absolute; opacity: 0; filter: alpha(opacity = 0); width: 100%; height: 100%; background: #fff; -moz-user-select: none;"></div></a>
		<a class="pagec pagec2 next event event-click-nextButton" id="next"
			hidefocus="true"
			style="font-size: 0px; line-height: 0; width: 21px; height: 96px;"><img
			style="display: block; margin: 0px; padding: 0px; border: 0px; position: absolute; width: 15px; height: 36px; left: 3px; top: 30px; background: none;"
			class="__staticImg"
			src="${ctx}/source/images/suning_n_images/right.png">
			<div
				style="position: absolute; opacity: 0; filter: alpha(opacity = 0); width: 100%; height: 100%; background: #fff; -moz-user-select: none;"></div></a>

	</div>
	<script type="text/javascript">
	<!--
		var I = __tpf.methods, C = I.attachDOMEvent, aw = I.detachDOMEvent, at = I.createSimplePart, m = I.getElementsByClassName, aL = I.getClass, aB = I.removeClass, aK = I.setClass, az = I.styleChanging, ax = I.unRegListener, aq = I.detachCustomEventAll, ae = I.windowOpen, ar = I.rotateBox, aF = I.textNarrow, af = I.textClip, aI = I.drawGraph, av = I.fillBackground, al = I.getTrueSize, B = I.setBackground, D = I.relationModel, aM = I.getFontInfo, aC = I.getCurrentStyle, aR = I.addCss;
		var n = parent.__init.templateManual || {};
		parent.__eventBind();
	//-->
	</script>
	<script type="text/javascript">
	<!--
		!function() {
			var J = m('container')[0], as = parseInt(document.body.offsetWidth)
					|| parseInt(document.documentElement.clientWidth), ap = parseInt(document.body.offsetHeight)
					|| parseInt(document.documentElement.clientHeight), X = 2, O = 2, U = 2, R = 2, v = as
					- U - R, o = ap - X - O;
			var F = '';
			window.__containerWdith = v;
			window.__containerHeight = o;
			F += '.container{width:' + v + 'px;height:' + o
					+ 'px;border-top-width:' + X + 'px;border-bottom-width:'
					+ O + 'px;border-left-width:' + U
					+ 'px;border-right-width:' + R + 'px}';
			F += '.logo1{background-color:' + (n.logoBackgroundColor || '')
					+ ';}.logo2{background-color:'
					+ (n.sloganBackgroundColor || '') + ';}';
			var A = window.__labelMap = {};
			var aX = Math.round(o * 2.163), aW = Math.round(o * 1.523);
			F += new D({
				limit : v,
				gMap : A,
				memberList : [
						{
							min : 50,
							hidden : 1,
							linked : 1,
							memberList : [ {
								css : '.logo1',
								ratio : 0.57,
								min : 50,
								pos : 1
							}, {
								css : '.logo2',
								min : 60,
								hidden : 1
							} ]
						},
						{
							lr : 1,
							pr : 1,
							min : 200,
							length : v
									- Math.round([ aX + aW, v * 0.334 ]
											.sort(function(a, b) {
												return a - b
											})[0]),
							linked : 1,
							memberList : [ {
								ratio : 0.05,
								label : 'pagec1W',
								min : 20,
								css : '.pagec1',
								pr : 4,
								pos : 2
							}, {
								label : 'scW',
								css : '.sc',
								min : 200 + 40 > v ? v - 30 : 200,
								pr : 3,
								lr : 3,
								pos : 3
							}, {
								ratio : 0.05,
								label : 'pagec2W',
								css : '.pagec2',
								min : 20,
								pr : 4,
								pos : 4
							} ]
						} ]
			}).renderCss();
			var an = [], aQ = [ o, 90 ].sort(function(a, b) {
				return a - b
			})[0];
			for (var i = 1; i <= parent.__init.mLists.length; i++) {
				an.push({
					label : 'showboxCount' + i,
					min : [ Math.round(aQ * 1.77), 150 ].sort(function(a, b) {
						return b - a
					})[0],
					hidden : (i > 1 ? 1 : 0)
				});
			}
			new D({
				limit : A.scW.info.width,
				gMap : A,
				memberList : an
			}).getComputedValue();
			var Q = 0, ah, aG = [];
			for (var i = 1; i <= parent.__init.mLists.length; i++) {
				if (A['showboxCount' + i].info.width > 0) {
					aG.push(A['showboxCount' + i].info.width);
					Q = i
				}
			}
			ah = aG.sort(function(a, b) {
				return b - a
			})[0];
			F += '.showbox{width:' + ah + 'px;}';
			F += new D({
				limit : ah,
				gMap : A,
				memberList : [
						{
							forLabel : 'descW'
						},
						{
							css : '.dispc',
							ratio : 0.425,
							label : 'dispcW',
							min : 40,
							hidden : 1,
							forLabel : 'descW'
						},
						{
							length : 2
						},
						{
							label : 'descW',
							length : [ Math.round(ah * 0.575), ah - (40 + 1) ]
									.sort(function(a, b) {
										return a - b
									})[0],
							min : 98,
							max : 120,
							css : '.desc',
							pr : 2,
							lr : 1,
							hidden : 2
						}, {
							forLabel : 'descW'
						}, {
							length : 1,
							pr : 1
						} ]
			}).renderCss();
			var V = al(A.dispcW.info.width, o, parent.__init.mLists[0].w,
					parent.__init.mLists[0].h);
			F += '.disp{width:' + V[0] + 'px;height:' + V[1] + 'px;left:'
					+ Math.round((A.dispcW.info.width - V[0]) / 2) + 'px;top:'
					+ Math.round((o - V[1]) / 2) + 'px}';
			F += new D({
				limit : o,
				type : 'top',
				gMap : A,
				memberList : [ {}, {
					label : 'dinfoH',
					ratio : 0.233,
					min : 18,
					max : 60,
					css : '.dinfo',
					hidden : 2,
					pr : 2
				}, {
					ratio : 0.302,
					min : 18,
					max : 30,
					css : '.pi',
					hidden : 1,
					forLabel : 'callactionH'
				}, {
					label : 'callactionH',
					ratio : 0.302,
					min : 22,
					max : 40,
					css : '.callaction',
					hidden : 1,
					forLabel : 'dinfoH',
					pr : 1
				}, {} ]
			}).renderCss();
			window.__showBoxWidth = ah;
			window.__showDis = ah + 1;
			window.__showBoxCount = Q;
			if (document.createStyleSheet) {
				document.createStyleSheet().cssText = F;
			} else {
				document.write('<style>' + F + '</style>');
			}
		}();
	//-->
	</script>
	<style>
.container {
	width: 96%;
	height: 96%;
	border-top-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-right-width: 1px
}

.logo1 {
	background-color:;
}

.logo2 {
	background-color:;
}

.logo1 {
	width: 121px;
	left: 0px;
}

.pagec1 {
	width: 21px;
	left: 0px;
}

.sc {
	width: 100%;
	left: 21px;
}

.pagec2 {
	width: 21px;
	left: 231px;
}

.logo2 {
	width: 91px;
	left: 545px;
}

.showbox {
	width: 191px;
}

.dispc {
	width: 80px;
	left: 0px;
}

.desc {
	width: 110px;
	left: 80px;
}

.disp {
	width: 80px;
	height: 80px;
	left: 0px;
	top: 8px
}

.dinfo {
	height: 22px;
	top: 8px;
}

.pi {
	height: 29px;
	top: 30px;
}

.callaction {
	height: 29px;
	top: 59px;
}
</style>

	<script type="text/javascript">
	<!--
		!function() {
			B({
				src : n.logo || 'suning_n_images/h_logo.png',
				container : m('logo1')[0],
				margin : (n.logoPadding || 4) * 1
			});
			B({
				src : n.slogan || 'suning_n_images/h_slogan.gif',
				container : m('logo2')[0],
				margin : (n.sloganPadding || 4) * 1
			});
			B({
				src : n.prevButton || 'suning_n_images/left.png',
				container : m('pagec1')[0],
				margin : 2
			});
			B({
				src : n.nextButton || 'suning_n_images/right.png',
				container : m('pagec2')[0],
				margin : 2
			});
			B({
				src : n.callaction || 'suning_n_images/h_callaction.png',
				container : m('callaction')
			});
		}();
	//-->
	</script>
	<script type="text/javascript">
	<!--
		var M = {
			'logo1' : n.logoClick || '',
			'logo2' : n.sloganClick || ''
		}, au = __showDis, Q = __showBoxCount, ao = 1, J = m('container')[0], G = m('showbox'), Z = m('prev'), aa = m('next'), ak = function(
				i) {
			var K = i;
			for ( var aP in M) {
				for (var aO = 0, aV = m('otherurl_' + aP), aN; aN = aV[aO]; aO++) {
					if (aN.tagName == 'A')
						aN.href = (parent.__getClkUrl(parent.__init.mLists[K],
								M[aP]) || parent.__init.mLists[K].cu);
				}
			}
		}, ac = function(i) {
		}, ai = function(i) {
			af({
				target : m('dinfo', G[i])[0],
				auto : {
					maxLineCount : 2,
					fontRatio : 0.6,
					maxFontSize : __labelMap.dinfoH.info.height < 40 ? 12 : 14,
					sizeForWidthRatio : 0.11
				}
			});
			af({
				target : m('pi', G[i])[0],
				auto : {
					maxLineCount : 1,
					autoNarrow : true,
					fontRatio : 0.8
				}
			});
		};
		var P, H, ab = 0, ag = {}, aJ = {}, ay = -1;
		function c(i) {
			clearTimeout(P);
			P = setTimeout(
					function() {
						!ag[i]
								&& parent.__init.mLists[i]
								&& parent
										.__zp_send_track(parent.__init.mLists[i].focusTrack);
						ag[i] = 1;
					}, 1000);
		};
		C(J, 'onmouseover', function() {
			clearTimeout(H);
			ab = 1;
			try {
				c(r.getIndex());
			} catch (e) {
			}
			;
		});
		C(J, 'onmouseout', function() {
			clearTimeout(H);
			clearTimeout(P);
			H = setTimeout(function() {
				ab = 0;
			}, 13);
		});
		function l(a, b) {
			return parseInt(Math.random() * (b - a + 1) + a);
		};
		function g(a) {
			if (!window.__DesNum || window.__DesNum < 2)
				window.__DesNum = (a + 1);
			window.__DesNum--;
			return window.__DesNum;
		};
		for (var i = 0, j; j = aa[i]; i++) {
			!function(i, j) {
				C(j, 'onclick', function(e) {
					var K = r && r.getIndex() || 0;
					L == 1
							&& ae(parent.__getClkUrl(parent.__init.mLists[K],
									M['logo'])
									|| parent.__init.mLists[K].cu);
				})
			}(i, j);
		}
		for (var i = 0, j; j = Z[i]; i++) {
			!function(i, j) {
				C(j, 'onclick', function(e) {
					var K = r && r.getIndex() || 0;
					L == 1
							&& ae(parent.__getClkUrl(parent.__init.mLists[K],
									M['logo'])
									|| parent.__init.mLists[K].cu);
				})
			}(i, j);
		}
		var L;
		var am = {};
		var aj = new ar({
			box : J,
			triggers : G,
			items : G,
			triggerCall : ak,
			noTriggerCall : ac,
			next : aa,
			prev : Z,
			inter : n.inter,
			page : {
				sons : G,
				dis : au,
				range : Q,
				moveStyle : 'left',
				turnPagesCount : ao,
				layCall : function(i, d, j) {
					if (!am[j]) {
						am[j] = 1;
						parent.__start(j + 1);
						ai(j);
					}
				}
			},
			nextCallLast : function() {
				try {
					c(r.getIndex());
				} catch (e) {
				}
				;
			},
			prevCallLast : function() {
				try {
					c(r.getIndex());
				} catch (e) {
				}
				;
			},
			nextCallFirst : function() {
				L = g(parent.__init.pdn || -1);
				if (L == 1)
					return false;
			},
			prevCallFirst : function() {
				L = g(parent.__init.pdn || -1);
				if (L == 1)
					return false;
			}
		});
		var r = aj.bindedRotate;
		if (parent.__init.t == 1) {
			var T, Y = 1;
			function f() {
				Y = 1;
				clearTimeout(T);
				T = setTimeout(k, 28000);
			}
			;
			function k() {
				Y = 0;
				r.end();
			}
			;
			C(m('container')[0], 'onmousemove', function() {
				f();
			});
			f();
		}
		parent.__init.custom && parent.__start();
	//-->
	</script>
</body>
</html>