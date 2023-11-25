<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Favicon -->
<link rel="shortcut icon" href="images/favicon.ico" />
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/dataTables.bootstrap4.min.css">
<!-- Typography CSS -->
<link rel="stylesheet" href="css/typography.css">
<!-- Style CSS -->
<link rel="stylesheet" href="css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
</head>
<body>
	<!-- sidebar -->
	<jsp:include page="sidebar.jsp"></jsp:include>
	<!-- Trang có chứa dữ liệu động -->
	
	<!-- sidebar -->
	<jsp:include page="top_navigate.jsp"></jsp:include>
	<!-- Trang có chứa dữ liệu động -->
	
	<!-- Page Content  -->
	<div id="content-page" class="content-page">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-12">
					<div class="iq-card">
						<div class="iq-card-header d-flex justify-content-between">
							<div class="iq-header-title">
								<h4 class="card-title">Add Categories</h4>
							</div>
						</div>
						<div class="iq-card-body">
							<form
								action="https://templates.iqonic.design/booksto/html/admin-category.html">
								<div class="form-group">
									<label>Category Name:</label> <input type="text"
										class="form-control">
								</div>
								<div class="form-group">
									<label>Category Description:</label>
									<textarea class="form-control" rows="4"></textarea>
								</div>
								<button type="submit" class="btn btn-primary">Submit</button>
								<button type="reset" class="btn btn-danger">Reset</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- Wrapper END -->
	<!-- Footer -->
	<footer class="iq-footer">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-6">
					<ul class="list-inline mb-0">
						<li class="list-inline-item"><a href="privacy-policy.html">Privacy
								Policy</a></li>
						<li class="list-inline-item"><a href="terms-of-service.html">Terms
								of Use</a></li>
					</ul>
				</div>
				<div class="col-lg-6 text-right">
					Copyright 2020 <a href="#">Booksto</a> All Rights Reserved.
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer END -->
	<!-- color-customizer -->
	<div class="iq-colorbox color-fix">
		<div class="buy-button">
			<a class="color-full" href="#"><i class="fa fa-spinner fa-spin"></i></a>
		</div>
		<div id="right-sidebar-scrollbar" class="iq-colorbox-inner">
			<div class="clearfix color-picker">
				<h3 class="iq-font-black">Booksto Awesome Color</h3>
				<p>This color combo available inside whole template. You can
					change on your wish, Even you can create your own with limitless
					possibilities!</p>
				<ul class="iq-colorselect clearfix">
					<li class="color-1 iq-colormark" data-style="color-1"></li>
					<li class="color-2" data-style="iq-color-2"></li>
					<li class="color-3" data-style="iq-color-3"></li>
					<li class="color-4" data-style="iq-color-4"></li>
					<li class="color-5" data-style="iq-color-5"></li>
					<li class="color-6" data-style="iq-color-6"></li>
					<li class="color-7" data-style="iq-color-7"></li>
					<li class="color-8" data-style="iq-color-8"></li>
					<li class="color-9" data-style="iq-color-9"></li>
					<li class="color-10" data-style="iq-color-10"></li>
					<li class="color-11" data-style="iq-color-11"></li>
					<li class="color-12" data-style="iq-color-12"></li>
					<li class="color-13" data-style="iq-color-13"></li>
					<li class="color-14" data-style="iq-color-14"></li>
					<li class="color-15" data-style="iq-color-15"></li>
					<li class="color-16" data-style="iq-color-16"></li>
					<li class="color-17" data-style="iq-color-17"></li>
					<li class="color-18" data-style="iq-color-18"></li>
					<li class="color-19" data-style="iq-color-19"></li>
					<li class="color-20" data-style="iq-color-20"></li>
				</ul>
				<a target="_blank" class="btn btn-primary d-block mt-3" href="#">Purchase
					Now</a>
			</div>
		</div>
	</div>
	<!-- color-customizer END -->
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap4.min.js"></script>
	<!-- Appear JavaScript -->
	<script src="js/jquery.appear.js"></script>
	<!-- Countdown JavaScript -->
	<script src="js/countdown.min.js"></script>
	<!-- Counterup JavaScript -->
	<script src="js/waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<!-- Wow JavaScript -->
	<script src="js/wow.min.js"></script>
	<!-- Apexcharts JavaScript -->
	<script src="js/apexcharts.js"></script>
	<!-- Slick JavaScript -->
	<script src="js/slick.min.js"></script>
	<!-- Select2 JavaScript -->
	<script src="js/select2.min.js"></script>
	<!-- Owl Carousel JavaScript -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup JavaScript -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<!-- Smooth Scrollbar JavaScript -->
	<script src="js/smooth-scrollbar.js"></script>
	<!-- lottie JavaScript -->
	<script src="js/lottie.js"></script>
	<!-- am core JavaScript -->
	<script src="js/core.js"></script>
	<!-- am charts JavaScript -->
	<script src="js/charts.js"></script>
	<!-- am animated JavaScript -->
	<script src="js/animated.js"></script>
	<!-- am kelly JavaScript -->
	<script src="js/kelly.js"></script>
	<!-- am maps JavaScript -->
	<script src="js/maps.js"></script>
	<!-- am worldLow JavaScript -->
	<script src="js/worldLow.js"></script>
	<!-- Raphael-min JavaScript -->
	<script src="js/raphael-min.js"></script>
	<!-- Morris JavaScript -->
	<script src="js/morris.js"></script>
	<!-- Morris min JavaScript -->
	<script src="js/morris.min.js"></script>
	<!-- Flatpicker Js -->
	<script src="js/flatpickr.js"></script>
	<!-- Style Customizer -->
	<script src="js/style-customizer.js"></script>
	<!-- Chart Custom JavaScript -->
	<script src="js/chart-custom.js"></script>
	<!-- Custom JavaScript -->
	<script src="js/custom.js"></script>
</body>
</html>