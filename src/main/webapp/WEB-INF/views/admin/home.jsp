<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
        <!-- style -->
        <link rel="stylesheet" href="<spring:url value='/resources/assets/admin/css/style.css' />">
    <!-- link Bootstrap -->
    <link rel="stylesheet" href="<spring:url value='/resources/assets/admin/css/bootstrap.min.css' />">

    <!-- link Jquery -->
    <script src="<spring:url value='/resources/assets/admin/js/jquery-3.4.1.min.js' />"></script>
    <!-- link FontAwsome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
                        <a class="navbar-brand" href="#1">
                   
Admin Panel
</a>
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="/">
                       
    Home
  </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/dang-xuat">
                     
    SignOut
  </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        <!-- </div> -->
        <div class="row admin__content px-0">
            <div class=" col-sm-2 col-md-2 col-lg-2 col-xl-2 px-0">
                <div class="admin__manager">
                    <div class="title">
               
    Management
    </div>
                   <ul class="px-0 nav-ul">
                        <li class="active"><a href="${pageContext.request.contextPath}/quan-tri/">Trang chủ</a></li>
                        <li><a href="${pageContext.request.contextPath}/quan-tri/nguoi-dung?page=1&limit=5">Quản lí người dùng</a></li>
                        <li><a href="${pageContext.request.contextPath}/quan-tri/phan-quyen?page=1&limit=5">Quản lí phân quyền</a></li>
                        <li><a href="${pageContext.request.contextPath}/quan-tri/danh-muc?page=1&limit=5">Quản lí danh mục</a></li>
                        <li ><a href="${pageContext.request.contextPath}/quan-tri/san-pham?page=1&limit=5">Quản lí sản phẩm</a></li>
                  <%--        <li><a href="${pageContext.request.contextPath}/quan-tri/danh-muc?page=1&limit=5">Quản lí danh mục</a></li> --%>
                        <li><a href="${pageContext.request.contextPath}/quan-tri/don-hang">Quản lí đơn hàng</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-10 col-md-10 col-lg-10 col-xl-10 admin__dashboard">
                <div class="title">My Dashboard</div> 
                <div class="modal" id="courseModal">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">
                                    Add New Course
            </h4>
                                <button type="button" class="close" data-dismiss="modal">×</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label htmlFor="tenKhoaHoc">
                                        Course's Name
            </label>
                                    <input name="tenKhoaHoc" type="text" class="form-control" />
                                </div>
                                <div classclass="form-group">
                                    <label htmlFor="moTa">
                                        Description
            </label>
                                    <input name="moTa" type="text" class="form-control" />
                                </div>
                                <div class="form-group">class
                                    <label htmlFor="hinhAnh">Image</label>
                                    <input name="hinhAnh" type="text" class="form-control" />
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary">
                                    Add
            </button>
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- sssssssssss -->
                <div class="chart" id="chart"></div>
            </div>
        </div>
    </div>
  
  <!-- link Bootstrap -->
  <script src="<spring:url value='/resources/assets/admin/js/bootstrap.min.js' />"></script>
      <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
      
      <script>
      
		var options = {
		  series: [44, 55, 13, 33],
		  chart: {
		  width: 380,
		  type: 'donut',
		},
		dataLabels: {
		  enabled: false
		},
		responsive: [{
		  breakpoint: 480,
		  options: {
		    chart: {
		      width: 200
		    },
		    legend: {
		      show: false
		    }
		  }
		}],
		legend: {
		  position: 'right',
		  offsetY: 0,
		  height: 230,
		}
		};
		
		var chart = new ApexCharts(document.querySelector("#chart"), options);
		chart.render();
		
		var obj = JSON.stringify(${statisticAccountByMonth});
		var jsonObj = JSON.parse(obj);
		console.log('count: ' + jsonObj.count);
	</script>
</body>

</html>