<%@page import="model.*"%>
<%@page import="java.util.List"%>
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
<!-- Typography CSS -->
<link rel="stylesheet" href="css/typography.css">
<!-- Style CSS -->
<link rel="stylesheet" href="css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>
	
	<!-- sidebar -->
	<jsp:include page="sidebar.jsp"></jsp:include>
	<!-- Trang có chứa dữ liệu động -->
	
	<!-- sidebar -->
	<jsp:include page="top_navigate.jsp"></jsp:include>
	<!-- Trang có chứa dữ liệu động -->
	
	<%List<MuontraDTO> lst_loancard = (List<MuontraDTO>)session.getAttribute("lst_loancard2"); %>
	<div id="content-page" class="content-page">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-12">
					<div class="iq-card">
						<div class="iq-card-header d-flex justify-content-between">
							<div class="iq-header-title">
								<h4 class="card-title"></h4>
							</div>
						</div>
						<div class="iq-card-body">
							<div class="table-responsive">
								<div class="row justify-content-between">
									<div class="col-sm-12 col-md-6">
										<div id="user_list_datatable_info" class="dataTables_filter">
											<form class="mr-3 position-relative" id="myForm"
												action="Muontracontroller" method="get">
												<div class="form-group mb-0">
													<div class="input-group" style="position: relative;">
														<input type="text" class="form-control" id="Search1"
															placeholder="Search1" aria-controls="user-list-table"
															name="Search1"> <input type="hidden"
															name="action" value="Search1">
														<div class="input-group-append"
															style="position: absolute; right:-100px; top: 0; height: 100%; display: flex; align-items: center;">
															<button type="button" class="btn btn-primary"
																onclick="checkSearch()">Tìm kiếm</button>
														</div>
														<div class="input-group-append"
															style="position: absolute; right:-150px; top: 0; height: 100%; display: flex; align-items: center;">

														</div>
														<a style="margin-top: 10px; margin-left: 5px" href="Muontracontroller?action=history"><i class="fas fa-sync"></i></a>
													</div>
												</div>
											</form>
										</div>
									</div>
									<div class="col-sm-12 col-md-6">
										<div class="user-list-files d-flex float-right">
										<!-- 	<a class="iq-bg-primary" href="javascript:void();"> Thêm	
											</a> <a class="iq-bg-primary" href="javascript:void();">
												Excel </a> <a class="iq-bg-primary" href="javascript:void();">
												Pdf </a> -->
										</div>
									</div>
								</div>
								<table id="user-list-table"
									class="table table-striped table-bordered mt-4" role="grid"
									aria-describedby="user-list-page-info">
									<thead>
										<tr>
											<th>Hình</th>
											<th>Mã mượn trả</th>
											<th>email</th>
											<th>Ngày mượn</th>
											<th>Xem chi tiết</th>
											<th>Trạng thái</th>
										</tr>
									</thead>
									<tbody>
										<%
										for(MuontraDTO item : lst_loancard)
										{
										%>
										<tr>
											<td class="text-center"><img
												class="rounded img-fluid avatar-40" src="https://thethaovanhoa.mediacdn.vn/2012/05/29/13/37/sach.jpg"
												alt="profile"></td>
											<td><%="MT"+ item.getId_muon()%></td>
											<td><%= item.getEmail() %></td>
											<td><%= item.getNgaymuon() %></td>
											<td><a href="Chitietmuontracontroller?action=show_detail2&id=<%=item.getId_muon()%>"> Xem chi tiết </a></td>
											<td>
											<%
											if(item.getTinhtrangmuon() == 1)
											{
											%>
											<span class="badge iq-bg-primary">Đang mượn</span>
											<%}else{%>
											<span class="badge iq-bg-info">Hoàn thành</span>
											<%}%>
											</td>
										</tr>
										<%
										}
										%>
									</tbody>
								</table>
							</div>
							<div class="row justify-content-between mt-3">
								<div id="user-list-page-info" class="col-md-6">
									<span>Showing 1 to 5 of 5 entries</span>
								</div>
								<div class="col-md-6">
									<nav aria-label="Page navigation example">
										<ul class="pagination justify-content-end mb-0">
											<li class="page-item disabled"><a class="page-link"
												href="#" tabindex="-1" aria-disabled="true">Previous</a></li>
											<li class="page-item active"><a class="page-link"
												href="#">1</a></li>
											<li class="page-item"><a class="page-link" href="#">2</a></li>
											<li class="page-item"><a class="page-link" href="#">3</a></li>
											<li class="page-item"><a class="page-link" href="#">Next</a>
											</li>
										</ul>
									</nav>
								</div>
							</div>
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
	<script>
	function checkSearch() {
	    var inputValue = document.getElementById('Search1').value;
	    var regex = /^mt\d+$/; // Định dạng cần kiểm tra (ví dụ: chỉ chấp nhận chữ cái và số)

	    if (regex.test(inputValue)) {
	      // Nếu định dạng hợp lệ, chuyển hướng form
	      document.getElementById('myForm').submit();
	    } else {
	      // Nếu định dạng không hợp lệ, hiển thị thông báo
	      alert('Search1 không đúng định dạng. Định dạng phải là chữ cái và số.');
	    }
	  }
  </script>
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
	<!-- Style Customizer -->
	<script src="js/style-customizer.js"></script>
	<!-- Chart Custom JavaScript -->
	<script src="js/chart-custom.js"></script>
	<!-- Custom JavaScript -->
	<script src="js/custom.js"></script>
</body>
</html>