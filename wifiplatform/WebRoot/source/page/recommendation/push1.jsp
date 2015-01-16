<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body>
	<div></div>
	<div></div>
	<div></div>
	<style type="text/css">
html, body {
	margin: 0;
	padding: 0
}
</style>
	<input id="info" style="display: none"
		value="[{&quot;bottomSlogan&quot;:&quot;&quot;,&quot;bottomSloganClick&quot;:&quot;&quot;,&quot;clickUrl&quot;:&quot;&quot;,&quot;cookieId&quot;:&quot;model&quot;,&quot;dspUrl&quot;:&quot;http://e.cn.miaozhen.com/r.gif?k=1016981&amp;p=40DFQ0&amp;vv=1&amp;o=&quot;,&quot;exposureUrl&quot;:&quot;&quot;,&quot;h&quot;:100,&quot;logo&quot;:&quot;&quot;,&quot;logoClick&quot;:&quot;&quot;,&quot;position&quot;:&quot;10041401&quot;,&quot;skuList&quot;:[{&quot;cu&quot;:&quot;http://product.suning.com/0070080559/105396948.html&quot;,&quot;d&quot;:&quot;康佳彩电LED48F3700NF &quot;,&quot;discount&quot;:&quot;&quot;,&quot;h&quot;:800,&quot;oldPrice&quot;:&quot;￥2999.00&quot;,&quot;price&quot;:&quot;￥0.00&quot;,&quot;u&quot;:&quot;http://image.suning.cn/content/catentries/00000000010539/000000000105396948/fullimage/000000000105396948_1.jpg&quot;,&quot;w&quot;:800},{&quot;cu&quot;:&quot;http://product.suning.com/0000000000/124084498.html&quot;,&quot;d&quot;:&quot;iPad Air 2 MH0W2CH/A WiFi版 9.7英寸平板电脑 16G金色&quot;,&quot;discount&quot;:&quot;&quot;,&quot;h&quot;:800,&quot;oldPrice&quot;:&quot;￥3423.00&quot;,&quot;price&quot;:&quot;￥0.00&quot;,&quot;u&quot;:&quot;http://image.suning.cn/content/catentries/00000000012408/000000000124084498/fullimage/000000000124084498_1.jpg&quot;,&quot;w&quot;:800},{&quot;cu&quot;:&quot;http://product.suning.com/0000000000/104007910.html&quot;,&quot;d&quot;:&quot;奥克斯空调KFR-25GW/SFT+3（纯铜管） &quot;,&quot;discount&quot;:&quot;&quot;,&quot;h&quot;:800,&quot;oldPrice&quot;:&quot;￥1799.00&quot;,&quot;price&quot;:&quot;￥0.00&quot;,&quot;u&quot;:&quot;http://image.suning.cn/content/catentries/00000000010400/000000000104007910/fullimage/000000000104007910_1.jpg&quot;,&quot;w&quot;:800},{&quot;cu&quot;:&quot;http://product.suning.com/0070079639/108225630.html&quot;,&quot;d&quot;:&quot;海信彩电LED32EC260JD &quot;,&quot;discount&quot;:&quot;&quot;,&quot;h&quot;:800,&quot;oldPrice&quot;:&quot;￥1399.00&quot;,&quot;price&quot;:&quot;￥0.00&quot;,&quot;u&quot;:&quot;http://image.suning.cn/content/catentries/00000000010822/000000000108225630/fullimage/000000000108225630_1.jpg&quot;,&quot;w&quot;:800},{&quot;cu&quot;:&quot;http://product.suning.com/0000000000/124181891.html&quot;,&quot;d&quot;:&quot;海尔冰箱BCD-216SDN&quot;,&quot;discount&quot;:&quot;&quot;,&quot;h&quot;:800,&quot;oldPrice&quot;:&quot;￥1999.00&quot;,&quot;price&quot;:&quot;￥0.00&quot;,&quot;u&quot;:&quot;http://image.suning.cn/content/catentries/00000000012418/000000000124181891/fullimage/000000000124181891_1.jpg&quot;,&quot;w&quot;:800},{&quot;cu&quot;:&quot;http://product.suning.com/0000000000/104864189.html&quot;,&quot;d&quot;:&quot;夏普空气净化器KC-Z280SW（SHARP）&quot;,&quot;discount&quot;:&quot;9.0折&quot;,&quot;h&quot;:800,&quot;oldPrice&quot;:&quot;￥1880.00&quot;,&quot;price&quot;:&quot;￥1699.00&quot;,&quot;u&quot;:&quot;http://image.suning.cn/content/catentries/00000000010486/000000000104864189/fullimage/000000000104864189_1.jpg&quot;,&quot;w&quot;:800},{&quot;cu&quot;:&quot;http://product.suning.com/0070072368/120769163.html&quot;,&quot;d&quot;:&quot;联想主机H520ei3-3240T4G50D-8C (SN)&quot;,&quot;discount&quot;:&quot;&quot;,&quot;h&quot;:800,&quot;oldPrice&quot;:&quot;￥2645.00&quot;,&quot;price&quot;:&quot;￥0.00&quot;,&quot;u&quot;:&quot;http://image.suning.cn/content/catentries/00000000012076/000000000120769163/fullimage/000000000120769163_1.jpg&quot;,&quot;w&quot;:800},{&quot;cu&quot;:&quot;http://product.suning.com/0000000000/101207134.html&quot;,&quot;d&quot;:&quot;AO史密斯热水器CEWH-60P5 &quot;,&quot;discount&quot;:&quot;&quot;,&quot;h&quot;:800,&quot;oldPrice&quot;:&quot;￥2268.00&quot;,&quot;price&quot;:&quot;￥0.00&quot;,&quot;u&quot;:&quot;http://image.suning.cn/content/catentries/00000000010120/000000000101207134/fullimage/000000000101207134_1.jpg&quot;,&quot;w&quot;:800},{&quot;cu&quot;:&quot;http://product.suning.com/0070073469/103994853.html&quot;,&quot;d&quot;:&quot;惠氏S-26金装健儿乐较大婴儿配方奶粉1.2KG(400G*3)三联装（新配方）&quot;,&quot;discount&quot;:&quot;&quot;,&quot;h&quot;:800,&quot;oldPrice&quot;:&quot;￥209.00&quot;,&quot;price&quot;:&quot;￥0.00&quot;,&quot;u&quot;:&quot;http://image.suning.cn/content/catentries/00000000010399/000000000103994853/fullimage/000000000103994853_1.jpg&quot;,&quot;w&quot;:800},{&quot;cu&quot;:&quot;http://product.suning.com/0000000000/104403329.html&quot;,&quot;d&quot;:&quot;海信彩电LED39EC110JD&quot;,&quot;discount&quot;:&quot;9.9折&quot;,&quot;h&quot;:800,&quot;oldPrice&quot;:&quot;￥1809.00&quot;,&quot;price&quot;:&quot;￥1799.00&quot;,&quot;u&quot;:&quot;http://image.suning.cn/content/catentries/00000000010440/000000000104403329/fullimage/000000000104403329_1.jpg&quot;,&quot;w&quot;:800}],&quot;slogan&quot;:&quot;&quot;,&quot;sloganClick&quot;:&quot;&quot;,&quot;tactics&quot;:&quot;3&quot;,&quot;type&quot;:&quot;&quot;,&quot;urlFlag&quot;:&quot;?utm_source=zq-163&amp;utm_medium=sy02tl&amp;utm_term=4704&amp;ad_sp=4704&quot;,&quot;w&quot;:640}]">
	<!--以下广告位代码设置开始-->
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
					fmt = fmt.replace(RegExp.$1,
							(RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k])
									.substr(("" + o[k]).length)));
			return fmt;
		}
		var proInfo = eval("(" + document.getElementById("info").value + ")");
		var skuList = proInfo[0].skuList;
		var _AdID = proInfo[0].position;
		var tactics = proInfo[0].tactics;
		var _requestID = _AdID + myRan() + noTime();
		var dspUrl = proInfo[0].dspUrl;
		var defaultUrl = "http://www.suning.com";
		var logoClick = proInfo[0].logoClick == null
				|| proInfo[0].logoClick == "" ? defaultUrl
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
				"sloganClick" : sloganClick + proInfo[0].urlFlag
						+ "&utm_campaign=" + _AdID + "," + _requestID
						+ "&utm_content=" + tactics
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
					__sa__.dsp.sendClick(e, logoUrl.logoClick, null, 0, 0,
							"suning");
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
	<div id="__suning_manual_0_7576196943409741_1416463137304"
		style="width: 640px; height: 100px; margin: 0px; border: 0px; padding: 0px; line-height: 0px; font-size: 0px; position: relative; left: 0px; top: 0px; background: none;">
		<iframe src="item" style=" border: 0px;"></iframe>
	</div>
	<script type="text/javascript" src="${ctx}/source/js/re/zpda_manual_2.js" charset="utf-8"
		id="__suning_manual0"></script>
		
	<script type="text/javascript"
		src="http://script.suning.cn/javascript/sn_da/saForDsp.js"></script>
	<!--以上广告位代码设置结束-->


</body>
</html>