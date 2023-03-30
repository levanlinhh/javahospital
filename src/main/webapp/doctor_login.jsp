<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="component/allcss.jsp" %>
<title>DOCTOR LOGIN</title>
</head>
<body>
<%@include file="component/navbar.jsp" %>

<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center" style="font-weight: 600;"> BÁC SĨ ĐĂNG NHẬP</p>

						
						<form action="doctorLogin" method="post">
							<div class="mb-3">
								<label class="form-label">Email:</label> <input required
									name="email" type="email" class="form-control" placeholder="Vui lòng nhập email...">
							</div>
							<div class="mb-3">
								<label class="form-label">Mật Khẩu:</label> <input required
									name="password" type="password" class="form-control" placeholder="Vui lòng nhập mật khẩu...">
							</div>
							<button type="submit" class="btn bg-success text-white col-md-12">ĐĂNG NHẬP</button>
						</form>
					
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>