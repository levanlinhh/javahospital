<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="component/allcss.jsp" %>
<title>HỆ THỐNG QUẢN LÝ BỆNH VIỆN HOÀN HẢO</title>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<%@include file="component/navbar.jsp" %>
<%Connection conn = DBConnect.getConn();
out.print(conn);
%>

<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/banner4.png" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/banner3.png" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/banner2.png" class="d-block w-100" alt="..."
					height="500px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	
	
	
	
	<div class="container p-3">
		<p class="text-center fs-2 " style="font-weight: 600; font-size: 1.2rem">DỊCH VỤ CỦA CHÚNG TÔI</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5" style="font-weight: 600">An Toàn 100%</p>
								<p>Chúng tôi luôn chú trọng đến sức khỏe của bệnh nhân và niềm vui của họ</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5" style="font-weight: 600">Môi Trường Khám Bệnh</p>
								<p>Luôn chú tâm đến môi trường khám bệnh sạch sẽ và an toàn cho các bệnh nhân và người nhà của học</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5" style="font-weight: 600">Nghiên Cứu Y Học</p>
								<p>Chúng tôi luôn tự hào là đơn vị tiên phong trong lĩnh vực y tế và nghiên cứu các công trình y tế của mình</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5" style="font-weight: 600">Vì Một Việt Nam Khỏe Mạnh</p>
								<p>Với tâm niệm là một thầy thuốc chúng tôi luôn nêu cao tinh thành lương y như từ mẫu</p>
							</div>
						</div>
					</div>
					
					
				</div>
			</div>

			<div class="col-md-4">
				<img alt="" src="img/doctor6.png">
			</div>

		</div>
	</div>

	<hr>

	<div class="container p-2">
		<p class="text-center fs-2 " style="font-weight: 600; font-size: 1.2rem">ĐỘI NGŨ Y BÁC SĨ</p>
		
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doctor1.png" width="250px" height="300px">
						<p class="fw-bold fs-5">LÊ VĂN LĨNH</p>
						<p class="fs-7">Ths.Bs CKII Y DƯỢC </p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doctor6.png" width="250px" height="300px">
						<p class="fw-bold fs-5">LÊ QUỲNH NHI</p>
						<p class="fs-7">CKII.VLTLPHCN</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doctor4.png" width="250px" height="300px">
						<p class="fw-bold fs-5">PHAN MINH THUẬN</p>
						<p class="fs-7">Bs.Phụ Sản</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doctor3.png" width="250px" height="300px">
						<p class="fw-bold fs-5">MINH KHOA</p>
						<p class="fs-7">Y TÁ TRƯỞNG</p>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@include file="component/footer.jsp" %>
</body>
</html>