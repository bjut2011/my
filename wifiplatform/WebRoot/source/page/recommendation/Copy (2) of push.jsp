<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>15新版-定向（960x130）</title>
<style type="text/css">
body, div, form, h1, h2, h3, h4, h5, h6, img, input, li, ol, p, pre,
	textarea, ul {
	margin: 0;
	padding: 0
}

body {
	font: 12px/1.75 Tahoma, Arial;
	color: #000;
	background-color: #fff
}

li, ul {
	list-style-type: none
}

img {
	border: 0
}

.jdAdFs14 {
	font-size: 14px
}

.yh {
	font-family: "Microsoft Yahei"
}

.yh18 {
	font: 18px "Microsoft Yahei"
}

.yh14 {
	font: 14px "Microsoft Yahei";
	padding-top: 4px
}

.jdAdCred {
	color: #c91521
}

a {
	color: #006a92;
	text-decoration: none
}

a:hover {
	text-decoration: underline
}

a:focus {
	outline: 0
}

.jdAdW644 {
	width: 80%;
	border: 3px solid #c91521
}

.jdAdPn {
	position: relative;
	*zoom: 1;
	height: 124px
}

.jdAdPn .jdContInner {
	height: 124px;
	overflow: hidden;
	background: #fff
}

.jdAdPn .jdAdInner {
	padding-left: 2px
}

.jdAdPn .jdAdLogo {
	position: absolute;
	top: 0;
	left: 0;
	width: 124px;
	height: 124px;
	overflow: hidden;
	background-color: #c91521
}

.jdAdPn .jdAdLogo a {
	display: block;
	text-align: center
}

.jdAdPn .jdAdLogo img {
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -60px 0 0 -95px
}

.jdAdPn .jdAdCol {
	width: 100%;
	position: relative;
	float: left;
	height: 124px
}

.jdAdPn .jdAdCont {
	overflow: hidden;
	padding-right: 70px;
	font-family: "Microsoft Yahei";
	height: 124px
}

.jdAdPn .jdAdCont .jdAdPrice {
	word-wrap: break-word;
	word-break: normal;
	overflow: hidden
}

.jdAdPn .jdAdCont .jdAdName {
	height: 34px;
	line-height: 17px;
	overflow: hidden
}

.jdAdPn .jdAdCont ul {
	margin: 6px 0 0 10px;
	float: left;
	display: inline;
	overflow: hidden;
	width: 210px
}

.jdAdPn .jdAdCont li {
	height: 24px;
	word-wrap: break-word;
	word-break: normal;
	_line-height: 18px;
	_margin-left: -17px
}

.jdAdPn .jdAdCont li .tag_title {
	color: #fff;
	background: #e4393c;
	padding: 2px 2px 1px;
	_margin-bottom: 7px;
	line-height: 12px;
	margin-right: 5px;
	display: inline-block;
	*display: inline;
	font-weight: 100;
	*zoom: 1
}

.jdAdPn .jdAdCont .font-wei {
	padding-top: 4px;
	font-weight: 700
}

.jdAdPn .jdAdCont .hei_20 {
	height: 20px
}

.jdAdPn .jdAdCont .jdAdImg {
	float: left;
	display: inline;
	width: 124px;
	height: 124px;
	margin-left: 1px;
	overflow: hidden;
	text-align: center
}

.jdAdPn .jdAdCont .jdAdImg img {
	display: inline-block;
	width: 124px;
	height: 124px
}

.jdAdPn .jdAdCont .jdAdCover {
	position: absolute;
	left: 0;
	top: 0
}

.jdAdPn .jdAdCont .jdAdCover img {
	width: 347px;
	height: 124px
}

.jdAdPn .jdAdList {
	position: absolute;
	top: 0;
	right: 0;
	width: 68px;
	z-index: 3
}

.jdAdPn .jdAdList li {
	height: 40.33px;
	line-height: 40.33px;
	overflow: hidden;
	background-color: #e4e3e3;
	border-bottom: 1px solid #fff;
	text-align: center;
	cursor: pointer;
	vertical-align: text-top
}

.jdAdPn .jdAdList li a {
	color: #000
}

.jdAdPn .jdAdList .select {
	background-color: #c91521
}

.jdAdPn .jdAdList .select a {
	color: #fff
}

.jdAdPn .jdAbLogoBot {
	display: inline-block;
	position: absolute;
	bottom: 1px;
	right: 0;
	width: 18px;
	height: 18px;
	overflow: hidden;
	line-height: 999px;
	background:
		url(http://img11.360buyimg.com/da/g15/M05/0E/1C/rBEhWlJYrAEIAAAAAAACetYAYQwAAECuwP__W4AAAKS951.png)
		top right no-repeat;
	z-index: 11
}

.jdAdPn .jdAbLogoBot:hover {
	width: 75px;
	background:
		url(http://img12.360buyimg.com/da/g13/M09/10/03/rBEhVFJYrDAIAAAAAAAHoRFcOGsAAECrwP_uYQAAAe5174.png)
}
</style>
<script type="text/javascript"
	src="http://static.360buyimg.com/ad/temp/temp20140808162320.min.js"></script>
<script type="text/javascript"
	src="http://static.360buyimg.com/ad/temp/cookieAds20140829130924.min.js"></script>
<script src="${ctx}/source/js/mobile/jquery.tmpl.js"
	type="text/javascript"></script>
</head>
<body>
	<script id="movieTemplate" type="text/x-jquery-tmpl">
	
				{{each Languages}}
					${$value.Name}
                    <div class="jdContInner clear" style="display: none;">
							<a
								href="http://ccc.x.jd.com/dsp/nc?ext=Y2xpY2sudW5pb24uamQuY29tL0pkQ2xpY2svP3VuaW9uSWQ9NTIwMDYmc2l0ZWlkPTY1Nzk4NF8xNSZ0bz1odHRwOi8vcmUuamQuY29tL2xpc3QvaXRlbS8xMTE1MC03NTcwNjQuaHRtbD9yZV9kY3A9NDRFRURxZ19YeE91SFdTV2szeV9LRTJVdXVDWWE5cXhHVlA0&amp;log=Pt0GN9AntiElP3FTs75Mh3Xh/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6aHlTRiTqU1JRkZ9mUEPwm2zKLn444sEN9FD200Rrmp9LclzvnEyID4oBNbMVr19rQgLVq5hoRn/wJfptMX34OxHcVIJvaIfAQTav+K5BRq/LuSQNi4Zjqy5ZGanFTxJTvAKrsnyw2dlB8WpyWrGPNfrT3ektHjChJFvVTPcAK30QeW1pySibjv0Hkjy3WD25SOZMD/lYlEm5YK4VrUST2QXUzgW+CR4EVu4xtmZY5iX9c3pVpYQnmAitnq4SzA4WicvV0w6EMhpcJTcrUEMgRhWMF4VeUreQuSfMlzNXobKY=&amp;v=404"
								id="clk0" data-skuid="757064" target="_blank"
								title="【京东自营】HEISOU黑手 750ml耐高温可拆洗玻璃飘逸杯KC60" class="jdAdCover"><img
								src="http://img11.360buyimg.com/da/jfs/t181/152/1710372957/137/fc862484/53ba3868Nea2f6c42.png"
								alt="【京东自营】HEISOU黑手 750ml耐高温可拆洗玻璃飘逸杯KC60"></a>
							<div class="jdAdImg">
								<a
									href="http://ccc.x.jd.com/dsp/nc?ext=Y2xpY2sudW5pb24uamQuY29tL0pkQ2xpY2svP3VuaW9uSWQ9NTIwMDYmc2l0ZWlkPTY1Nzk4NF8xNSZ0bz1odHRwOi8vcmUuamQuY29tL2xpc3QvaXRlbS8xMTE1MC03NTcwNjQuaHRtbD9yZV9kY3A9NDRFRURxZ19YeE91SFdTV2szeV9LRTJVdXVDWWE5cXhHVlA0&amp;log=Pt0GN9AntiElP3FTs75Mh3Xh/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6aHlTRiTqU1JRkZ9mUEPwm2zKLn444sEN9FD200Rrmp9LclzvnEyID4oBNbMVr19rQgLVq5hoRn/wJfptMX34OxHcVIJvaIfAQTav+K5BRq/LuSQNi4Zjqy5ZGanFTxJTvAKrsnyw2dlB8WpyWrGPNfrT3ektHjChJFvVTPcAK30QeW1pySibjv0Hkjy3WD25SOZMD/lYlEm5YK4VrUST2QXUzgW+CR4EVu4xtmZY5iX9c3pVpYQnmAitnq4SzA4WicvV0w6EMhpcJTcrUEMgRhWMF4VeUreQuSfMlzNXobKY=&amp;v=404"
									target="_blank" title="【京东自营】HEISOU黑手 750ml耐高温可拆洗玻璃飘逸杯KC60"><img
									src="http://img11.360buyimg.com/n3/g17/M00/00/02/rBEbSFNpj6cIAAAAAAGT-M5luwEAAABJgBemiQAAZQQ147.jpg"
									alt="【京东自营】HEISOU黑手 750ml耐高温可拆洗玻璃飘逸杯KC60图片"></a>
							</div>
							<ul >
								<li class="yh18 jdAdCred font-wei"><span>￥</span><span
									class="jdAdPrice" id="price_757064">59.00</span> <span
									id="rprice_757064" style="display: none"></span></li>
								<li class="jdAdCred hei_20"><span id="promInfo_757064"
									style="display: none"></span></li>
								<li class="jdAdName">【京东自营】HEISOU黑手 750ml耐高温可拆洗玻璃飘逸杯KC60</li>
							</ul>
						</div>
				{{/each}}
		
</script>
	<div class="jdAdPn jdAdW644 clear" id="jdAdBox">
		<div class="jdAdInner">
			<div class="jdAdRow clear" id="jdAdRow">

				<div class="jdAdCol" id="jdAdCol1">
					<div class="jdAdCont" id="jdAdList1">



						<div class="jdContInner clear" style="display: none;">
							<a
								href="http://ccc.x.jd.com/dsp/nc?ext=Y2xpY2sudW5pb24uamQuY29tL0pkQ2xpY2svP3VuaW9uSWQ9NTIwMDYmc2l0ZWlkPTY1Nzk4NF8xNSZ0bz1odHRwOi8vcmUuamQuY29tL2xpc3QvaXRlbS8xMTE1MC03NTcwNjQuaHRtbD9yZV9kY3A9NDRFRURxZ19YeE91SFdTV2szeV9LRTJVdXVDWWE5cXhHVlA0&amp;log=Pt0GN9AntiElP3FTs75Mh3Xh/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6aHlTRiTqU1JRkZ9mUEPwm2zKLn444sEN9FD200Rrmp9LclzvnEyID4oBNbMVr19rQgLVq5hoRn/wJfptMX34OxHcVIJvaIfAQTav+K5BRq/LuSQNi4Zjqy5ZGanFTxJTvAKrsnyw2dlB8WpyWrGPNfrT3ektHjChJFvVTPcAK30QeW1pySibjv0Hkjy3WD25SOZMD/lYlEm5YK4VrUST2QXUzgW+CR4EVu4xtmZY5iX9c3pVpYQnmAitnq4SzA4WicvV0w6EMhpcJTcrUEMgRhWMF4VeUreQuSfMlzNXobKY=&amp;v=404"
								id="clk0" data-skuid="757064" target="_blank"
								title="【京东自营】HEISOU黑手 750ml耐高温可拆洗玻璃飘逸杯KC60" class="jdAdCover"><img
								src="http://img11.360buyimg.com/da/jfs/t181/152/1710372957/137/fc862484/53ba3868Nea2f6c42.png"
								alt="【京东自营】HEISOU黑手 750ml耐高温可拆洗玻璃飘逸杯KC60"></a>
							<div class="jdAdImg">
								<a
									href="http://ccc.x.jd.com/dsp/nc?ext=Y2xpY2sudW5pb24uamQuY29tL0pkQ2xpY2svP3VuaW9uSWQ9NTIwMDYmc2l0ZWlkPTY1Nzk4NF8xNSZ0bz1odHRwOi8vcmUuamQuY29tL2xpc3QvaXRlbS8xMTE1MC03NTcwNjQuaHRtbD9yZV9kY3A9NDRFRURxZ19YeE91SFdTV2szeV9LRTJVdXVDWWE5cXhHVlA0&amp;log=Pt0GN9AntiElP3FTs75Mh3Xh/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6aHlTRiTqU1JRkZ9mUEPwm2zKLn444sEN9FD200Rrmp9LclzvnEyID4oBNbMVr19rQgLVq5hoRn/wJfptMX34OxHcVIJvaIfAQTav+K5BRq/LuSQNi4Zjqy5ZGanFTxJTvAKrsnyw2dlB8WpyWrGPNfrT3ektHjChJFvVTPcAK30QeW1pySibjv0Hkjy3WD25SOZMD/lYlEm5YK4VrUST2QXUzgW+CR4EVu4xtmZY5iX9c3pVpYQnmAitnq4SzA4WicvV0w6EMhpcJTcrUEMgRhWMF4VeUreQuSfMlzNXobKY=&amp;v=404"
									target="_blank" title="【京东自营】HEISOU黑手 750ml耐高温可拆洗玻璃飘逸杯KC60"><img
									src="
                        http://img11.360buyimg.com/n3/g17/M00/00/02/rBEbSFNpj6cIAAAAAAGT-M5luwEAAABJgBemiQAAZQQ147.jpg"
									alt="【京东自营】HEISOU黑手 750ml耐高温可拆洗玻璃飘逸杯KC60图片"></a>
							</div>
							<ul>
								<li class="yh18 jdAdCred font-wei"><span>￥</span><span
									class="jdAdPrice" id="price_757064">59.00</span> <span
									id="rprice_757064" style="display: none"></span></li>
								<li class="jdAdCred hei_20"><span id="promInfo_757064"
									style="display: none"></span></li>
								<li class="jdAdName">【京东自营】HEISOU黑手 750ml耐高温可拆洗玻璃飘逸杯KC60</li>
							</ul>
						</div>



						<div class="jdContInner clear" style="display: none;">
							<a
								href="http://ccc.x.jd.com/dsp/nc?ext=Y2xpY2sudW5pb24uamQuY29tL0pkQ2xpY2svP3VuaW9uSWQ9NTIwMDYmc2l0ZWlkPTY1Nzk4NF8xNSZ0bz1odHRwOi8vcmUuamQuY29tL2xpc3QvaXRlbS8xMzAwLTM2NDA2OC5odG1sP3JlX2RjcD00LTBDTnFnX1h4T3VIV1NXazN5X0tFMlV1dUNZYTlxeEdWUDQ=&amp;log=Pt0GN9AntiElP3FTs75Mh3Xh/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6azdX0i75JSVK7NXJOYWMSITWbEf+SyxPWeDd2yp52oTb9PufeyFTGdgEIl8mKbwzPrFkhnPVmjyi862h5dfG4H3Hb+dS6wSPLsGtqaIdqpuCdRGyYXjCO9PD7aDjVa524dTPjYqyU1n5jd9fydeXWAFQg5P65pk6Xfz/6HMDvHawN7s7ivfFYR405LzAtAOeKRLivOB5tVq0ol+DZglxFlT8ASTj2WW0k9LdwMm0UDzaAnBRGEQkC4LfJrFXvH+TzJ1KgEzy46c10WrzdfYkfSU0mJgfJanpavWfHlW2o8s8=&amp;v=404"
								id="clk1" data-skuid="364068" target="_blank"
								title="美的(Midea) DJ05 黄金动力侧吸式油烟机" class="jdAdCover"><img
								src="http://img11.360buyimg.com/da/jfs/t181/152/1710372957/137/fc862484/53ba3868Nea2f6c42.png"
								alt="美的(Midea) DJ05 黄金动力侧吸式油烟机"></a>
							<div class="jdAdImg">
								<a
									href="http://ccc.x.jd.com/dsp/nc?ext=Y2xpY2sudW5pb24uamQuY29tL0pkQ2xpY2svP3VuaW9uSWQ9NTIwMDYmc2l0ZWlkPTY1Nzk4NF8xNSZ0bz1odHRwOi8vcmUuamQuY29tL2xpc3QvaXRlbS8xMzAwLTM2NDA2OC5odG1sP3JlX2RjcD00LTBDTnFnX1h4T3VIV1NXazN5X0tFMlV1dUNZYTlxeEdWUDQ=&amp;log=Pt0GN9AntiElP3FTs75Mh3Xh/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6azdX0i75JSVK7NXJOYWMSITWbEf+SyxPWeDd2yp52oTb9PufeyFTGdgEIl8mKbwzPrFkhnPVmjyi862h5dfG4H3Hb+dS6wSPLsGtqaIdqpuCdRGyYXjCO9PD7aDjVa524dTPjYqyU1n5jd9fydeXWAFQg5P65pk6Xfz/6HMDvHawN7s7ivfFYR405LzAtAOeKRLivOB5tVq0ol+DZglxFlT8ASTj2WW0k9LdwMm0UDzaAnBRGEQkC4LfJrFXvH+TzJ1KgEzy46c10WrzdfYkfSU0mJgfJanpavWfHlW2o8s8=&amp;v=404"
									target="_blank" title="美的(Midea) DJ05 黄金动力侧吸式油烟机"><img
									src="
                        http://img11.360buyimg.com/n3/jfs/t199/274/960658057/122693/effe71ac/539eb021Ne2c1ef72.jpg"
									alt="美的(Midea) DJ05 黄金动力侧吸式油烟机图片"></a>
							</div>
							<ul>
								<li class="yh18 jdAdCred font-wei"><span>￥</span><span
									class="jdAdPrice" id="price_364068">1999.00</span> <span
									id="rprice_364068" style="display: none"></span></li>
								<li class="jdAdCred hei_20"><span id="promInfo_364068"
									style="display: none"></span></li>
								<li class="jdAdName">美的(Midea) DJ05 黄金动力侧吸式油烟机</li>
							</ul>
						</div>



						<div class="jdContInner clear" style="display: block;">
							<a
								href="http://ccc.x.jd.com/dsp/nc?ext=Y2xpY2sudW5pb24uamQuY29tL0pkQ2xpY2svP3VuaW9uSWQ9NTIwMDYmc2l0ZWlkPTY1Nzk4NF8xNSZ0bz1odHRwOi8vcmUuamQuY29tL2xpc3QvaXRlbS8xMjAyOS04MDQzMjIuaHRtbD9yZV9kY3A9NDZzVkVhZ19YeE91SFdTV2szeV9LRTJVdXVDWWE5cXhHVlA0&amp;log=Pt0GN9AntiElP3FTs75Mh3Xh/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6aG2jA7s7+ablE/O78xROj3MtPiKDMZ93dPDphrd5bk2QDmKoryiUwEMoMnFhHQFgVQS10R26nHXg9WkiRHLOPS4dU9iFO84XQn2islLpj/JuAZpYDmH/Qou6gDE/20ha216B+Fu3K3gl9bVDNWCNNamDyd2NLkY/aWDBbiPDK2fo2IDwu86y+coLY+63efumu0yTI6Bs9j9ieecPKsqRfZ5I9MMS885gXbkmoTrD2whJa+pID4FMLs9o2rE2/4St3x9rOZuBmE6y2uk/RG+klVrF5vjPURH2W+RMy+MXvtKk=&amp;v=404"
								id="clk2" data-skuid="804322" target="_blank"
								title="七匹狼SEPTWOLVES 男士皮带 真皮商务系列牛皮自动扣腰带 7A01036510 黑色"
								class="jdAdCover"><img
								src="http://img11.360buyimg.com/da/jfs/t181/152/1710372957/137/fc862484/53ba3868Nea2f6c42.png"
								alt="七匹狼SEPTWOLVES 男士皮带 真皮商务系列牛皮自动扣腰带 7A01036510 黑色"></a>
							<div class="jdAdImg">
								<a
									href="http://ccc.x.jd.com/dsp/nc?ext=Y2xpY2sudW5pb24uamQuY29tL0pkQ2xpY2svP3VuaW9uSWQ9NTIwMDYmc2l0ZWlkPTY1Nzk4NF8xNSZ0bz1odHRwOi8vcmUuamQuY29tL2xpc3QvaXRlbS8xMjAyOS04MDQzMjIuaHRtbD9yZV9kY3A9NDZzVkVhZ19YeE91SFdTV2szeV9LRTJVdXVDWWE5cXhHVlA0&amp;log=Pt0GN9AntiElP3FTs75Mh3Xh/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6aG2jA7s7+ablE/O78xROj3MtPiKDMZ93dPDphrd5bk2QDmKoryiUwEMoMnFhHQFgVQS10R26nHXg9WkiRHLOPS4dU9iFO84XQn2islLpj/JuAZpYDmH/Qou6gDE/20ha216B+Fu3K3gl9bVDNWCNNamDyd2NLkY/aWDBbiPDK2fo2IDwu86y+coLY+63efumu0yTI6Bs9j9ieecPKsqRfZ5I9MMS885gXbkmoTrD2whJa+pID4FMLs9o2rE2/4St3x9rOZuBmE6y2uk/RG+klVrF5vjPURH2W+RMy+MXvtKk=&amp;v=404"
									target="_blank"
									title="七匹狼SEPTWOLVES 男士皮带 真皮商务系列牛皮自动扣腰带 7A01036510 黑色"><img
									src="
                        http://img11.360buyimg.com/n3/g15/M02/01/1E/rBEhWlLTYh4IAAAAAAF9h0F5mHkAAH1nQM3QNYAAX2f156.jpg"
									alt="七匹狼SEPTWOLVES 男士皮带 真皮商务系列牛皮自动扣腰带 7A01036510 黑色图片"></a>
							</div>
							<ul>
								<li class="yh18 jdAdCred font-wei"><span>￥</span><span
									class="jdAdPrice" id="price_804322">59.00</span> <span
									id="rprice_804322" style="display: none"></span></li>
								<li class="jdAdCred hei_20"><span id="promInfo_804322"
									style="display: none"></span></li>
								<li class="jdAdName">七匹狼SEPTWOLVES 男士皮带 真皮商务系列牛皮自动扣腰带
									7A01036510 黑色</li>
							</ul>
						</div>

					</div>
					<ul class="jdAdList" id="jdAdTags">


						<li class=""><a
							href="http://ccc.x.jd.com/dsp/nc?ext=Y2xpY2sudW5pb24uamQuY29tL0pkQ2xpY2svP3VuaW9uSWQ9NTIwMDYmc2l0ZWlkPTY1Nzk4NF8xNSZ0bz1odHRwOi8vcmUuamQuY29tL2xpc3QvaXRlbS8xMTE1MC03NTcwNjQuaHRtbD9yZV9kY3A9NDRFRURxZ19YeE91SFdTV2szeV9LRTJVdXVDWWE5cXhHVlA0&amp;log=Pt0GN9AntiElP3FTs75Mh3Xh/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6aHlTRiTqU1JRkZ9mUEPwm2zKLn444sEN9FD200Rrmp9LclzvnEyID4oBNbMVr19rQgLVq5hoRn/wJfptMX34OxHcVIJvaIfAQTav+K5BRq/LuSQNi4Zjqy5ZGanFTxJTvAKrsnyw2dlB8WpyWrGPNfrT3ektHjChJFvVTPcAK30QeW1pySibjv0Hkjy3WD25SOZMD/lYlEm5YK4VrUST2QXUzgW+CR4EVu4xtmZY5iX9c3pVpYQnmAitnq4SzA4WicvV0w6EMhpcJTcrUEMgRhWMF4VeUreQuSfMlzNXobKY=&amp;v=404"
							target="_blank">茶壶</a></li>


						<li class=""><a
							href="http://ccc.x.jd.com/dsp/nc?ext=Y2xpY2sudW5pb24uamQuY29tL0pkQ2xpY2svP3VuaW9uSWQ9NTIwMDYmc2l0ZWlkPTY1Nzk4NF8xNSZ0bz1odHRwOi8vcmUuamQuY29tL2xpc3QvaXRlbS8xMzAwLTM2NDA2OC5odG1sP3JlX2RjcD00LTBDTnFnX1h4T3VIV1NXazN5X0tFMlV1dUNZYTlxeEdWUDQ=&amp;log=Pt0GN9AntiElP3FTs75Mh3Xh/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6azdX0i75JSVK7NXJOYWMSITWbEf+SyxPWeDd2yp52oTb9PufeyFTGdgEIl8mKbwzPrFkhnPVmjyi862h5dfG4H3Hb+dS6wSPLsGtqaIdqpuCdRGyYXjCO9PD7aDjVa524dTPjYqyU1n5jd9fydeXWAFQg5P65pk6Xfz/6HMDvHawN7s7ivfFYR405LzAtAOeKRLivOB5tVq0ol+DZglxFlT8ASTj2WW0k9LdwMm0UDzaAnBRGEQkC4LfJrFXvH+TzJ1KgEzy46c10WrzdfYkfSU0mJgfJanpavWfHlW2o8s8=&amp;v=404"
							target="_blank">烟机/灶具</a></li>


						<li class="select"><a
							href="http://ccc.x.jd.com/dsp/nc?ext=Y2xpY2sudW5pb24uamQuY29tL0pkQ2xpY2svP3VuaW9uSWQ9NTIwMDYmc2l0ZWlkPTY1Nzk4NF8xNSZ0bz1odHRwOi8vcmUuamQuY29tL2xpc3QvaXRlbS8xMjAyOS04MDQzMjIuaHRtbD9yZV9kY3A9NDZzVkVhZ19YeE91SFdTV2szeV9LRTJVdXVDWWE5cXhHVlA0&amp;log=Pt0GN9AntiElP3FTs75Mh3Xh/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6aG2jA7s7+ablE/O78xROj3MtPiKDMZ93dPDphrd5bk2QDmKoryiUwEMoMnFhHQFgVQS10R26nHXg9WkiRHLOPS4dU9iFO84XQn2islLpj/JuAZpYDmH/Qou6gDE/20ha216B+Fu3K3gl9bVDNWCNNamDyd2NLkY/aWDBbiPDK2fo2IDwu86y+coLY+63efumu0yTI6Bs9j9ieecPKsqRfZ5I9MMS885gXbkmoTrD2whJa+pID4FMLs9o2rE2/4St3x9rOZuBmE6y2uk/RG+klVrF5vjPURH2W+RMy+MXvtKk=&amp;v=404"
							target="_blank">男士腰带/礼盒</a></li>

					</ul>
				</div>

			</div>
		</div>
	</div>
	<div id="list2" style=""></div>
	<script type="text/javascript">
		var _global_dsp_data = {
			"Query" : {
				"15" : [
						{
							"width" : "0",
							"monitor_url" : "7a730c28e804ec49^v2.8^SWC^15^^85667^^657984^http:\/\/re.jd.com\/list\/item\/11150-757064.html?re_dcp=44EEDqg_XxOuHWSWk3y_KE2UuuCYa9qxGVP4^a5bd0181-2b44-4b9f-bb3d-04132c5333dd^^^0^",
							"exposal_url" : "http:\/\/x.jd.com\/dsp\/np?log=Pt0GN9AntiElP3FTs75Mh3Xh\/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6aHlTRiTqU1JRkZ9mUEPwm2zKLn444sEN9FD200Rrmp9LclzvnEyID4oBNbMVr19rQgLVq5hoRn\/wJfptMX34OxHcVIJvaIfAQTav+K5BRq\/LH0asT2yk+K2DuAbZNmV52AzcuOKuDn0Si0d\/zW7yVkcLa2FBzNs9Txmt5TctNMxKTHc871iifbsCfVXPFb8VUNeAnEHYBBbU1Ag2dHvUEogezT+B9lTW0hkwVMqSrOZoKiw2no4wN0NkaF3RaeMVExo1VpIVwYODnSDyTPxHKa\/E7RKRZW3T2D5J85KmEiZU=&v=404",
							"ad_sku_type" : "2",
							"material_id" : "657984",
							"cid3" : "-1",
							"click_url" : "http:\/\/ccc.x.jd.com\/dsp\/nc?ext=Y2xpY2sudW5pb24uamQuY29tL0pkQ2xpY2svP3VuaW9uSWQ9NTIwMDYmc2l0ZWlkPTY1Nzk4NF8xNSZ0bz1odHRwOi8vcmUuamQuY29tL2xpc3QvaXRlbS8xMTE1MC03NTcwNjQuaHRtbD9yZV9kY3A9NDRFRURxZ19YeE91SFdTV2szeV9LRTJVdXVDWWE5cXhHVlA0&log=Pt0GN9AntiElP3FTs75Mh3Xh\/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6aHlTRiTqU1JRkZ9mUEPwm2zKLn444sEN9FD200Rrmp9LclzvnEyID4oBNbMVr19rQgLVq5hoRn\/wJfptMX34OxHcVIJvaIfAQTav+K5BRq\/LuSQNi4Zjqy5ZGanFTxJTvAKrsnyw2dlB8WpyWrGPNfrT3ektHjChJFvVTPcAK30QeW1pySibjv0Hkjy3WD25SOZMD\/lYlEm5YK4VrUST2QXUzgW+CR4EVu4xtmZY5iX9c3pVpYQnmAitnq4SzA4WicvV0w6EMhpcJTcrUEMgRhWMF4VeUreQuSfMlzNXobKY=&v=404",
							"sanjifenlei_txt" : "茶壶",
							"image_url" : "g17\/M00\/00\/02\/rBEbSFNpj6cIAAAAAAGT-M5luwEAAABJgBemiQAAZQQ147.jpg",
							"ad_billtype" : "0",
							"ious_sku" : "0",
							"ad_type" : "3",
							"sku_id" : "757064",
							"height" : "0",
							"ad_title" : "【京东自营】HEISOU黑手 750ml耐高温可拆洗玻璃飘逸杯KC60"
						},
						{
							"width" : "0",
							"monitor_url" : "10f6b9c93685cb65^v2.8^SWC^15^^85667^^657984^http:\/\/re.jd.com\/list\/item\/1300-364068.html?re_dcp=4-0CNqg_XxOuHWSWk3y_KE2UuuCYa9qxGVP4^a5bd0181-2b44-4b9f-bb3d-04132c5333dd^^^0^",
							"exposal_url" : "http:\/\/x.jd.com\/dsp\/np?log=Pt0GN9AntiElP3FTs75Mh3Xh\/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6azdX0i75JSVK7NXJOYWMSITWbEf+SyxPWeDd2yp52oTb9PufeyFTGdgEIl8mKbwzPrFkhnPVmjyi862h5dfG4H3Hb+dS6wSPLsGtqaIdqpuBhzNm3mWcc6mAP2DwAXV4JCLHIN5zoQ0UY\/HA5jMIf9xyniKo61cbgrluwzSc1xKQE4NcYLjgeIK1ptYmCRam2nFwvQNNQjmjodQ7sRHnBd5PmaLXqVgiszTFJ9kDlgHMV+gIlBcJwMwKa56jl3yuZ9trfvfJGxRup8bZG2xoMuHL9Tkj8SPT0n8Mmoav1y3M=&v=404",
							"ad_sku_type" : "2",
							"material_id" : "657984",
							"cid3" : "-1",
							"click_url" : "http:\/\/ccc.x.jd.com\/dsp\/nc?ext=Y2xpY2sudW5pb24uamQuY29tL0pkQ2xpY2svP3VuaW9uSWQ9NTIwMDYmc2l0ZWlkPTY1Nzk4NF8xNSZ0bz1odHRwOi8vcmUuamQuY29tL2xpc3QvaXRlbS8xMzAwLTM2NDA2OC5odG1sP3JlX2RjcD00LTBDTnFnX1h4T3VIV1NXazN5X0tFMlV1dUNZYTlxeEdWUDQ=&log=Pt0GN9AntiElP3FTs75Mh3Xh\/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6azdX0i75JSVK7NXJOYWMSITWbEf+SyxPWeDd2yp52oTb9PufeyFTGdgEIl8mKbwzPrFkhnPVmjyi862h5dfG4H3Hb+dS6wSPLsGtqaIdqpuCdRGyYXjCO9PD7aDjVa524dTPjYqyU1n5jd9fydeXWAFQg5P65pk6Xfz\/6HMDvHawN7s7ivfFYR405LzAtAOeKRLivOB5tVq0ol+DZglxFlT8ASTj2WW0k9LdwMm0UDzaAnBRGEQkC4LfJrFXvH+TzJ1KgEzy46c10WrzdfYkfSU0mJgfJanpavWfHlW2o8s8=&v=404",
							"sanjifenlei_txt" : "烟机\/灶具",
							"image_url" : "jfs\/t199\/274\/960658057\/122693\/effe71ac\/539eb021Ne2c1ef72.jpg",
							"ad_billtype" : "0",
							"ious_sku" : "1",
							"ad_type" : "3",
							"sku_id" : "364068",
							"height" : "0",
							"ad_title" : "美的(Midea) DJ05 黄金动力侧吸式油烟机"
						},
						{
							"width" : "0",
							"monitor_url" : "63c7f3481e9ac298^v2.8^SWC^15^^85667^^657984^http:\/\/re.jd.com\/list\/item\/12029-804322.html?re_dcp=46sVEag_XxOuHWSWk3y_KE2UuuCYa9qxGVP4^a5bd0181-2b44-4b9f-bb3d-04132c5333dd^^^0^",
							"exposal_url" : "http:\/\/x.jd.com\/dsp\/np?log=Pt0GN9AntiElP3FTs75Mh3Xh\/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6aG2jA7s7+ablE\/O78xROj3MtPiKDMZ93dPDphrd5bk2QDmKoryiUwEMoMnFhHQFgVQS10R26nHXg9WkiRHLOPS4dU9iFO84XQn2islLpj\/JshnFm1ie4WsA9zFd\/lne2lEeetFTw7K426yOnJEUMuY\/CkWep4NcAhsG\/w62MXQDfhFdhIiBMeBnKSo5Rm57hs\/OtkRV4XJ229znrOXk0AzqnxNmTh8JKASdEmeBlHbISQkh70q1fjJR6H4yLDmqAtRZfLag\/L3o8HUicNfQ6XiFn41Szpx4czHnSNfbAYPJE=&v=404",
							"ad_sku_type" : "2",
							"material_id" : "657984",
							"cid3" : "-1",
							"click_url" : "http:\/\/ccc.x.jd.com\/dsp\/nc?ext=Y2xpY2sudW5pb24uamQuY29tL0pkQ2xpY2svP3VuaW9uSWQ9NTIwMDYmc2l0ZWlkPTY1Nzk4NF8xNSZ0bz1odHRwOi8vcmUuamQuY29tL2xpc3QvaXRlbS8xMjAyOS04MDQzMjIuaHRtbD9yZV9kY3A9NDZzVkVhZ19YeE91SFdTV2szeV9LRTJVdXVDWWE5cXhHVlA0&log=Pt0GN9AntiElP3FTs75Mh3Xh\/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6aG2jA7s7+ablE\/O78xROj3MtPiKDMZ93dPDphrd5bk2QDmKoryiUwEMoMnFhHQFgVQS10R26nHXg9WkiRHLOPS4dU9iFO84XQn2islLpj\/JuAZpYDmH\/Qou6gDE\/20ha216B+Fu3K3gl9bVDNWCNNamDyd2NLkY\/aWDBbiPDK2fo2IDwu86y+coLY+63efumu0yTI6Bs9j9ieecPKsqRfZ5I9MMS885gXbkmoTrD2whJa+pID4FMLs9o2rE2\/4St3x9rOZuBmE6y2uk\/RG+klVrF5vjPURH2W+RMy+MXvtKk=&v=404",
							"sanjifenlei_txt" : "男士腰带\/礼盒",
							"image_url" : "g15\/M02\/01\/1E\/rBEhWlLTYh4IAAAAAAF9h0F5mHkAAH1nQM3QNYAAX2f156.jpg",
							"ad_billtype" : "0",
							"ious_sku" : "0",
							"ad_type" : "3",
							"sku_id" : "804322",
							"height" : "0",
							"ad_title" : "七匹狼SEPTWOLVES 男士皮带 真皮商务系列牛皮自动扣腰带 7A01036510 黑色"
						},
						{
							"width" : "0",
							"monitor_url" : "3980dde95e547387^v2.8^SWC^15^^85667^^657984^http:\/\/re.jd.com\/list\/item\/1300-1030455756.html?re_dcp=44UdjlM8VokuHmSWk1wZsX2et77yL7G5vP1dHYI%3D^a5bd0181-2b44-4b9f-bb3d-04132c5333dd^^^0^",
							"exposal_url" : "http:\/\/x.jd.com\/dsp\/np?log=Pt0GN9AntiElP3FTs75Mh3Xh\/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6a+B+AJIHIZz6BvErmjNX1kBzOclMCBOT2oMaH2PzVwkXOZspNt38wdb2JFLIEKtcszOzH2Jwp9Ad5rtn0MgItSUjRewbtMTBK8lm2plaSC4xYWAMyo5TQDiEqsAlzVez3liW8H5pp4+GxtILwh2qnl6NQBrUDVAKEHuvOQe8Qvt7S7ZCasA0+r01cP168Xk9MQdxWoMyaEZY5D1jjYiVRXKMPx3lWP4BbWSqjiIclAnKDfAK3A1q6dilEBWRz83cxbGG1N2uD1w1dGJTEWzay5Mu5NmJZQzbpSpGJH2nPHK0=&v=404",
							"ad_sku_type" : "2",
							"material_id" : "657984",
							"cid3" : "-1",
							"click_url" : "http:\/\/ccc.x.jd.com\/dsp\/nc?ext=Y2xpY2sudW5pb24uamQuY29tL0pkQ2xpY2svP3VuaW9uSWQ9NTIwMDYmc2l0ZWlkPTY1Nzk4NF8xNSZ0bz1odHRwOi8vcmUuamQuY29tL2xpc3QvaXRlbS8xMzAwLTEwMzA0NTU3NTYuaHRtbD9yZV9kY3A9NDRVZGpsTThWb2t1SG1TV2sxd1pzWDJldDc3eUw3RzV2UDFkSFlJJTNE&log=Pt0GN9AntiElP3FTs75Mh3Xh\/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6a+B+AJIHIZz6BvErmjNX1kBzOclMCBOT2oMaH2PzVwkXOZspNt38wdb2JFLIEKtcszOzH2Jwp9Ad5rtn0MgItSUjRewbtMTBK8lm2plaSC4yQKs9JKhxvCyQylsn8KCtRfK085K\/k5MAZNABRmqqGBndDWy6orZ1oAj1T5RkI\/QtamzEuOavM0EqHTs3qtSfbDW1rhdGpneoPrY2vfXz8ZhLRRuXeYjhqhyjAQGiTuy3NiSDdmYoh+L6O9VSDUdLPQjMelJNgvXTONnsO\/5uwfCuy2q6lxNxguuFJmox8zDc=&v=404",
							"sanjifenlei_txt" : "烟机\/灶具",
							"image_url" : "g13\/M04\/07\/0E\/rBEhUlIWuBIIAAAAAAKvZNf69xIAACWVAIYKJAAAq98351.jpg",
							"ad_billtype" : "0",
							"ious_sku" : "1",
							"ad_type" : "3",
							"sku_id" : "1030455756",
							"height" : "0",
							"ad_title" : "尊威（JOUE）A017 中式 抽油烟机 高强度钢化玻璃顶吸油烟"
						},
						{
							"width" : "0",
							"monitor_url" : "d4781f84e79b3135^v2.8^SWC^15^^85667^^657984^http:\/\/re.jd.com\/list\/item\/7057-340224.html?re_dcp=48l8NKg_XxOuHWSWk3y_KE2UuuCYa9qxGVP4^a5bd0181-2b44-4b9f-bb3d-04132c5333dd^^^0^",
							"exposal_url" : "http:\/\/x.jd.com\/dsp\/np?log=Pt0GN9AntiElP3FTs75Mh3Xh\/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6apmBP8f7eFXLn32eS05ra\/IjcaJ9+2niQjjoJLLcbOZNh\/GCrfwP4vGg8YdmDv27KY1OmNe6P8dJAb8Ta15nJyhrrcHfIU8q1K\/hgsbSBJY83L48E0p1G7By0ElNmt3z8Stz7PRCiDqiEFZDjetEfO2NZCJMRLOGRWbK14NTJRUEQYfynDGBRtMC9XzHIfCAJYQczcjUexltPxGlpfVz0+kfhUA2zemIu5EfY9K9Kd636Damz6+FWjzxoIpIawXXW6o0fZgXkeaDKVZCNE2C0mgE9c8EmsxKbZmmpKIoKC5g=&v=404",
							"ad_sku_type" : "2",
							"material_id" : "657984",
							"cid3" : "-1",
							"click_url" : "http:\/\/ccc.x.jd.com\/dsp\/nc?ext=Y2xpY2sudW5pb24uamQuY29tL0pkQ2xpY2svP3VuaW9uSWQ9NTIwMDYmc2l0ZWlkPTY1Nzk4NF8xNSZ0bz1odHRwOi8vcmUuamQuY29tL2xpc3QvaXRlbS83MDU3LTM0MDIyNC5odG1sP3JlX2RjcD00OGw4TktnX1h4T3VIV1NXazN5X0tFMlV1dUNZYTlxeEdWUDQ=&log=Pt0GN9AntiElP3FTs75Mh3Xh\/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6apmBP8f7eFXLn32eS05ra\/IjcaJ9+2niQjjoJLLcbOZNh\/GCrfwP4vGg8YdmDv27KY1OmNe6P8dJAb8Ta15nJyhrrcHfIU8q1K\/hgsbSBJY9YPQSUtNQBl9rIoa1wvN0voBmWyW7ZKmo7XZNKd5X6KDvDKafQN9fY1Ccvb8rStFiiPkJ4d8lvE1FPRnM+dOn3oWgIRHFwpOCw6bdRZj2YVmTWBTc7fmAU4CgGt2uuvl\/kIhFsl7XMQddnMwX\/t8hvLI07A\/70ymquDx7k8TkYPHAWU+8nZhV1Sq5dnTRpRVk=&v=404",
							"sanjifenlei_txt" : "婴儿尿裤",
							"image_url" : "g15\/M09\/0C\/14\/rBEhWVJFVcAIAAAAAAJ7HiQjjWQAADmewGWEBoAAns2640.jpg",
							"ad_billtype" : "0",
							"ious_sku" : "1",
							"ad_type" : "3",
							"sku_id" : "340224",
							"height" : "0",
							"ad_title" : "妈咪宝贝（Mamypoko）瞬吸干爽纸尿裤【女】小号S100片【3-8kg】（新老包装随机发货）"
						},
						{
							"width" : "0",
							"monitor_url" : "286ea1ad55ca33ee^v2.8^SWC^15^^85667^^657984^http:\/\/re.jd.com\/list\/item\/1590-885630.html?re_dcp=47cYFqg_X6BrCz_6Inm_KE2UuuCYa9qxGVP4^a5bd0181-2b44-4b9f-bb3d-04132c5333dd^^^0^",
							"exposal_url" : "http:\/\/x.jd.com\/dsp\/np?log=Pt0GN9AntiElP3FTs75Mh3Xh\/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6ad3qjhi8nPYsITkI72IVEKwqXJxNkLCicrARlQoM4acvhBvS45Q\/VYH5Ylx6sLLZ\/XXP\/g40BdMAf7VzZqmc+kNxs2\/GSFrQHEVmvXDjdD7ThQskEWZFzX8U2iarLhrvu+mJj583No3XUeW8qFlrxZvga4lyTyOTZvmYUls4eql9kutkE2PC0yWnEIeqaTFUCbulJXapBuz6UmIz8r0pINTo4dbQRSzcA1CSDuq+lUnDSyYugOrCdjndPqPU5PE2z4kxUtFla5Z6pHKFbso12poIwTw2qYFbhI6RmbR7dqmA=&v=404",
							"ad_sku_type" : "2",
							"material_id" : "657984",
							"cid3" : "-1",
							"click_url" : "http:\/\/ccc.x.jd.com\/dsp\/nc?ext=Y2xpY2sudW5pb24uamQuY29tL0pkQ2xpY2svP3VuaW9uSWQ9NTIwMDYmc2l0ZWlkPTY1Nzk4NF8xNSZ0bz1odHRwOi8vcmUuamQuY29tL2xpc3QvaXRlbS8xNTkwLTg4NTYzMC5odG1sP3JlX2RjcD00N2NZRnFnX1g2QnJDel82SW5tX0tFMlV1dUNZYTlxeEdWUDQ=&log=Pt0GN9AntiElP3FTs75Mh3Xh\/z6G1LPR4x4TykaWvrY1inpLvffYsVAw2l7okj6ad3qjhi8nPYsITkI72IVEKwqXJxNkLCicrARlQoM4acvhBvS45Q\/VYH5Ylx6sLLZ\/XXP\/g40BdMAf7VzZqmc+kNxs2\/GSFrQHEVmvXDjdD7TBB2X+f234tuya2zqbfed1ucEVSOyMV+yUEfr\/nNieOeQfUvxzqoiqUsvpWgnwjX\/JVRprTpkUJ\/3gpVovB5gL0+dq8\/VQ16yroH5rzRkyNhSRCbkU7+Dcvdtp7fuzBp0+0bzfuOX2cpgbNNjydgN60Tn+pT5x8b3KBKJGhdDaj3lk\/V304Ex0CmsD7wihxFo=&v=404",
							"sanjifenlei_txt" : "休闲零食",
							"image_url" : "g15\/M07\/11\/15\/rBEhWFJqO7QIAAAAAAKbbjOe-NUAAElTwOn9VoAApuG394.jpg",
							"ad_billtype" : "0",
							"ious_sku" : "1",
							"ad_type" : "3",
							"sku_id" : "885630",
							"height" : "0",
							"ad_title" : "麦德好营养麦片巧克力128g"
						} ]
			}
		};
		var _global_dsp_adid = '15';
		var dxSkuList = formatDXData(_global_dsp_data);
		var renderData = map4render(dxSkuList);
		exposalAD(dxSkuList);
		loadAllPrice(dxSkuList);
		loadAllPromo(dxSkuList);
		function clkSetCookie(envent) {
			var dataid = this.getAttribute('data-skuid') ? this
					.getAttribute('data-skuid') : '';
			if (dataid != '') {
				CookieAds.setClickCookie(dataid);
			}
		}
		function clkBind() {
			var i = 0;
			while (document.getElementById('clk' + i)) {
				EventUtil.on(document.getElementById('clk' + i), 'click',
						clkSetCookie);
				i++
			}
		}
		window.onload = function() {
			var runTags1 = new runTags();
			runTags1.info('#jdAdTags', '#jdAdList1', 4000, "auto", 3,
					'#jdAdCol1');
			//var runTags2 = new runTags();
			//runTags2.info('#jdAdTags2', '#jdAdList2', 4000, "auto", 3,
			//		'#jdAdCol2');
			clkBind();
			CookieAds.initadsInfo("ads_info");
			CookieAds.initjda();
		}
	</script>


</body>
</html>