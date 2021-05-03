<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trang chủ</title>
<!-- style -->
<link rel="stylesheet"
	href="<spring:url value='/resources/assets/admin/css/style.css' />">
<!-- link Bootstrap -->
<link rel="stylesheet"
	href="<spring:url value='/resources/assets/admin/css/bootstrap.min.css' />">

<!-- link Jquery -->
<script
	src="<spring:url value='${pageContext.request.contextPath}/resources/assets/admin/js/jquery-3.6.0.min.js' />"></script>
<script
	src="<spring:url value='${pageContext.request.contextPath}/resources/assets/admin/js/bootstrap.min.js' /> "></script>
<script
	src="<spring:url value='${pageContext.request.contextPath}/resources/assets/admin/paging/jquery.twbsPagination.js'/>"></script>
<!-- link FontAwsome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- ngoai -->
<!-- <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css"> -->
<script src="https://kit.fontawesome.com/7eaad007ea.js"></script>
<!-- <link rel="stylesheet" type="text/css" charset="UTF-8"
        href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.css" /> -->
<!-- <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick-theme.min.css" /> -->
</head>

<body>
	<!-- HEADER -->
	<div class="container-fluid admin__panel px-0">
		<!-- <div> -->
		<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 px-0">
			<div class="admin__header">
				<nav class="navbar navbar-expand-md bg-dark px-4">
					<a class="navbar-brand" href="#1">Admin Panel</a>
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="/">Home</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/dang-nhap">SignOut</a></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- </div> -->
		<div class="row admin__content px-0">
			<div class=" col-sm-2 col-md-2 col-lg-2 col-xl-2 px-0">
				<div class="admin__manager">
					<div class="title">Management</div>
					<ul class="px-0 nav-ul">
						<li><a href="${pageContext.request.contextPath}/quan-tri/">Trang
								chủ</a></li>
						<li><a
							href="${pageContext.request.contextPath}/quan-tri/nguoi-dung/">Quản
								lí người dùng</a></li>
						<li><a
							href="${pageContext.request.contextPath}/quan-tri/phan-quyen">Quản
								lí phân quyền</a></li>
						<li><a
							href="${pageContext.request.contextPath}/quan-tri/danh-muc?page=1&limit=5">Quản
								lí danh mục</a></li>
						<li class="active"><a
							href="${pageContext.request.contextPath}/quan-tri/san-pham?page=1&limit=5">Quản
								lí sản phẩm</a></li>
						<%--        <li><a href="${pageContext.request.contextPath}/quan-tri/danh-muc?page=1&limit=5">Quản lí danh mục</a></li> --%>
						<li><a
							href="${pageContext.request.contextPath}/quan-tri/don-hang">Quản
								lí đơn hàng</a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-10 col-md-10 col-lg-10 col-xl-10 admin__dashboard">
				<div class="title">My Dashboard</div>
				<div class="row post__title">
					<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 add__search">
						<a class="btn btn-success"
							href="${pageContext.request.contextPath}/quan-tri/nguoi-dung/chinh-sua">Thêm tài khoản</a>
						<!-- <button class="add__course" data-toggle="modal" data-target="#courseModal">ADD COURSE</button> -->
						<input name="search" type="text" placeholder="Search Course" />
					</div>
				</div>
				<div class="modal" id="courseModal">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">Add New Course</h4>
								<button type="button" class="close" data-dismiss="modal">×</button>
							</div>
							<div class="modal-body">
								<div class="form-group">
									<label htmlFor="tenKhoaHoc">Course's Name</label> <input
										name="tenKhoaHoc" type="text" class="form-control" />
								</div>
								<div classclass="form-group">
									<label htmlFor="moTa">Description</label> <input name="moTa"
										type="text" class="form-control" />
								</div>
								<div class="form-group">
									class <label htmlFor="hinhAnh">Image</label> <input
										name="hinhAnh" type="text" class="form-control" />
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-primary">Add</button>
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
				<form action="<c:url value='/quan-tri/nguoi-dung' />"
					id="formsubmit" method="get">
					<table class="table table-striped table__courses">
						<thead>
							<tr>
								<th>Id</th>
								<th>Email</th>
								<th>Photo</th>
								<th>Birthday</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="account" items="${accounts}">
								<tr>
									<td>${ account.id }</td>
									<td>${ account.email }</td>
									<td><img
										src="<spring:url value='/resources/photo/${account.image}' />"
										width="60px" height="60px" /></td>
									<td>${ account.birthday }</td>
									<td><a
										href="${pageContext.request.contextPath}/quan-tri/nguoi-dung/chinh-sua?id=${account.id}"
										class="btn btn-info mr-2"> <i class="fas fa-edit"></i>
									</a> <a
										href="${pageContext.request.contextPath}/quan-tri/nguoi-dung/${account.id}"
										class="btn btn-danger mr-2"> <i class="fas fa-remove"></i>
									</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<ul class="pagination" id="pagination"></ul>
					<input type="hidden" value="" id="page" name="page" /> <input
						type="hidden" value="" id="limit" name="limit" />
				</form>
			</div>
		</div>

	</div>

	<!-- link Bootstrap -->
	<script type="text/javascript">
		var totalPages = $
		{
			totalPage
		};
		var currentPage = $
		{
			page
		};
		$(function() {
			window.pagObj = $('#pagination').twbsPagination({
				totalPages : totalPages,
				visiblePages : 10,
				startPage : currentPage,
				onPageClick : function(event, page) {
					if (currentPage != page) {
						$('#limit').val(5);
						$('#page').val(page);
						$('#formsubmit').submit();
					}
				}
			});
		});
	</script>
</body>

</html>