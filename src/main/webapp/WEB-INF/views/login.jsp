<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<!-- Bootstrap core CSS -->


<!-- Bootstrap core CSS -->
<link
	href="<spring:url value='/resources/assets/web/css/bootstrap.min.css'/>"
	rel="stylesheet" />
<link
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
	href="<spring:url value='/resources/assets/web/css/slideshow.css'/>" />

<!-- Custom styles for this template -->
<link href="<spring:url value='/resources/assets/web/css/style.css'/>"
	rel="stylesheet" />

<!-- Custom Fonts -->
<link
	href="<spring:url value='/resources/assets/web/css/fontawesome-all.min.css'/>"
	rel="stylesheet" type="text/css" />
	<style>
	.wrap-btn{
	display:flex;
	justify-content: space-between;
	}
	.wrap-btn a{
	display: contents;
		color: #1e90ff;
	}
	.btn--black {
	background: #fff;
	color: #1e90ff;
	font-weight: bolder;
	border-radius: 10px;
	border: 2px solid #1e90ff;
	float: right;
}
</style>
</head>

<body onload="loadPage()">
	
	<section class="container container__config mt-5">
		<div class="row">
			<div class="col-md-5">
				<div class="content-signin">
					<h3>NỀN TẢNG THƯƠNG MẠI TRỰC TUYẾN LỚN NHẤT ĐÔNG NAM Á</h3>
					<p>Đăng nhập nhanh với</p>
					<button class="btn btn--btn_blue">Facebook</button>
					<button class="btn btn--btn_red-1">Gmail</button>
					<p class="mt-3">Hoặc đăng nhập ngay</p>
					<c:if test="${ error != null }">
						<div class="alert alert-danger">${ error }</div>
					</c:if>
					<form class="user"
						action="${pageContext.request.contextPath}/dang-nhap"
						method="post" name="form1">

						<div class="form-group">
							<input id="email" type="text" class="form-control" name="username"
								placeholder="Tài Khoản">
								<div class="show-error alert alert-danger"></div>
						</div>
						<div class="form-group">
							<input id="password" type="password" class="form-control" name="password"
								placeholder="Mật Khẩu">
								<div class="show-error alert alert-danger"></div>
						</div>
						<div class="wrap-btn">
							<a href="/dang-ky">Chưa có tài khoản ?</a> <br>
							<a href="/quen-mat-khau">Quên mật khẩu</a>
							<button id="login" class="btn btn--black">Đăng Nhập</button>
						</div>

					</form>
				</div>
			</div>
			<!-- style="background-image: url(./img/im-digital.png);" -->
			<div class="col-md-7 image_global">
				<div class="content_img"></div>
			</div>
		</div>
	</section>

	<!-- link Bootstrap -->
	<!-- Bootstrap core JavaScript -->
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
		<script src="<spring:url value='/resources/assets/web/js/validate.js'/> "></script>
</body>

</html>