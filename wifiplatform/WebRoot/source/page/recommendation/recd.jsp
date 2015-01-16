<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" href="${ctx}/source/css/mobile/custom.css" />
<script src="${ctx}/source/js/mobile/jquery-1.7.1.min.js"></script>
<script src="${ctx}/source/js/mobile/jquery.mobile-1.0.1.min.js"></script>
 <script src='http://42.123.76.22:8080/easyrec-web/js/easyrec.js' type='text/javascript'></script>
</head>
<body>    
	<div id="recommendation"></div>

	<script type="text/javascript">
		$(function() {
			$
					.getJSON(
							"items",
							function(transport) {
								var json = eval(transport);
								var items = json.recommendeditems.item;
								if ("undefined" == typeof (items.length)) {
									items = new Array(items);
								}
								if (items.length > 0) {
									$("#recommendation")
											.html(
													"<div class='headline'></div>");
									for (x = 0; x < 5 && x < items.length; x++) {
										$("#recommendation")
												.append(
														"<img width='50px' alt='" + items[x].description + "'"+
					" src='" + items[x].imageUrl + "'/>&nbsp;"
																+ "<a href='" + items[x].url + "'>"
																+ items[x].description
																+ "</a>"
																+ "<br/>");
									}

								}
							});
		});
		
	</script>
</body>
</html>