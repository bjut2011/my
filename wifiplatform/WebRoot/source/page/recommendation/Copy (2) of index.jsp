<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Restaurant Picker</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${ctx}/source/css/mobile/jquery.mobile.structure-1.0.1.css" />
<link rel="apple-touch-icon"
	href="${ctx}/source/images/mobile/launch_icon_57.png" />
<link rel="apple-touch-icon" sizes="72x72"
	href="${ctx}/source/images/mobile//launch_icon_72.png" />
<link rel="apple-touch-icon" sizes="114x114"
	href="${ctx}/source/images/mobile//launch_icon_114.png" />
<link rel="stylesheet"
	href="${ctx}/source/css/mobile/jquery.mobile-1.0.1.css" />
<link rel="stylesheet" href="${ctx}/source/css/mobile/custom.css" />
<script src="${ctx}/source/js/mobile/jquery-1.7.1.min.js"></script>
<script src="${ctx}/source/js/mobile/jquery.mobile-1.0.1.min.js"></script>
<script src="${ctx}/source/js/ctbri-api-1.js"></script>
<script src="${ctx}/source/js/hmac-sha1.js"></script>
<script src="${ctx}/source/js/enc-base64-min.js"></script>
</head>
<body>
	<div id="restau" data-role="page" data-add-back-btn="true">


		<div data-role="header">
			<h1>Restaurant Picker</h1>
		</div>

		<div data-role="content">
			<div class="ui-grid-a" id="restau_infos">
				<iframe style="width: 100%;"src="push" frameborder="0"> </iframe>
			</div>
			<div class="ui-grid-a" id="restau_infos">
				<div class="ui-block-a">
					<h1>Le Mouffetard</h1>
					<p>
						<strong> Restaurant bar in the center of Strasbourg</strong>
					</p>
					<p>On the menu:</p>
					<ul>
						<li>Milkshake with chocolat</li>
						<li>Planchettes</li>
						<li>Leek pie</li>
					</ul>
				</div>
				<div class="ui-block-b">
					<p>
						<img src="${ctx}/source/images/mobile/restau01.jpg"
							alt="jeannette photo" />
					</p>
					<p>
						<a href="http://www.google.fr" rel="external" data-role="button">
							See our website</a>
					</p>
				</div>
			</div>
			<!-- /grid-a -->
			<hr />

			<div class="ui-grid-a" id="contact_infos">
				<div class="ui-block-a">
					<h2>Contact us</h2>
					<p>30 Rue des Tonneliers</p>
					<p>67000 Strasbourg</p>
				</div>
				<div class="ui-block-b">
					<img src="${ctx}/source/images/mobile/01_maps.jpg"
						alt="plan jeanette" />
				</div>
				<hr />
				<div data-role="content" class="content">
					<p style="">
						<font color="#2EB1E8">手机验证登陆</font>
					</p>
					<form method="post" id="loginform">

						<table>
							<tbody>
								<tr>
									<td width="60%"><input type="text" placeholder="输入手机号码..."
										id="mobile" name="MobileNumber"></td>
									<td width="6%">&nbsp;</td>
									<td width="34%"><button type="button" id="sms_btn">获取验证码</button></td>
								</tr>
							</tbody>
						</table>
						<input type="text" name="password" id="captcha" placeholder="验证码" />
						<a data-role="button" id="startsurfing" data-theme="b">登录</a>
					</form>


				</div>

				<script type="text/javascript">
					$('#restau').live(
							'pageinit',
							function(event) {
								var SelectedOptionClass = $('option:selected')
										.attr('class');
								$('div.ui-select')
										.addClass(SelectedOptionClass);

								$('#note_utilisateur').live(
										'change',
										function() {
											$('div.ui-select').removeClass(
													SelectedOptionClass);

											SelectedOptionClass = $(
													'option:selected').attr(
													'class');
											$('div.ui-select').addClass(
													SelectedOptionClass);

										});

							});
				</script>


			</div>


		</div>
	</div>
	<!-- /page -->
	<script type="text/javascript">
		var wait = 59;
		document.getElementById("sms_btn").disabled = false;
		document.getElementById("startsurfing").disabled = false;
		function time(o) {
			if (wait == 0) {
				o.removeAttribute("disabled");
				o.value = "短信免费获取";
				wait = 59;
			} else {
				o.setAttribute("disabled", true);
				o.value = "重新发送(" + wait + ")";
				wait--;
				setTimeout(function() {
					time(o);
				}, 1000);
			}
		}
		document.getElementById("sms_btn").onclick = function() {
			this.setAttribute("disabled", true);
			API.captcha(this);
		};
		document.getElementById("startsurfing").onclick = function() {
			this.setAttribute("disabled", true);
			API.signIn(this);
		};
		$(document).keydown(function(event) {
			if (event.keyCode == 13) {
				var btn_ok = document.getElementById("startsurfing");
				btn_ok.setAttribute("disabled", true);
				API.onValidatorOption(btn_ok);
			}
		});
	</script>
</body>
</html>