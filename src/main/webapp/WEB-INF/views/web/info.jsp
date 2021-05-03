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
							placeholder="Nhập từ khoá tìm kiếm..." />
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
												value="" placeholder="Nhập từ khoá tìm kiếm..." />
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
													<span class="lighter-text">Tổng tiền: </span> <span
														class="main-color-text"></span>VNĐ
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

											<a href="/gio-hang" class="button">Giỏ hàng của bạn</a>
										</div>
										<c:if test="${sessionScope.user.fullname != null}">
											<li class="content_hover"><a href="#">${sessionScope.user.fullname}<i
													class="fas fa-caret-down"></i>
											</a>
												<ul class="sub-menu">
															<li><a href="/thong-tin-khach-hang">Quản lý tài khoản</a></li>
													<li><a
														href="${pageContext.request.contextPath}/dang-xuat">Đăng
															Xuất</a></li>
													<li><a href="#">ĐÀO TẠO 3</a></li>

												</ul></li>
										</c:if>
										<c:if test="${sessionScope.user.fullname == null}">
											<li><a href="dang-nhap">ĐĂNG NHẬP</a></li>
											<li><a href="dang-ky">ĐĂNG KÍ</a></li>
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
						placeholder="Nhập từ khoá tìm kiếm..." />
					<div class="input-group-append">
						<button class="btn btn-danger" type="submit">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</form>
		</div>
	</header>

	<article>
 <div class="container contain">
        <div class="row">
            <div class="col-4 user__category">
                <div class="user__avata">
                    <img src="<spring:url value='/resources/assets/web/images/images/myavata.png' />" alt="avatar">
                </div>
                <div class="user__info">
                	<c:if test="${sessionScope.user.fullname != null}">
                	  <div class="fullname">${sessionScope.user.fullname}</div>
                	</c:if>
                  
                <!--     Nguyễn Chu Quốc Ngữ -->
                    <div class="bio">Khách Hàng</div>
                </div>
                <div class="user__edit">
                    <button class="profile__btn">Thông tin khách hàng</button>
                    <div class="edit__profile "><i class="fas fa-users-cog" aria-hidden="true"></i> Tài Khoản</div>
                    <div class="edit__profile "><i class="fas fa-cog" aria-hidden="true"></i> Thay đổi </div>
                </div>
            </div>
            <div class="col-8 user__course">
                <div class="my__profile">
                    <div class="user__title">
                        <h1>Thông tin khách hàng</h1>
                        <div class="social"><i class="fab fa-facebook-f" aria-hidden="true"></i><i
                                class="fab fa-twitter" aria-hidden="true"></i><i class="fab fa-instagram"
                                aria-hidden="true"></i></div>
                    </div>
                    <div class="user__bio">
                    <c:if test="${sessionScope.user.email != null}">
                	  <div class="fullname"><h3>${sessionScope.user.email}</h3></div>
                	</c:if>
                
                        <h6>Khách hàng</h6>
                    </div>
                    <div class="user__courses">
                        <h3>Danh sách sản phẩm</h3>
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item"><a class="nav-link active show" data-toggle="tab" href="#menu1">Giỏ
                                    hàng</a></li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu2">Sản phẩm đã mua</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu3">Lịch sử mua
                                    hàng</a></li>
                        </ul>
                        <div class="tab-content">
                            <div id="menu1" class="container tab-pane active show"><br>
                                <div class="product__items d-flex">
             
                         
                                </div><button class="showmore">SHOW MORE</button>
                            </div>
                            <div id="menu2" class="container tab-pane fade"><br>
                                <div class="product__items d-flex justify-content-between">
                                    <div class="product__item">
                                        <div class="item__img"><img src="/img/item1.jpg" alt="item">
                                            <div class="img__overlay"></div>
                                        </div>
                                        <div class="item__info">
                                            <h5>Complete Python Bootcamp: Go from zero to hero...</h5>
                                            <h6>Jose Portilla</h6>
                                            <div class="rating"><i class="fas fa-star" aria-hidden="true"></i><i
                                                    class="fas fa-star" aria-hidden="true"></i><i class="fas fa-star"
                                                    aria-hidden="true"></i><i class="fas fa-star-half-alt"
                                                    aria-hidden="true"></i><i class="far fa-star"
                                                    aria-hidden="true"></i>3.5 <span>(176,466)</span></div>
                                            <div class="progress" style="height: 10px;">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-primary"
                                                    style="width: 70%;"></div>
                                            </div><button>CONTINUE</button>
                                            <div class="stated__day">Started June 11, 2019</div>
                                        </div>
                                    </div>
                                    <div class="product__item">
                                        <div class="item__img"><img src="/img/item2.jpg" alt="item">
                                            <div class="img__overlay"></div>
                                        </div>
                                        <div class="item__info">
                                            <h5>Complete Python Bootcamp: Go from zero to hero...</h5>
                                            <h6>Jose Portilla</h6>
                                            <div class="rating"><i class="fas fa-star" aria-hidden="true"></i><i
                                                    class="fas fa-star" aria-hidden="true"></i><i class="fas fa-star"
                                                    aria-hidden="true"></i><i class="fas fa-star-half-alt"
                                                    aria-hidden="true"></i><i class="far fa-star"
                                                    aria-hidden="true"></i>3.5 <span>(176,466)</span></div>
                                            <div class="progress" style="height: 10px;">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-primary"
                                                    style="width: 70%;"></div>
                                            </div><button>CONTINUE</button>
                                            <div class="stated__day">Started June 11, 2019</div>
                                        </div>
                                    </div>
                                    <div class="product__item">
                                        <div class="item__img"><img src="/img/item3.jpg" alt="item">
                                            <div class="img__overlay"></div>
                                        </div>
                                        <div class="item__info">
                                            <h5>Complete Python Bootcamp: Go from zero to hero...</h5>
                                            <h6>Jose Portilla</h6>
                                            <div class="rating"><i class="fas fa-star" aria-hidden="true"></i><i
                                                    class="fas fa-star" aria-hidden="true"></i><i class="fas fa-star"
                                                    aria-hidden="true"></i><i class="fas fa-star-half-alt"
                                                    aria-hidden="true"></i><i class="far fa-star"
                                                    aria-hidden="true"></i>3.5 <span>(176,466)</span></div>
                                            <div class="progress" style="height: 10px;">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-primary"
                                                    style="width: 70%;"></div>
                                            </div>
                                            <button>CONTINUE</button>
                                            <div class="stated__day">Started June 11, 2019</div>
                                        </div>
                                    </div>
                                </div><button class="showmore">SHOW MORE</button>
                            </div>
                            <div id="menu3" class="container tab-pane fade"><br>
                                <h3>My Quizzes</h3>
                                <table class="table table-striped table__quiz">
                                    <thead>
                                        <tr>
                                            <th>COURSE</th>
                                            <th>QUIZ</th>
                                            <th>STATUS</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>How to be a DJ? Make Electronic Music</td>
                                            <td>Final Middle Quiz</td>
                                            <td>83%</td>
                                            <td><span class="lnr lnr-checkmark-circle"></span> Passed</td>
                                        </tr>
                                        <tr>
                                            <td>How to be a DJ? Make Electronic Music</td>
                                            <td>Final Middle Quiz</td>
                                            <td>67%</td>
                                            <td><span class="lnr lnr-cross"></span> Failed</td>
                                        </tr>
                                        <tr>
                                            <td>How to be a DJ? Make Electronic Music</td>
                                            <td>Final Middle Quiz</td>
                                            <td>75%</td>
                                            <td><span class="lnr lnr-checkmark-circle"></span> Passed</td>
                                        </tr>
                                        <tr>
                                            <td>How to be a DJ? Make Electronic Music</td>
                                            <td>Final Middle Quiz</td>
                                            <td>33%</td>
                                            <td><span class="lnr lnr-cross"></span> Failed</td>
                                        </tr>
                                        <tr>
                                            <td>How to be a DJ? Make Electronic Music</td>
                                            <td>Final Middle Quiz</td>
                                            <td>75%</td>
                                            <td><span class="lnr lnr-checkmark-circle"></span> Passed</td>
                                        </tr>
                                        <tr>
                                            <td>How to be a DJ? Make Electronic Music</td>
                                            <td>Final Middle Quiz</td>
                                            <td>33%</td>
                                            <td><span class="lnr lnr-cross"></span> Failed</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div id="menu4" class="container tab-pane fade"><br>
                                <h3>My Orders</h3>
                                <div class="order">
                                    <div class="order__id">313915636810515d33e11bbbbf6</div>
                                    <div class="order__day">July 21, 2019 3:50 am</div>
                                    <div class="order__pending">Pending</div>
                                </div>
                                <div class="order">
                                    <div class="order__id">313915634021195d2f9f87df5f9</div>
                                    <div class="order__day">July 17, 2019 10:21 pm</div>
                                    <div class="order__success">Success</div>
                                </div>
                                <div class="order">
                                    <div class="order__id">313915636810515d33e11bbbbf6</div>
                                    <div class="order__day">July 21, 2019 3:50 am</div>
                                    <div class="order__pending">Pending</div>
                                </div>
                                <div class="order">
                                    <div class="order__id">313915634021195d2f9f87df5f9</div>
                                    <div class="order__day">July 17, 2019 10:21 pm</div>
                                    <div class="order__success">Success</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

	</article>
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
								<span class="text"> Gọi cho chúng tôi:</span> <a href="/">
									+84 3764616 </a>
							</div>
						</div>
						<div
							class="content-info-row col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12">
							<div class="content-icon">
								<i class="fas fa-map-marker-alt"></i>
							</div>
							<div class="content">
								<span>4005, Tô Ngọc Vân</span> <span>VietNam</span>
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
						<h3>ĐĂNG KÍ & LẤY ĐƠN HANG</h3>
						<div class="footer-check-content">
							<p>Đăng kí để có một trải nghiệp tuyệt vời</p>
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
						<h3>TÀI KHOẢN CỦA BẠN</h3>
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
							<p>© 2021, Watchshop Dự án tốt nghiệp</p>
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