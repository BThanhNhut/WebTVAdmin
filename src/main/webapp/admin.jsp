<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="images/favicon.ico" />
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
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
				<div class="col-md-6 col-lg-3">
					<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
						<div class="iq-card-body">
							<div class="d-flex align-items-center">
								<div class="rounded-circle iq-card-icon bg-primary">
									<i class="ri-user-line"></i>
								</div>
								<div class="text-left ml-3">
									<h2 class="mb-0">
										<span class="counter">5000</span>
									</h2>
									<h5 class="">Thành viên</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3">
					<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
						<div class="iq-card-body">
							<div class="d-flex align-items-center">
								<div class="rounded-circle iq-card-icon bg-danger">
									<i class="ri-book-line"></i>
								</div>
								<div class="text-left ml-3">
									<h2 class="mb-0">
										<span class="counter">400</span>
									</h2>
									<h5 class="">Sách</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
						<div
							class="iq-card-header d-flex justify-content-between align-items-center">
							<div class="iq-header-title">
								<h4 class="card-title mb-0">Summary</h4>
							</div>
						</div>
						<div class="iq-card-body">
							<ul class="list-inline p-0 mb-0">
								<li>
									<div class="iq-details mb-2">
										<span class="title">Sách hiện tại</span>
										<div class="percentage float-right text-primary">
											100 <span></span>
										</div>
										<div class="iq-progress-bar-linear d-inline-block w-100">
											<div class="iq-progress-bar iq-bg-primary">
												<span class="bg-primary" data-percent="90"></span>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="iq-details mb-2">
										<span class="title">Sách đã được mượn</span>
										<div class="percentage float-right text-warning">
											72 <span></span>
										</div>
										<div class="iq-progress-bar-linear d-inline-block w-100">
											<div class="iq-progress-bar iq-bg-warning">
												<span class="bg-warning" data-percent="75"></span>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
						<div class="iq-card-header d-flex justify-content-between">
							<div class="iq-header-title">
								<h4 class="card-title">Lịch sử mượn trả</h4>
							</div>
							<div class="iq-card-header-toolbar d-flex align-items-center">
								<div class="dropdown">
									<span class="dropdown-toggle text-primary"
										id="dropdownMenuButton5" data-toggle="dropdown"> <i
										class="ri-more-fill"></i>
									</span>
									<div class="dropdown-menu dropdown-menu-right"
										aria-labelledby="dropdownMenuButton5">
										<a class="dropdown-item" href="#"><i
											class="ri-eye-fill mr-2"></i>View</a> <a class="dropdown-item"
											href="#"><i class="ri-delete-bin-6-fill mr-2"></i>Delete</a>
										<a class="dropdown-item" href="#"><i
											class="ri-pencil-fill mr-2"></i>Edit</a> <a class="dropdown-item"
											href="#"><i class="ri-printer-fill mr-2"></i>Print</a> <a
											class="dropdown-item" href="#"><i
											class="ri-file-download-fill mr-2"></i>Download</a>
									</div>
								</div>
							</div>
						</div>
						<div class="iq-card-body">
							<div class="table-responsive">
								<table class="table mb-0 table-borderless">
									<thead>
										<tr>
											<th scope="col">Client</th>
											<th scope="col">Date</th>
											<th scope="col">Invoice</th>
											<th scope="col">Amount</th>
											<th scope="col">atatus</th>
											<th scope="col">Action</th>

										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Ira Membrit</td>
											<td>18/10/2019</td>
											<td>20156</td>
											<td>$1500</td>
											<td><div class="badge badge-pill badge-success">Paid</div></td>
											<td>Copy</td>
										</tr>
										<tr>
											<td>Cliff Hanger</td>
											<td>18/11/2019</td>
											<td>6396</td>
											<td>$2500</td>
											<td><div class="badge badge-pill badge-danger">Past
													Due</div></td>
											<td>Before Due</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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
	<!-- color-customizer END -->
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
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