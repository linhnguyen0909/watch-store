<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=0" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" href="images/favicon.ico" />

    <title>Carousel Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="<spring:url value='/resources/assets/web/css/bootstrap.min.css'/>" rel="stylesheet" />
    <link href="<spring:url value='/resources/assets/web/css/webslidemenu.css'/>" rel="stylesheet" />
    <link href="<spring:url value='/resources/assets/web/css/webslidemenu-effect.css'/>" rel="stylesheet" />
    <link href="<spring:url value='/resources/assets/web/css/slick.css'/>" rel="stylesheet" />
    <link href="<spring:url value='/resources/assets/web/css/slick-theme.css'/>" rel="stylesheet" />
    <link rel="stylesheet" href="<spring:url value='/resources/assets/web/css/slideshow.css'/>" />
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.cs'/>s" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="<spring:url value='/resources/assets/web/css/style.css'/>" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="<spring:url value='/resources/assets/web/css/fontawesome-all.min.css'/>" rel="stylesheet" type="text/css" />

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
            <a id="wsnavtoggle" class="wsanimated-arrow"><span></span></a>
            <span class="smllogo">
                <a href="#">
                    <img src="<spring:url value='/resources/assets/web/images/logo-casio.svg' />" alt="logo-casio" class="img-fluid" />
                </a>
            </span>
            <div class="smallbtn">
                <div class="input-group-append" data-toggle="collapse" data-target="#demo">
                    <button class="btn btn-danger" type="submit">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </div>
            <div class="shopping-cart">
                <a href="#"> <img src="<spring:url value='/resources/assets/web/images/images/shopping-bag.png' />" alt="shopping-bag" class="img-fluid" width="80"></a>
            </div>
            <div class="headerinput">
                <form action="#" method="GET" class="collapse" autocomplete="off" id="demo">
                    <div class="input-group">
                        <input type="text" class="form-control search" name="q" value="" placeholder="Nhập từ khoá tìm kiếm..." />
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
                                <li>
                                    <a href="#">
                                        <img src="<spring:url value='/resources/assets/web/images/logo-casio.svg' />" alt="logo-casio" class="img-fluid" />
                                    </a>
                                </li>
                                <li>
                                    <a href="#" style="font-family: Roboto;"><span style="
                          color: #fff;
                          font-weight: bold;
                          background-color: #c5102f;
                          padding: 1px 4px;
                          border-radius: 2px;
                        ">MRG</span><span style="font-size: 11px; margin-left: 3px; color: #fff;">VIETNAM</span></a>
                                </li>
                                <li>
                                    <form action="#" method="GET" autocomplete="off" class="w-100">
                                        <div class="input-group">
                                            <input type="text" class="form-control search" name="q" value="" placeholder="Nhập từ khoá tìm kiếm..." />
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

                        <div class="col-xl-6 col-lg-8 col-md-6 col-sm-12 menu-right" style="padding: 0;">
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
            <form action="#" method="GET" class="collapse" autocomplete="off" id="shopping">
                <div class="input-group">
                    <input type="text" class="form-control search" name="q" value="" placeholder="Nhập từ khoá tìm kiếm..." />
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
        <a id="slidetop" href="#top" title="top" style="display: inline;">Top </a>
        <section>
            <div class="breadcrumb-container">
                <div class="container">
                    <h3>Collection</h3>
                    <a href="#">Home </a>
                    <span class="driver"> - </span>
                    <span> Watch</span>
                </div>
            </div>
        </section>
        <section>
            <div class="main-product">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                            <div class="left-column product-category">
                                <div class="sidebar-title">
                                    <a href="#">Watch</a>
                                    <div class="product-category-collapse"> <i class="fas fa-chevron-down category " data-toggle="collapse" href="#acc"></i> </div>
                                </div>
                                <div id="acc" class="product-category-content ">
                                    <div id="accordion" class="myaccordion">
                                    	 <c:forEach var="category" items="${categories}">
                                    	
                                        <div class="card">
                                            <div class="card-header" id="headingOne">
                                             <a href="${pageContext.request.contextPath}/product?page=0&limit=1&category=${ category.id }">
                                                <h2 class="mb-0">
                                                    <button class="d-flex align-items-center justify-content-between btn btn-link collapsed">
                                                        ${category.name }
                                                        <span class="fa-stack fa-sm">
                                                            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
                                                        </span>
                                                    </button>
                                                </h2>
                                              </a>
                                            </div>
                                        </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <div class="left-column product-category">
                                <div class="sidebar-title">
                                    <a href="#">FILTER</a>
                                    <div class="product-category-collapse"> <i class="fas fa-chevron-down category collapsed" data-toggle="collapse" href="#category"></i> </div>
                                </div>
                                <div id="category" class="product-category-content">
                                    <div class="left-inner left-dropdown">
                                        <div class="filters-toolbar-input">
                                            <strong>COLOR </strong>
                                            <ul class="COLOR">
                                                <li>
                                                    <label class="custom-control material-checkbox">
                                                        <input type="checkbox" class="material-control-input" />
                                                        <span class="material-control-indicator"></span>
                                                        <span class="material-control-description">Lee</span>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label class="custom-control material-checkbox">
                                                        <input type="checkbox" class="material-control-input" />
                                                        <span class="material-control-indicator"></span>
                                                        <span class="material-control-description">Puma</span>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label class="custom-control material-checkbox">
                                                        <input type="checkbox" class="material-control-input" />
                                                        <span class="material-control-indicator"></span>
                                                        <span class="material-control-description">Zara</span>
                                                    </label>
                                                </li>
                                            </ul>

                                            <strong>COLOR </strong>
                                            <ul class="color">
                                                <li>
                                                    <span class="custom-checkbox">
                                                        <a href="/collections/watch/color_black">
                                                            <span class="filter-color"
                                                                style="background-color: black;"></span>
                                                    </a>
                                                    </span>
                                                </li>

                                                <li>
                                                    <span class="custom-checkbox">
                                                        <a href="/collections/watch/color_blue">
                                                            <span class="filter-color"
                                                                style="background-color: blue;"></span>
                                                    </a>
                                                    </span>
                                                </li>

                                                <li>
                                                    <span class="custom-checkbox">
                                                        <a href="/collections/watch/color_green">
                                                            <span class="filter-color"
                                                                style="background-color: green;"></span>
                                                    </a>
                                                    </span>
                                                </li>

                                                <li>
                                                    <span class="custom-checkbox">
                                                        <a href="/collections/watch/color_purple">
                                                            <span class="filter-color"
                                                                style="background-color: purple;"></span>
                                                    </a>
                                                    </span>
                                                </li>

                                                <li>
                                                    <span class="custom-checkbox">
                                                        <a href="/collections/watch/color_white">
                                                            <span class="filter-color"
                                                                style="background-color: white;"></span>
                                                    </a>
                                                    </span>
                                                </li>
                                            </ul>

                                            <strong>GOGGLES </strong>
                                            <ul class="goggles">
                                                <li>
                                                    <label class="custom-control material-checkbox">
                                                        <input type="checkbox" class="material-control-input" />
                                                        <span class="material-control-indicator"></span>
                                                        <span class="material-control-description">Aviatorshape</span>
                                                    </label>
                                                </li>
                                            </ul>

                                            <strong>SIZE </strong>
                                            <ul class="size">
                                                <li>
                                                    <span class="custom-checkbox">
                                                        <a href="#">
                                                            <span class="filter-size"> l </span>
                                                    </a>
                                                    </span>
                                                </li>

                                                <li>
                                                    <span class="custom-checkbox">
                                                        <a href="#">
                                                            <span class="filter-size"> s </span>
                                                    </a>
                                                    </span>
                                                </li>

                                                <li>
                                                    <span class="custom-checkbox">
                                                        <a href="#">
                                                            <span class="filter-size"> xl </span>
                                                    </a>
                                                    </span>
                                                </li>
                                            </ul>

                                            <strong>WATCH </strong>
                                            <ul class="watch">
                                                <li>
                                                    <label class="custom-control material-checkbox">
                                                        <input type="checkbox" class="material-control-input" />
                                                        <span class="material-control-indicator"></span>
                                                        <span class="material-control-description">Digitalwatch</span>
                                                    </label>
                                                </li>

                                                <li>
                                                    <label class="custom-control material-checkbox">
                                                        <input type="checkbox" class="material-control-input" />
                                                        <span class="material-control-indicator"></span>
                                                        <span class="material-control-description">Quartzwatch</span>
                                                    </label>
                                                </li>

                                                <li>
                                                    <label class="custom-control material-checkbox">
                                                        <input type="checkbox" class="material-control-input" />
                                                        <span class="material-control-indicator"></span>
                                                        <span class="material-control-description">Solarwatch</span>
                                                    </label>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="left-column banner">
                                <div class="left-banner">
                                    <div class="left-banner-item">
                                        <div class="left-banner-image">
                                            <a class="customhover scale" href="#">
                                                <img class="left-banner-img" src="images/Left-Banner.webp" alt="Left-banner" class="img-fluid" />
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                            <div class="right-column">
                                <div class="right-column-header">
                                    <div class="right-column-header-img">
                                 <!--        <img src="images/category.webp" alt="#" class="img-fluid"> -->
                                    </div>
                                    <div class="right-column-header-content">
                                        <h3>WATCH</h3>
                                        <p>You will find here all woman fashion collections.</p>
                                        <p> category includes all the basics of your wardrobe and much more:</p>
                                        <p>shoes, accessories, printed t-shirts, feminine dresses, women's jeans!</p>
                                    </div>
                                    <div class="right-column-filter">
                                        <div class="right-column-filter-view">

                                            <div id="collection" class="collection-view">
                                                <div id="grid" class="grid-img list checked">
                                                </div>
                                                <div id="list" class="list-img list">
                                                </div>
                                                <span>There are 20 products</span>
                                            </div>
                                            <div class="filter-toolbar"><label class="sort-label">Sort
                                                    by:</label>
                                                <div class="select-wrapper">
                                                    <select name="SortBy" id="SortBy" class="select-item" style="width: 62px;">

                                                        <option value="title-ascending" selected="selected">Sort
                                                        </option>

                                                        <option value="manual">Featured</option>



                                                        <option value="title-ascending">Alphabetically, A-Z</option>


                                                        <option value="title-descending">Alphabetically, Z-A
                                                        </option>


                                                        <option value="price-ascending">Price, low to high</option>


                                                        <option value="price-descending">Price, high to low</option>


                                                        <option value="created-descending">Date, new to old</option>


                                                        <option value="created-ascending">Date, old to new</option>


                                                    </select>
                                                </div>

                                            </div>


                                        </div>
                                    </div>
                                    <div class="right-column-product row">
                                    <c:forEach var="product" items="${products}">
                                        <div class="product-item col-xl-4 col-lg-4 col-md-4 col-sm-6 col-6 ">
                                            <div class="product-item-img image-01">
                                                <a href="#">
                                                    <img src="<spring:url value='/resources/photo/${product.image }'/>" alt="product-3" class="img-fluid" />
                                                </a>
                                                <div class="product-flag">
                                                    <span class="flag sale">SALE</span>
                                                </div>

                                                <div class="product-block-hover grid-hover">
                                                    <div class="nm-cartmain add_to_cart_main grid-cart">
                                                        <div class="div">
                                                            <div class="product-form-item">
                                                                <a href="#" class="nm-addToCart addToCart enable btn">
                                                                    <span class="value">
                                                                        Add To Cart
                                                                    </span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="button-rewiew">
                                                    <span class="spr-badge"><span
                                                            class="spr-starrating spr-badge-starrating"><i
                                                                class="spr-icon spr-icon-star-empty"></i><i
                                                                class="spr-icon spr-icon-star-empty"></i><i
                                                                class="spr-icon spr-icon-star-empty"></i><i
                                                                class="spr-icon spr-icon-star-empty"></i><i
                                                                class="spr-icon spr-icon-star-empty"></i></span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h3><a href="#">${product.name }</a></h3>
                                                <div class="product-price">
                                                    <span class="product-price-discount">
                                                        $85.00
                                                    </span>
                                                    <span class="product-price-percentage">
                                                        5%
                                                    </span>
                                                    <span>
                                                        $80.00
                                                    </span>
                                                </div>
                                                <div class="product-desc">
                                                    Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer! Sample Unordered List Comodous in tempor...
                                                </div>
                                                <div class="product-block-hover grid-hover">
                                                    <div class="nm-cartmain add_to_cart_main grid-cart">
                                                        <div class="div">
                                                            <div class="product-form-item">
                                                                <a href="#" class="nm-addToCart addToCart enable btn">
                                                                    <span class="value">
                                                                        Add To Cart
                                                                    </span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
										</c:forEach>
                                    </div>
                                </div>
                                <div class="right-column-pagination ">
                                    <div class="pagination-block container">
                                        <div class="pagination-text ">
                                            Showing 1 -15 of 20 items
                                        </div>
                                        <div class="pagination-view">
                                            <div class="previous">
                                                <div class="btn ">
                                                    <i class="fas fa-chevron-left"></i>
                                                </div>
                                            </div>
                                            <div class="pagination-collection clearfix">
                                                <div class="parts">
                                                    <span class="item current">1</span>
                                                    <a href="#" class="item link">2</a>
                                                </div>
                                            </div>
                                            <div class="nexts">
                                                <a href="#" class="btn ">
                                                    <i class="fas fa-chevron-right"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </section>
    </article>
    <footer>
        <div class="footer-before">
            <div class="container">
                <div class="contact-info">
                    <div class="content-info- row">
                        <div class="content-info-row col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12">
                            <div class="content-icon">
                                <i class="fas fa-phone-alt"></i>
                            </div>
                            <div class="content">
                                <span class="text"> Call Us :</span>
                                <a href="/">
                                    +91 23654987
                                </a>
                            </div>
                        </div>
                        <div class="content-info-row col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12">
                            <div class="content-icon">
                                <i class="fas fa-map-marker-alt"></i>
                            </div>
                            <div class="content">
                                <span>4005, Silver Business Point</span>
                                <span>India</span>
                            </div>
                        </div>
                        <div class="content-info-row col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12">
                            <div class="content-icon">
                                <i class="fa fa-envelope"></i>
                            </div>
                            <div class="content">
                                <span class="text">Email :</span>
                                <a href="mailto:info@gmail.com ">
                                    info@gmail.com
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-container">
            <div class="row row-0px">
                <div class="footer-left col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                    <div class="footer-left-watch">
                        <div class="footer-left-watch-img">
                            <a href="#"><img src="images/Logo.webp" alt="Logo" class="img-fluid" /></a>
                        </div>
                        <div class="footer-left-watch-content">
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed avehicula nisl. Etiam sed magna in purus vestibulum molestie
                            </p>
                        </div>
                    </div>
                    <div class="footer-left-follow">
                        <div class="footer-left-follow-title">
                            <h3>FOLLOW US</h3>
                        </div>
                        <div class="footer-left-follow-content">
                            <ul class="list-icon">
                                <li class="facebook">
                                    <a href="#"><i class="fab fa-facebook-f" aria-hidden="true"></i></a>
                                </li>
                                <li class="twitter"><i class="fab fa-twitter"></i></li>
                                <li class="pinterest"><i class="fab fa-pinterest-p"></i></li>
                                <li class="instagram"><i class="fab fa-instagram"></i></li>
                                <li class="tumblr"><i class="fab fa-tumblr"></i></li>
                                <li class="youtube"><i class="fab fa-youtube"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="footer-right col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                    <div class="footer-check">
                        <h3>SIGN UP & GET OFFER</h3>
                        <div class="footer-check-content">
                            <p>Sign up for latest offers and promotions</p>
                        </div>
                        <div class="footer-check-input input-group">
                            <form action="#" class="w-100">
                                <div class="input-group mt-3 mb-3">
                                    <input type="text" class="form-control search" name="q" value="" placeholder="Enter Your E-Mail" />
                                    <div class="input-group-append">
                                        <button class="btn">SUBSCRIBE</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="footer-account">
                        <h3>YOUR ACCOUNT</h3>
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
                            <p>
                                © 2020, Watchshop Sectioned Shopify Theme Powered by Shopify
                            </p>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6"></div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="<spring:url value='/resources/assets/web/js/jquery-3.3.1.slim.min.js'/> "></script>
    <script src="<spring:url value='/resources/assets/web/js/popper.min.js'/> "></script>
    <script src="<spring:url value='/resources/assets/web/js/bootstrap.min.js'/> "></script>
    <script src="<spring:url value='/resources/assets/web/js/webslidemenu.js '/>"></script>
    <script src="<spring:url value='/resources/assets/web/js/slick.min.js '/>"></script>
    <script src="<spring:url value='/resources/assets/web/js/site.js '/>"></script>
    <script src="<spring:url value='/resources/assets/web/js/slideshow.js '/>"></script>
    <script src="<spring:url value='/resources/assets/web/js/theme.js'/> "></script>
     <script src="<spring:url value='/resources/assets/web/js/index.js'/> "></script>
</body>

</html>