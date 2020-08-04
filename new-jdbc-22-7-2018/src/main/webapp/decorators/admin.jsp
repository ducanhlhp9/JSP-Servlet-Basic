<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title><decorator:title default="Trang chủ" /></title>
<link rel="stylesheet"
	href="<c:url value='/template/admin/assets/css/bootstrap.min.css'/>" />
<link rel="stylesheet"
	href="<c:url value='/template/admin/assets/font-awesome/4.2.0/css/font-awesome.min.css'/>" />

<!-- page specific plugin styles -->

<!-- text fonts -->
<link rel="stylesheet"
	href="<c:url value='/template/admin/assets/fonts/fonts.googleapis.com.css'/>" />
<!-- ace styles -->
<link rel="stylesheet"
	href="<c:url value='/template/admin/assets/css/ace.min.css'/>"
	class="ace-main-stylesheet" id="main-ace-style" />

<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<!-- <link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base./jquery-ui.css">
 -->

</head>
<body class="no-skin">
	<!-- header -->
	<%@ include file="/common/admin/header.jsp"%>
	<!-- header -->
	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>
		<!-- menu -->
		<%@ include file="/common/admin/menu.jsp"%>
		<!-- menu -->
		<decorator:body />
		<!-- footer -->
		<%@ include file="/common/admin/footer.jsp"%>>
		<!-- footer -->
		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<%-- <script
		src="<c:url value='/template/admin/assets/css/ace-extra.min.js'/>"></script> --%>
	<script
		src="<c:url value='/template/admin/assets/js/ace-extra.min.js'/>"></script>
	<script
		src="<c:url value='/template/admin/assets/js/jquery.2.1.1.min.js'/>"></script>
	<script
		src="<c:url value='/template/admin/assets/js/jquery-ui.custom.min.js'/>"></script>
	<script
		src="<c:url value='/template/admin/assets/js/jquery.ui.touch-punch.min.js'/>"></script>
	<script
		src="<c:url value='/template/admin/assets/js/jquery.easypiechart.min.js'/>"></script>
	<script
		src="<c:url value='/template/admin/assets/js/jquery.sparkline.min.js'/>"></script>
	<script
		src="<c:url value='/template/admin/assets/js/jquery.flot.min.js'/>"></script>
	<script
		src="<c:url value='/template/admin/assets/js/jquery.flot.pie.min.js'/>"></script>
	<script
		src="<c:url value='/template/admin/assets/js/jquery.flot.resize.min.js'/>"></script>
	<script
		src="<c:url value='/template/admin/assets/js/ace-elements.min.js'/>"></script>
	<%-- 	<script src="<c:url value='/template/admin/assets/js/ace.min.js'/>"></script>
 --%>
	<script
		src="<c:url value='/template/admin/assets/js/bootstrap.min.js'/>"></script>
	<script
		src="<c:url value='/template/pagination/jquery.twbsPagination.js'/>"></script>
	<script
		src="<c:url value='/template/pagination/jquery.twbsPagination.min.js'/>"></script>
	<script type="text/javascript">
		$(function() {
			window.pagObj = $('#pagination').twbsPagination({
				totalPages : 3,
				visiblePages : 1,
				onPageClick : function(event, page) {
					console.info(page + ' (from options)');
				}
			}).on('page', function(event, page) {
				console.info(page + ' (from event listening)');
			});
		});
	</script>

</body>
</html>