<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<!-- link Bootstrap -->
<!-- Bootstrap core CSS -->
<!-- Bootstrap core CSS -->
<link
	href="<spring:url value='/resources/assets/web/css/bootstrap.min.css'/>"
	rel="stylesheet" />
<%-- <link
	href="<spring:url value='/resources/assets/web/css/webslidemenu.css'/>"
	rel="stylesheet" />
<link
	href="<spring:url value='/resources/assets/web/css/webslidemenu-effect.css'/>"
	rel="stylesheet" />
<link href="<spring:url value='/resources/assets/web/css/slick.css'/>"
	rel="stylesheet" />
<link
	href="<spring:url value='/resources/assets/web/css/slick-theme.css'/>"
	rel="stylesheet" />
<link rel="stylesheet"
	href="<spring:url value='/resources/assets/web/css/slideshow.css'/>" /> --%>

<!-- Custom styles for this template -->
<link href="<spring:url value='/resources/assets/web/css/style.css'/>"
	rel="stylesheet" />

<!-- Custom Fonts -->
<link
	href="<spring:url value='/resources/assets/web/css/fontawesome-all.min.css'/>"
	rel="stylesheet" type="text/css" />
<style type="text/css">
.fix-1 {
	margin-top: 100px;
}

.fix-1 a {
	color: #1e90ff;
}

.btn--black {
	background: #fff;
	color: #1e90ff;
	font-weight: bolder;
	border-radius: 10px;
	border: 2px solid #1e90ff;
	float: right;
	margin-top: 10px;
	width: 100px
}
</style>
</head>

<body>
	<!-- content -->
	<section class="container container__config">
		<div class="row">
			<div class="col-md-5">
				<div class="content-signin fix-1 ">
					<h3 class="mb-5">NỀN TẢNG THƯƠNG MẠI TRỰC TUYẾN LỚN NHẤT ĐÔNG
						NAM Á</h3>
					<p class="mt-5">Nhập email của bạn</p>

					<c:if test="${ error != null }">
						<div class="alert alert-danger">${ error }</div>
					</c:if>
					<form class="wrap" method="POST"
						action="${pageContext.request.contextPath}/quen-mat-khau">
						<div class="form-group">
							<input name="email" class="form-control" placeholder="Email" />
							<button class="btn btn--black" type="submit">Gửi</button>
						</div>
						<a href="/">Trở lại</a>
					</form>
				</div>
			</div>
			<!-- style="background-image: url(./img/im-digital.png);" -->
			<div class="col-md-7 image_global">
				<div class="content_img_signin"></div>
			</div>
		</div>
	</section>
	<script
		src="<spring:url value='/resources/assets/web/js/jquery-3.3.1.slim.min.js' /> "></script>
	<script
		src="<spring:url value='/resources/assets/web/js/popper.min.js' /> "></script>
	<script
		src="<spring:url value='/resources/assets/web/js/bootstrap.min.js'/> "></script>
	<script
		src="<spring:url value='/resources/assets/web/js/webslidemenu.js'/> "></script>
	<script
		src="<spring:url value='/resources/assets/web/js/slick.min.js'/> "></script>
	<script src="<spring:url value='/resources/assets/web/js/site.js'/> "></script>
	<script
		src="<spring:url value='/resources/assets/web/js/slideshow.js'/> "></script>
	<script src="<spring:url value='/resources/assets/web/js/theme.js'/> "></script>
	<script src="<spring:url value='/resources/assets/web/js/index.js'/> "></script>
</body>

</html>