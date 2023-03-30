<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-hospital"></i> HE THONG BENH VIEN HOAN HAO</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

				<c:if test="${empty userObj }">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="admin_login.jsp"><i class="fa-solid fa-user"></i> ADMIN</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="doctor_login.jsp"><i class="fa-solid fa-user-doctor"></i> BAC SI</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_appointment.jsp"><i class="fa-solid fa-calendar-check"></i> LICH HEN</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_login.jsp"><i class="fa-solid fa-user"></i> NGUOI DUNG</a></li>

				</c:if>




				<c:if test="${not empty userObj }">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_appointment.jsp"><i class="fa-solid fa-calendar-check"></i> DAT LICH HEN</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="view_appointment.jsp"><i class="fa-regular fa-calendar-check"></i> XEM LICH HEN</a></li>

					<div class="dropdown">
						<button class="btn btn-success dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">
							<i class="fa-solid fa-circle-user"></i> ${userObj.fullName }
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="change_password.jsp">Doi mat khau</a></li>
							<li><a class="dropdown-item" href="userLogout">Dang xuat</a></li>
							
						</ul>
					</div>
				</c:if>
			</ul>
		</div>
	</div>
</nav>s