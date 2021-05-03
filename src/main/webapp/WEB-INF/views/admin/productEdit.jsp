<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
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
<!-- <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css"> -->
<script src="https://kit.fontawesome.com/7eaad007ea.js"></script>
<style type="text/css">
input{
text-align: center;
}
.input-group-text {
	justify-content: center;
	width: 200px;
	background: #1e90ff;
	color: #fff;
	font-weight: bolder;
	
}
.btn--black{
background: #fff;
color: #1e90ff;
font-weight: bolder;
border-radius: 10px;
border: 2px solid #1e90ff; 
float: right;
}
</style>
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
						<li class="nav-item"><a class="nav-link" href="#1">SignOut</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- </div> -->
		<div class="row admin__content px- 0">
			<div class=" col-sm-2 col-md-2 col-lg-2 col-xl-2 px-0">
				<div class="admin__manager">
					<div class="title">Management</div>
					<ul class="px-0 nav-ul">
						<li><a href="${pageContext.request.contextPath}/quan-tri/">Trang
								chủ</a></li>
						<li><a
							href="${pageContext.request.contextPath}/quan-tri/nguoi-dung">Quản
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
						<a class="btn btn--black mt-2"
							href="${pageContext.request.contextPath}/quan-tri/nguoi-dung/chinh-sua">Thêm
							Sản Phẩm</a>
						<!--  <button  class="add__course" data-toggle="modal" data-target="#courseModal">ADD COURSE</button> -->
						<input name="search" type="text" placeholder="Search Course" />
					</div>
				</div>
				<div class="modal" id="courseModal">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">Thêm Sản Phẩm</h4>
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
				<s:form method="POST" modelAttribute="model"
					action="${pageContext.request.contextPath}/quan-tri/san-pham/chinh-sua"
					enctype="multipart/form-data">
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">Add User</h6>
						</div>
						<div class="card-body">
							<!-- input text code -->
							<div class="table-responsive">
								<div class="input-group">
									<%--        <div class="input-group-prepend">
                                        <span class="input-group-text" id="">Id</span>
                                    </div> --%>
									<s:hidden path="id" class="form-control" />
								</div>
							</div>
							<br />
							<div class="table-responsive">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text" id="">Tên sản phẩm</span>
									</div>
									<s:input path="name" class="form-control" />
								</div>
							</div>
							<br />
							<div class="input-group mb-3">

								<div class="custom-file">
									<!-- id="inputGroupFile01 -->
									<input name="multipartFile" type="file" class="custom-file-input" /> 
									<label class="custom-file-label" for="inputGroupFile01">Hình ảnh sản phẩm</label>
								</div>
							</div>
							<s:hidden path="image" value="default.jpg" />
							<div class="table-responsive">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text" id="">Mô tả sản phẩm</span>
									</div>
									<s:input path="description" class="form-control" />
								</div>
							</div>
							<br />
							<div class="table-responsive">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text" id="">Giá</span>
									</div>
									<s:input path="price" class="form-control" />
								</div>
								<br />
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text" id="">Số lượng</span>
									</div>
									<s:input path="quantity" class="form-control" />
								</div>
								<br />
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<label class="input-group-text" for="inputGroupSelect01">Thuộc
											Danh Mục</label>
									</div>
									<s:select path="category.id" class="custom-select"
										id="inputGroupSelect01">
										<s:option value="">--- Choose Roles ---</s:option>
										<s:options items="${categories}" />
									</s:select>
								</div>
								<br />
							</div>
							<br />
							<div class="table-responsive">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text" id="">Trạng thái</span>
									</div>
									<s:input path="status" value="1" class="form-control" />
								</div>
							</div>
							<br />
							<s:errors path="status" class="alert alert-danger" role="alert" />
							<br>
							<br> <input type="submit" class="btn btn--black w-25"
								name="action" value="${action}" />
						</div>
					</div>
				</s:form>
			</div>
		</div>

	</div>
	<!-- link Bootstrap -->
	<script
		src="<spring:url value='/resources/assets/admin/js/bootstrap.min.js' /> "></script>
</body>

</html>