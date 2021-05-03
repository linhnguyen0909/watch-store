<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
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

.backHome {
display: block;
margin: 20px auto;
	color: #1e90ff;
}

.wrap-btn {
	display: flex;
	justify-content: space-between;
}

.wrap-btn a {
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
	<!-- content -->
	<section class="container container__config">
		<div class="row">
			<div class="col-md-5">
				<div class="content-signin">
					<h3>NỀN TẢNG THƯƠNG MẠI TRỰC TUYẾN LỚN NHẤT ĐÔNG NAM Á</h3>
					<p>Đăng kí nhanh với</p>
					<button class="btn btn--btn_blue">Facebook</button>
					<button class="btn btn--btn_red-1">Gmail</button>
					<a class="backHome" href="/">Trở lại trang chủ</a>
					<s:form method="POST" modelAttribute="model"
						action="${pageContext.request.contextPath}/dang-ky"
						enctype="multipart/form-data">
						<s:hidden path="id" class="form-control" />
						<div class="form-group">
							<s:input id="email" path="email" class="form-control" placeholder="Email" />
							<div class="show-error alert alert-danger"></div>
						</div>
						<div class="form-group">
							<s:password path="password" class="form-control"
								placeholder="Mật khẩu" />
								<div class="show-error alert alert-danger"></div>
						</div>
						<div class="form-group">
							<s:input path="fullname" class="form-control"
								placeholder="Họ và tên" />
								<div class="show-error alert alert-danger"></div>
						</div>
						<div class="input-group mb-3">
							<%--      <div class="input-group-prepend">
                                    <span class="input-group-text">Hình Ảnh</span>
                                </div> --%>
							<div class="custom-file">
								<!-- id="inputGroupFile01 -->
								<input name="multipartFile" type="file"
									class="custom-file-input" /> <label class="custom-file-label"
									for="inputGroupFile01">Chọn hình</label>
									<div class="show-error alert alert-danger"></div>
							</div>
						</div>
						<div class="form-group">
							<s:input id="phone" path="phoneNumber" class="form-control"
								placeholder="Số điện thoại" />
								<div class="show-error alert alert-danger"></div>
						</div>
						<div class="form-group">
							<s:input path="address" class="form-control"
								placeholder="địa chỉ" />
							<s:hidden path="status" class="form-control"
								placeholder="address" value="1" />
								<div class="show-error alert alert-danger"></div>
						</div>
						<s:hidden path="role" class="form-control" placeholder="role"
							value="1" />
						<div class="wrap-btn">
							<a href="/dang-nhap">Đã có tài khoản ?</a> <br>

							<button class="btn btn--black">Đăng Ký</button>
						</div>
					</s:form>
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
		<script src="<spring:url value='/resources/assets/web/js/validate.js'/> "></script>
</body>

</html>