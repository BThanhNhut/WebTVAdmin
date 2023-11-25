<%@page import="model.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="sidebar-main-active right-column-fixed">
	<!-- sidebar -->
	<jsp:include page="sidebar.jsp"></jsp:include>
	<!-- Trang có chứa dữ liệu động -->

	<!-- sidebar -->
	<jsp:include page="top_navigate.jsp"></jsp:include>
	<!-- Trang có chứa dữ liệu động -->

	<%List<MuontraDTO> lst_loancard = (List<MuontraDTO>)session.getAttribute("lst_loancard"); %>
	<!-- Page Content  -->
	<div id="content-page" class="content-page">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-12">
					<div class="iq-card">
						<div class="iq-card-header d-flex justify-content-between">
							<div class="iq-header-title">
								<h4 class="card-title">Danh sách phiếu mượn</h4>
							</div>
						</div>
						<div class="iq-card-body">
							<div id="table" class="table-editable">
								<span class="table-add float-right mb-3 mr-2"> </span>
								<table
									class="table table-bordered table-responsive-md table-striped text-center">
									<thead>
										<tr>
											<th>Mã mượn trả</th>
											<th>Tài khoản</th>
											<th>Ngày mượn</th>
									
											<th>Chi tiết</th>
											<th>Trạng thái</th>

										</tr>
									</thead>
									<tbody>
										<%
										for(MuontraDTO item : lst_loancard)
										{
										%>
										<tr>
											<td contenteditable="false"><%="MT" + item.getId_muon() %></td>
											<td contenteditable="false"><%=item.getEmail() %></td>
											<td contenteditable="false"><%=item.getNgaymuon() %></td>
								
											<td contenteditable="false"><a href="Chitietmuontracontroller?action=show_detail&id=<%=item.getId_muon()%>"> Xem chi tiết </a></td>
											<td contenteditable="false">
												<button class="btn btn-sm iq-bg-success">
													<a href="Muontracontroller?action=check&id=<%=item.getId_muon()%>&status=1"><span class="pl-1">Duyệt</span></a></i>
												</button>
											</td>
<!-- 											<td><span class="table-remove"><button
														type="button"
														class="btn iq-bg-danger btn-rounded btn-sm my-0">Hủy</button></span>
											</td> -->
										</tr>
										<%
										}
										%>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
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