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
</head>
<body>
	<div class="iq-sidebar">
		<div class="iq-sidebar-logo d-flex justify-content-between">
			<a href="index.html" class="header-logo"> <img
				src="images/logo.png" class="img-fluid rounded-normal" alt="">
				<div class="logo-title">
					<span class="text-primary text-uppercase">Dashboard</span>
				</div>
			</a>
			<div class="iq-menu-bt-sidebar">
				<div class="iq-menu-bt align-self-center">
					<div class="wrapper-menu">
						<div class="main-circle"></div>
					</div>
				</div>
			</div>
		</div>
		<div id="sidebar-scrollbar">
			<nav class="iq-sidebar-menu">
				<ul id="iq-sidebar-toggle" class="iq-menu">
					<li><a href="admin.jsp" class="iq-waves-effect"
						data-toggle="" aria-expanded="false"><span
							class="ripple rippleEffect"></span><i
							class="las la-home iq-arrow-left"></i><span>Trang chủ</span></a></li>
					<li> <a href="list_book.jsp"
						class="iq-waves-effect" data-toggle=""
						aria-expanded="false"><span class="ripple rippleEffect"></span><i
							class="las la-home iq-arrow-left"></i><span>Sách</span></a></li>
							
					<li><a href="category.jsp" class="iq-waves-effect"
						data-toggle="" aria-expanded="false"><span
							class="ripple rippleEffect"></span><i class="ri-function-line"></i><span>Loại</span></a></li>
								
					<li><a href="Muontracontroller?action=show" class="iq-waves-effect collapsed"
						data-toggle="" aria-expanded="false"><i
							class="lab la-elementor iq-arrow-left"></i><span>Duyệt mượn</span></a></li>
							
					<li><a href="Muontracontroller?action=history" class="iq-waves-effect collapsed"
						data-toggle="" aria-expanded="false"><i
							class="las la-file-alt iq-arrow-left"></i><span>Danh sách mượn</span></a></li>
				</ul>
			</nav>
			<div id="sidebar-bottom" class="p-3 position-relative">
				<div class="iq-card">
					<div class="iq-card-body">
						<div class="sidebarbottom-content">
							<div class="image">
								<img src="images/page-img/side-bkg.png" alt="">
							</div>
							<button type="submit"
								class="btn w-100 btn-primary mt-4 view-more">Become
								Membership</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>