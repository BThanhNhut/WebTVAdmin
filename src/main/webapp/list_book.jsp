<%@page import="model.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sach</title>
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
	
	<%List<ChitietmuontraDTO> lst_loancard = (List<ChitietmuontraDTO>)session.getAttribute("lst_detail"); %>
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
											<th style="width: 18%;">Thẻ mượn trả</th>
										</tr>
									</thead>
									<tbody>
									
										<tr>
											<td>1</td>
											<td><img class="img-fluid rounded"
												src="https://firebasestorage.googleapis.com/v0/b/qlthuvien-85d77.appspot.com/o/a1.jpg?alt=media&token=631a7314-2231-4d86-a0ab-8cbbd8f558f5" alt=""></td>
											<td>Reading on the Worlds</td>
											<td>General Books</td>
											<td>Jhone Steben</td>
											<td>
												<p class="mb-0">Lorem ipsum dolor sit amet, consectetur
													adipiscing elit. Sed rhoncus non elit a scelerisque. Etiam
													feugiat luctus est, vel commodo odio rhoncus sit amet</p>
											</td>
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
</body>
</html>