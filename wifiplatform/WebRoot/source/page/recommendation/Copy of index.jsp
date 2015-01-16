<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css">
<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
<style type="text/css">
p {
	font-size: 1.5em;
	font-weight: bold;
}

#submit {
	float: right;
	margin: 10px;
}

#toregist {
	float: left;
	margin: 10px;
}
</style>
</head>
<body>
	<script type="text/javascript">
		jQuery(document)
				.ready(
						function() {
							//输入事件
							$("input[id]")
									.bind(
											"focus",
											function() {
												if ($(this).attr("id") == 'username'
														|| $(this).attr("id") == 'password')
													$(this).attr("value", "");
											});
							//提交
							$("#submit")
									.bind(
											"click",
											function() {
												if (valid()) {
													$
															.ajax({
																type : "POST",
																url : "http://localhost:8080/note/servlet/Login",
																data : $(
																		"form#loginform")
																		.serialize(),
																success : function(
																		msg) {
																	if (msg == 'success') {
																		$.mobile
																				.changePage(
																						"content/first.html",
																						"slidedown",
																						true,
																						true);
																	} else {
																		$.mobile
																				.changePage(
																						"content/loginfalse.html",
																						"slidedown",
																						true,
																						true);
																	}

																}
															});
												}
											});
						});
		//输入信息验证
		function valid() {
			if ($("#username").attr("value") == ''
					|| $("#password").attr("value") == '') {
				$.mobile.changePage("content/loginfalse.html", "slidedown",
						true, true);
				return false;
			}
			return true;
		};
	</script>

	<!-- begin first page -->
<section id="page1" data-role="page">
  <header data-role="header"  data-theme="b" ><h1>开始笔记之旅</h1></header>
  <div data-role="content" class="content">
    <p style="backg"><font color="#2EB1E8" >登录微笔记</font></p>
        <form method="post" id="loginform">
         
            <input type="text" name="username" id="username" value="用户名"/><br>
            <input type="password" name="password" id="password" value="密码输入提示"/>
                    <fieldset data-role="controlgroup" >
                        <input type="checkbox" name="checkbox-1" id="checkbox-1" class="custom" />
                        <label for="checkbox-1">保持登录状态</label>
                    </fieldset>
            <a data-role="button" id="submit" data-theme="b">登录</a>
        </form>
  </div>
  <footer data-role="footer" ><h1>©2011 TinyNote 微笔记社区(movingcomputing.com)</h1></footer>
</section>
<!-- end first page -->

</body>
</html>