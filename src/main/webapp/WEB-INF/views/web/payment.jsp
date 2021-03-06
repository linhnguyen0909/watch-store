<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=0" />
<meta name="description" content="" />
<meta name="author" content="" />
<link rel="icon" href="images/favicon.ico" />

<title>Carousel Template for Bootstrap</title>

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
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" />
<link
	href="<spring:url value='/resources/assets/web/css/magiczoomplus.css'/>"
	rel="stylesheet" />
<script src="https://kit.fontawesome.com/7eaad007ea.js"></script>
<!-- Custom styles for this template -->
<link href="<spring:url value='/resources/assets/web/css/style.css'/>"
	rel="stylesheet" />

<!-- Custom Fonts -->
<link
	href="<spring:url value='/resources/assets/web/css/fontawesome-all.min.css'/>"
	rel="stylesheet" type="text/css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<header>
		<div class="wsmobileheader clearfix">
			<a id="wsnavtoggle" class="wsanimated-arrow"><span></span></a> <span
				class="smllogo"> <a href="/"> <img
					src="<spring:url value='/resources/assets/web/images/logo-casio.svg' />"
					alt="logo-casio" class="img-fluid" />
			</a>
			</span>
			<div class="smallbtn">
				<div class="input-group-append" data-toggle="collapse"
					data-target="#demo">
					<button class="btn btn-danger" type="submit">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</div>
			<div class="shopping-cart">
				<a href="#"> <img
					src="<spring:url value='/resources/assets/web/images/images/shopping-bag.png' />"
					alt="shopping-bag" class="img-fluid" width="80"></a>
			</div>
			<div class="headerinput">
				<form action="#" method="GET" class="collapse" autocomplete="off"
					id="demo">
					<div class="input-group">
						<input type="text" class="form-control search" name="q" value=""
							placeholder="Nh???p t??? kho?? t??m ki???m..." />
						<div class="input-group-append">
							<button class="btn btn-danger" type="submit">
								<i class="fas fa-search"></i>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="block-header-bottom">
			<div class="block-header-bottom--navigation">
				<div class="container">
					<div class="row navmenu">
						<div class="col-xl-6 col-lg-4 col-md-6 col-sm-12 menu-left">
							<ul class="logo">
								<li><a href="#"> <img
										src="<spring:url value='/resources/assets/web/images/logo-casio.svg' />"
										alt="logo-casio" class="img-fluid" />
								</a></li>
								<li><a href="#" style="font-family: Roboto;"><span
										style="color: #fff; font-weight: bold; background-color: #c5102f; padding: 1px 4px; border-radius: 2px;">MRG</span><span
										style="font-size: 11px; margin-left: 3px; color: #fff;">VIETNAM</span></a>
								</li>
								<li>
									<form action="#" method="GET" autocomplete="off" class="w-100">
										<div class="input-group">
											<input type="text" class="form-control search" name="q"
												value="" placeholder="Nh???p t??? kho?? t??m ki???m..." />
											<div class="input-group-append">
												<button class="btn btn-danger" type="submit">
													<i class="fas fa-search"></i>
												</button>
											</div>
										</div>
									</form>
								</li>
							</ul>
						</div>

						<div class="col-xl-6 col-lg-8 col-md-6 col-sm-12 menu-right"
							style="padding: 0;">
							<div class="wsmainwp clearfix">
								<nav class="wsmenu clearfix">
									<ul class="wsmenu-list">
										<li class="cart-item has-icon">
											<div class="shopping-cart" id="cart_button">
												<a> <img
													src="<spring:url value='/resources/assets/web/images/images/meow.png' />"
													alt="shopping-bag" class="img-fluid" width="80">
												</a> <span id="length">0</span>
											</div>

										</li>
										<div class="shopping-cart_table">
											<div class="shopping-cart-header">
												<i class="fa fa-shopping-cart cart-icon"></i><span
													class="badge"></span>
													<div class="shopping-cart-total">
													<span class="lighter-text">T???ng ti???n: </span> <span
														class="main-color-text"></span>VN??
												</div>
											</div>
											<!--end shopping-cart-header -->
											<ul class="shopping-cart-items">
												<!-- <li class="clearfix"><img
													src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item1.jpg"
													alt="item1"> <span class="item-name">Sony
														DSC-RX100M III</span> <span class="item-price">$849.99</span> <span
													class="item-quantity">Quantity: 01</span></li> -->

												<!-- 	<li class="clearfix"><img
													src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item3.jpg"
													alt="item1"> <span class="item-name">Kindle,
														6" Glare-Free To...</span> <span class="item-price">$129.99</span>
													<span class="item-quantity">Quantity: 01</span></li>  -->
											</ul>

											<a href="/gio-hang" class="button">Gi??? h??ng c???a b???n</a>
										</div>
										<c:if test="${sessionScope.user.fullname != null}">
											<li class="content_hover"><a href="#">${sessionScope.user.fullname}<i
													class="fas fa-caret-down"></i>
											</a>
												<ul class="sub-menu">
															<li><a href="/thong-tin-khach-hang">Qu???n l?? t??i kho???n</a></li>
													<li><a
														href="${pageContext.request.contextPath}/dang-xuat">????ng
															Xu???t</a></li>
													<li><a href="#">????O T???O 3</a></li>

												</ul></li>
										</c:if>
										<c:if test="${sessionScope.user.fullname == null}">
											<li><a href="dang-nhap">????NG NH???P</a></li>
											<li><a href="dang-ky">????NG K??</a></li>
										</c:if>

									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="headerinput">
			<form action="#" method="GET" class="collapse" autocomplete="off"
				id="shopping">
				<div class="input-group">
					<input type="text" class="form-control search" name="q" value=""
						placeholder="Nh???p t??? kho?? t??m ki???m..." />
					<div class="input-group-append">
						<button class="btn btn-danger" type="submit">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</form>
		</div>
	</header>
  <div class="page-payment">
        <div class="wrap-shipping">
            <div class="row checkout-stept">
                <div class='active'>SIGNIN</div>
                <div class='active'>SHIPPING</div>
                <div class="active">PAYMENT</div>
                <div class="">PLACE ORDER</div>
            </div>
            <h1 class='text-center'>PAYMENT</h1>
            <div class="wrap-form">
                <form class="form-group w-25">
                    <p class="text_header">Ph????ng th???c thanh to??n</p>
                    <div class="myRadio">
                        <label>
                            <input class="form-control" type="radio" name="checked" value="PayPal" />
                            <p class="text_value">PayPal</p>
                        </label>
                        <label>
                            <input class="form-control" type="radio" name="checked" value="Stripe" />
                            <p class="text_value">Stripe</p>
                        </label>



                    </div>
                    <button class="btn btn-config btn-block btn-round"><a id="btnPayment" href="/check-pay/order-striple">Ti???n h??nh thanh to??n</button>
                    </formclass>
            </div>
        </div>
    </div>


	<footer>
		<div class="footer-before">
			<div class="container">
				<div class="contact-info">
					<div class="content-info- row">
						<div
							class="content-info-row col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12">
							<div class="content-icon">
								<i class="fas fa-phone-alt"></i>
							</div>
							<div class="content">
								<span class="text"> G???i cho ch??ng t??i:</span> <a href="/">
									+84 3764616 </a>
							</div>
						</div>
						<div
							class="content-info-row col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12">
							<div class="content-icon">
								<i class="fas fa-map-marker-alt"></i>
							</div>
							<div class="content">
								<span>4005, T?? Ng???c V??n</span> <span>VietNam</span>
							</div>
						</div>
						<div
							class="content-info-row col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12">
							<div class="content-icon">
								<i class="fa fa-envelope"></i>
							</div>
							<div class="content">
								<span class="text">Email :</span> <a
									href="mailto:info@gmail.com "> quocngu4616@gmail.com </a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-container">
			<div class="row row-0px">
				<div
					class="footer-left col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
					<div class="footer-left-watch">
						<div class="footer-left-watch-img">
							<a href="#"><img src="images/Logo.webp" alt="Logo"
								class="img-fluid" /></a>
						</div>
						<div class="footer-left-watch-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Sed avehicula nisl. Etiam sed magna in purus vestibulum molestie
							</p>
						</div>
					</div>
					<div class="footer-left-follow">
						<div class="footer-left-follow-title">
							<h3>FOLLOW US</h3>
						</div>
						<div class="footer-left-follow-content">
							<ul class="list-icon">
								<li class="facebook"><a href="#"><i
										class="fab fa-facebook-f" aria-hidden="true"></i></a></li>
								<li class="twitter"><i class="fab fa-twitter"></i></li>
								<li class="pinterest"><i class="fab fa-pinterest-p"></i></li>
								<li class="instagram"><i class="fab fa-instagram"></i></li>
								<li class="tumblr"><i class="fab fa-tumblr"></i></li>
								<li class="youtube"><i class="fab fa-youtube"></i></li>
							</ul>
						</div>
					</div>
				</div>
				<div
					class="footer-right col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
					<div class="footer-check">
						<h3>????NG K?? & L???Y ????N HANG</h3>
						<div class="footer-check-content">
							<p>????ng k?? ????? c?? m???t tr???i nghi???p tuy???t v???i</p>
						</div>
						<div class="footer-check-input input-group">
							<form action="#" class="w-100">
								<div class="input-group mt-3 mb-3">
									<input type="text" class="form-control search" name="q"
										value="" placeholder="Enter Your E-Mail" />
									<div class="input-group-append">
										<button class="btn">SUBSCRIBE</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="footer-account">
						<h3>T??I KHO???N C???A B???N</h3>
						<div class="footer-account-content">
							<ul>
								<li><a href="#">Specials</a></li>
								<li><a href="#">Prices Drops</a></li>
								<li><a href="#">Contact us</a></li>
								<li><a href="#">Our stores</a></li>
								<li><a href="#">Sitemap</a></li>
								<li><a href="#">Credit Slips</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
						<div class="footer-bottom-content">
							<p>?? 2021, Watchshop D??? ??n t???t nghi???p</p>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6"></div>
				</div>
			</div>
		</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<!-- Bootstrap core JavaScript -->
	<script
		src="<spring:url value='/resources/assets/web/js/jquery-3.3.1.slim.min.js'/> "></script>
	<script
		src="<spring:url value='/resources/assets/web/js/magiczoomplus.js'/>"></script>
	<script
		src="<spring:url value='/resources/assets/web/js/popper.min.js '/>"></script>
	<script
		src="<spring:url value='/resources/assets/web/js/bootstrap.min.js'/> "></script>
	<script
		src="<spring:url value='/resources/assets/web/js/webslidemenu.js'/> "></script>
	<script
		src="<spring:url value='/resources/assets/web/js/slick.min.js'/> "></script>
	<script src="<spring:url value='/resources/assets/web/js/site.js'/> "></script>
	<script
		src="<spring:url value='/resources/assets/web/js/slideshow.js '/>"></script>
	<script src="<spring:url value='/resources/assets/web/js/theme.js'/> "></script>
	<script src="<spring:url value='/resources/assets/web/js/index.js'/> "></script>
		<script src="<spring:url value='/resources/assets/web/js/info.js'/> "></script>
</body>

</html>