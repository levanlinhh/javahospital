<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="component/allcss.jsp" %>
<meta charset="UTF-8">
<title>Đăng Ký</title>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>

<%@include file="component/navbar.jsp" %>
<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center" style="font-weight: 600;">ĐĂNG KÝ</p>

						<c:if test="${not empty sucMsg }">
							<p class="text-center text-success fs-3">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-3">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
							
						<form action="user_register" method="POST">
							<div class="mb-3">
								<label class="form-label">Họ Và Tên:</label> <input required
									name="fullname" type="text" class="form-control" placeholder="Vui lòng nhập họ tên...">
							</div>
							<div class="mb-3">
								<label class="form-label">Email:</label> <input required
									name="email" type="email" class="form-control" placeholder="Vui lòng nhập email...">
							</div>

							<div class="mb-3">
								<label class="form-label">Mật Khẩu:</label> <input required
									name="password" type="password" class="form-control" placeholder="Vui lòng nhập mật khẩu...">
							</div>

							<button type="submit" class="btn bg-success text-white col-md-12">ĐĂNG KÝ</button>
							<br> Đã có tài khoản? <a href="user_login.jsp"
							class="text-decoration-none">Đăng nhập</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
//Đoạn mã này là để hiển thị thông báo thành công hoặc thông báo lỗi trong ứng dụng web sử dụng công nghệ JavaServer Pages (JSP).

//Nếu biến "sucMsg" được đặt trong session và không rỗng, nó sẽ hiển thị một đoạn văn bản màu xanh lá cây với nội dung được lấy từ biến "sucMsg". Tương tự, nếu biến "errorMsg" được đặt trong session và không rỗng, nó sẽ hiển thị một đoạn văn bản màu đỏ với nội dung được lấy từ biến "errorMsg". Sau khi hiển thị, hai biến này sẽ được xóa khỏi session.

//Đoạn mã này sử dụng thư viện JSTL (JavaServer Pages Standard Tag Library) để kiểm tra xem biến có rỗng hay không và xóa biến khỏi session sau khi hiển thị nó lên trang.
</body>
</html>
