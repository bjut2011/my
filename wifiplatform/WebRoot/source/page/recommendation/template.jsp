<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Insert title here</title>
<link rel="stylesheet"
	href="${ctx}/source/css/mobile/jquery.mobile-1.0.1.css" />
<link rel="stylesheet" href="${ctx}/source/css/mobile/custom.css" />
<script src="${ctx}/source/js/mobile/jquery-1.7.1.min.js"></script>
<script src="${ctx}/source/js/mobile/jquery.mobile-1.0.1.min.js"></script>
<script src="${ctx}/source/js/mobile/jquery.tmpl.js" type="text/javascript"></script>

</head>
<body>
<h3>Demo: Using {{each}} to render repeating sections.</h3>

<!--=================== Demo Section ===================-->

<script id="movieTemplate" type="text/x-jquery-tmpl">
	<tr>
		<td>${Title}</td>
		<td>Languages:
			<em>
				{{each Languages}}
					${$value.Name}
				{{/each}}
			</em>
		</td>
	</tr>
</script>

<table><tbody class="header"><tr><th>Synopsis</th><th>Title</th></tr></tbody>
	<tbody id="movieList"></tbody>
</table>

<script type="text/javascript">
	function namePlusSeparator( name, index, length ){
		var ret = name;
		if ( index < length - 1 ) {
			if ( index === length - 2 ) {
				ret += " and";
			} else {
				ret += ",";
			}
		}
		return ret;
	}
	var movies = [
		{
			Title: "Meet Joe Black",
			Languages: [
				{ Name: "English" },
				{ Name: "French" }
			]
		},
		{
			Title: "Eyes Wide Shut",
			Languages: [
				{ Name: "French" },
				{ Name: "German" },
				{ Name: "Spanish" }
			]
		}
	];
	$( "#movieTemplate" ).tmpl( movies )
		.appendTo( "#movieList" );
</script>

<!--================ End of Demo Section ================-->
</body>
</html>