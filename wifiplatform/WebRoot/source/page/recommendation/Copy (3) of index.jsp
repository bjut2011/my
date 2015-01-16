<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html><head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<title>云WiFi</title>
  	<link rel="stylesheet" href="http://42.123.76.46//ctbri-wifi/resources/css/bootstrap.css">
  	<link rel="stylesheet" href="http://42.123.76.46//ctbri-wifi/resources/css/portal2.css">
</head>
<body>
	<div class="card-content">
		<div class="scroll_area">
			<div class="scroll_list" style="width: 320px;">
				<ul class="scroll_ul" id="scroll_ul_0">
	    			<li>
	    				<h3>手机验证登陆</h3>
	    				<form type="post" role="form">
							<div class="form-group">
								<div class="input-icon">	
									<i class="glyphicon glyphicon-phone"></i>
									<input id="mobile" type="tel" class="form-control input-lg" placeholder="手机号码">
								</div>
								<div class="input-combo">
									<div class="input-icon">
										<i class="glyphicon glyphicon-lock"></i>
										<input id="captcha" type="tel" class="form-control input-lg" placeholder="上网密码">
									</div>
									<input type="button" id="sms_btn" class="btn btn-success" value="短信免费获取">
								</div>
								<input type="button" id="startsurfing" class="btn btn-block btn-info btn-lg" value="免费上网">
								<div class="checkbox">
									<label> <input type="checkbox" checked="checked" id="agreebox"> 我已阅读
									</label> <a id="agreement">《@freeWiFi网络使用须知》</a>
								</div>
								<div id="agreetext">
									<header>尊敬的用户：</header>
									<p>
										@freeWiFi是一项完全免费的面向公众的WiFi网络服务。为了支持维护和持续优化网络服务质量，在您等待连接到免费网络的过程中可能会观看一些广告。同时，根据《计算机信息网络国际联网安全保护管理办法》（公安部令第33号）和《互联网安全保护技术措施规定》（公安部令第82号）的相关要求，在公共场所登录互联网服务必须按规定登记上网人员身份信息。在此，我们对您所付出的耐心和谅解表示由衷地感谢！
									</p>
									<p>本免费网络服务仅支持浏览网页、收发邮件、使用移动应用进行在线聊天和新闻阅读等轻流量服务，不承诺对大流量的网络视频和游戏等服务提供保障支持，不支持使用大流量下载工具，禁止用户利用本服务浏览下载黄色信息或进行其它非法行为。</p>
									<p>我们将以竭诚的努力不断完善相关设施，力争为您提供最佳的服务体验！</p>
								</div>
							</div>							
						</form>
	    			</li>
	    		</ul>
	    	</div>
	    </div>
	</div>
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
  	<script src="http://42.123.76.46//ctbri-wifi/resources/js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="http://42.123.76.46//ctbri-wifi/resources/js/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="http://42.123.76.46//ctbri-wifi/resources/js/purl.js" type="text/javascript"></script>
	<script src="http://42.123.76.46//ctbri-wifi/resources/js/hmac-sha1.js" type="text/javascript"></script>
	<script src="http://42.123.76.46//ctbri-wifi/resources/js/enc-base64-min.js" type="text/javascript"></script>
  	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
  	<script src="http://42.123.76.46//ctbri-wifi/resources/js/bootstrap.min.js" type="text/javascript"></script>
  	<script src="http://42.123.76.46//ctbri-wifi/resources/js/slider.js" type="text/javascript"></script>
  	<script src="http://42.123.76.46//ctbri-wifi/resources/js/ctbri-api-1.js" type="text/javascript"></script>
  	<script type="text/javascript">
  		var wait = 59;
		document.getElementById("sms_btn").disabled = false;
		document.getElementById("startsurfing").disabled = false;
		function time(o) {
	        if (wait == 0) {
	            o.removeAttribute("disabled");           
	            o.value="短信免费获取";
	            wait = 59;
	        } else {
	            o.setAttribute("disabled", true);
	            o.value="重新发送(" + wait + ")";
	            wait--;
	            setTimeout(function() {
	                time(o);
	            },
	            1000);
	        }
	    }
		document.getElementById("sms_btn").onclick = function(){
			this.setAttribute("disabled", true);
			API.captcha(this);
		};
		document.getElementById("startsurfing").onclick = function(){
			this.setAttribute("disabled", true);
			API.signIn(this);
		};
		$(document).keydown(function(event) {
			if (event.keyCode == 13) {
				var btn_ok = document.getElementById("startsurfing");
				btn_ok.setAttribute("disabled", true);
				API.signIn(btn_ok);
			}
		});
  	</script>

</body></html>