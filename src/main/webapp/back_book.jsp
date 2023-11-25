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
<link rel="stylesheet" href="css/formdialog.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
	<!-- sidebar -->
	<jsp:include page="sidebar.jsp"></jsp:include>
	<!-- Trang có chứa dữ liệu động -->

	<!-- sidebar -->
	<jsp:include page="top_navigate.jsp"></jsp:include>
	<!-- Trang có chứa dữ liệu động -->

	<%
	List<ChitietmuontraDTO> lst_detail = (List<ChitietmuontraDTO>) session.getAttribute("lst_detail2");
	%>
	<!-- Page Content  -->
	<div id="content-page" class="content-page">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-12">
					<div class="iq-card">
						<div class="iq-card-header d-flex justify-content-between">
							<div class="iq-header-title">
								<h4 class="card-title">Chi tiết danh sách thẻ mượn</h4>
							</div>
						</div>
						<div class="iq-card-body">
							<div class="table-responsive">
								<table class="data-tables table table-striped table-bordered"
									style="width: 100%">
									<thead>
										<tr>
											<th style="width: 3%;">No</th>
											<th style="width: 12%;">Hình</th>
											<th style="width: 15%;">Tên sách</th>
											<th style="width: 15%;">Tình trạng trả</th>
											<th style="width: 15%;">Ngày trả</th>
											<th style="width: 18%;">Chức năng</th>
										</tr>
									</thead>
									<tbody>
										<%
										int numner = 1;
										for (ChitietmuontraDTO item : lst_detail) {
										%>
										<tr>
											<td><%= numner %></td>
											<td><img class="img-fluid rounded"
												src="<%=item.getHinh()%>"
												alt=""></td>
											<td><%=item.getTentailieu() %></td>
											<td><%
											if(item.getTinhtrangtra() == 0)
											{
											%>
											<%= "Chưa trả"%>
											<%
											}else{
											%>
											<%= "Đã trả"%>
											<%}%>
											</td>
											<td>
											<%
											if(item.getNgaytra() == null)
											{
											%>
											<%= "00/00/0000"%>
											<%
											}else{
											%>
											<%= item.getNgaytra()%>
											<%}%>
											</td>
											<td>
											<%
											if(item.getTinhtrangtra() == 0)
											{
											%>
											<div class="flex align-items-center list-user-action">
													<a class="bg-primary" data-toggle="tooltip"
														data-placement="top" title="" data-original-title="Duyệt trả ko vi phạm"
														href="Chitietmuontracontroller?action=vipham2&id=<%=item.getId_ctmuon()%>&id_muon=<%=item.getId_muon()%>"><i class="ri-pencil-line"></i></a>
												</div>
												<div class="flex align-items-center list-user-action">
													<a class="bg-primary showDialogLink" data-toggle="tooltip"
														data-placement="top" title=""
														data-original-title="Duyệt trả" href="#"><i
														class="ri-pencil-line"></i></a>
												</div>
											<%
											}else{
											%>
											<span class="badge iq-bg-info">Đã trả</span>
											<%}%>
											
											</td>
										</tr>
										<%
										numner++;
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
	<!-- Dialog -->
	<div id="dialogOverlay" class="dialog-overlay">
		<div class="dialog custom-dialog">
			<div class="dialog-header">
				<h2>Vi phạm hư sách</h2>
				<span id="closeBtn" class="close-btn">&times;</span>
			</div>
			<div class="dialog-content">
				<img width="100px" height="150px"
					src="https://firebasestorage.googleapis.com/v0/b/qlthuvien-85d77.appspot.com/o/a1.jpg?alt=media&token=631a7314-2231-4d86-a0ab-8cbbd8f558f5"
					alt="Hình ảnh" class="dialog-image">
				<form id="personal-info-form" action="Chitietmuontracontroller" method="get">
					<div class="form-check" style="margin-top: 10px;">
						<input class="form-check-input" type="checkbox" value="khongvipham"
							id="khongvipham" name="checkboxValue"> <label class="form-check-label"
							for="khongvipham"> Không vi phạm </label>
					</div>
					
					<div class="form-check" style="margin-top: 10px">
						<input class="form-check-input" type="checkbox" value="matsach"
							id="matsach" name="checkboxValue"> <label class="form-check-label"
							for="matsach"> Mất sách </label>
					</div>
					<div class="form-check" style="margin-top: 10px">
						<input class="form-check-input" type="checkbox" value="trehang"
							id="enableInput2" name="checkboxValue"> <label class="form-check-label"
							for="enableInput2"> Trể hạng </label>
					</div>
					<div class="form-group">
						<label for="hutrang">Số ngày trể hạng</label> <input disabled="true" type="number" id="trehang"
							name="trehang" required>
					</div>
					
					<div class="form-check" style="margin-top: 10px">
						<input class="form-check-input" type="checkbox" value="hutrang"
							id="enableInput" name="checkboxValue"> <label class="form-check-label"
							for="enableInput">   </label>
					</div>
					
					<div class="form-group">
						<label for="hutrang">Số trang</label> <input disabled="true" type="number" id="hutrang"
							name="hutrang" required>
					</div>
					<div class="form-group">
						<label for="message">Ghi chú:</label>
						<textarea id="message" name="message" rows="4" required></textarea>
					</div>
					<input type="hidden" name="action" value="vipham">
					<div class="form-group">
						<button type="submit">Duyệt trả</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!--  -->
	
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
	<script src="js/formdialog.js"></script>
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