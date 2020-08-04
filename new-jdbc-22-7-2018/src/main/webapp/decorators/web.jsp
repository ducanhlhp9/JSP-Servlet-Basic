<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>


<!DOCTYPE html>
<html>
<head>
<title><decorator:title default="Trang chủ" /></title>

<!--css-->
<!-- Bootstrap core CSS -->
<link
	href="<c:url value='/template/web/bootstrap/css/bootstrap.min.css'/>"
	rel="stylesheet" type="text/css" media="all" />
<!-- Custom styles for this template -->
<link href="<c:url value='/template/web/css/shop-homepage.css'/>"
	rel="stylesheet" type="text/css" media="all" />


</head>
<body>
	<!-- header -->
	<%@ include file="/common/web/header.jsp"%>
	<!-- header -->
	<div class="container">
		<decorator:body />
	</div>
	<!-- footer -->
	<%@ include file="/common/web/footer.jsp"%>>
	<!-- footer -->

	<!-- jquery -->
	<script type="text/javascript"
		src="<c:url value='/template/web/jquery/jquery.min.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/template/web/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
</body>
</html>