<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SOSORDER</title>
  
  
  <!-- Custom fonts for this template-->
  <link href="resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="resources/admin/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Bootstrap core JavaScript-->
  <script src="resources/admin/vendor/jquery/jquery.min.js"></script>
  <script src="resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
  <!-- slick -->
  <script src="resources/admin/js/slick/jquery-1.12.4.min.js"></script>
  <script src="resources/admin/js/slick/slick.min.js"></script>
  <link href="resources/admin/js/slick/slick.css" rel="stylesheet">
  <link href="resources/admin/js/slick/slick.min.js" rel="stylesheet">
  
  
  <!-- Core plugin JavaScript-->
  <script src="resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="resources/admin/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="resources/admin/vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="resources/admin/js/demo/chart-area-demo.js"></script>
  <script src="resources/admin/js/demo/chart-pie-demo.js"></script>
  
  <!-- addcss -->
  <link href="resources/admin/scss/addcss/common.css" rel="stylesheet">
  <link href="resources/admin/scss/addcss/layout.css" rel="stylesheet">
  <script src="resources/admin/scss/addcss/basic.js"></script>

  <link href="resources/admin/scss/addcss/jw.css" rel="stylesheet">
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">


    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">
		<!-- top -->
		<header id="hd_wrap" class="over hd-up">

			<div id="hd_gnb" class="gnb_pc">
				<div id="gnb_menu" class="hd_gnb_menu"><span></span></div>				
				<tiles:insertAttribute name="menu"/>
				<!--  -->
				<div class="nav-item dropdown no-arrow" style="position: absolute; right: 0; top: 0; z-index: 9;">
	              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                <span class="mr-2 d-none d-lg-inline" style="font-size: 21px;">로그인</span>
	                <i class="fa fa-user-circle-o" aria-hidden="true" style="font-size: 47px; vertical-align: middle;"></i>
	              </a>
              </div>
            
				<!--  -->
				
			</div>
			<!-- hd_gnb -->
			<div class="hd_bg"></div>
		</header>
		
		<div id="gnb_menu_box" class="gnb_mo_menu">
			<tiles:insertAttribute name="adminMenu"/>
			<ul class="con">
				<li>웰리브의원</li>
				<li>대구 달서구 갈밭로 6 대곡메디컬빌딩 2층</li>
			</ul>
		</div>
		<!-- top End-->
		
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <!-- <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
          </div> -->

       <!-- 컨텐츠 영역 -->
       	<tiles:insertAttribute name="content"/>
       <!-- 컨텐츠 영역 -->
       
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; SOSORDER 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">Ã</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>


 
</body>

</html>
