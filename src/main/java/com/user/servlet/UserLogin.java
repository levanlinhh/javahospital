package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/userLogin")
public class UserLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		HttpSession session = req.getSession();

		UserDao dao = new UserDao(DBConnect.getConn());
		User user = dao.login(email, password);

		if (user != null) {
			session.setAttribute("userObj", user);
			resp.sendRedirect("index.jsp");
		} else {
			session.setAttribute("errorMsg", "Email hoặc mật khẩu chưa đúng!");
			resp.sendRedirect("user_login.jsp");
		}

	}

}
//Code này đang xử lý một yêu cầu đăng nhập của người dùng vào hệ thống. Sau khi người dùng đã nhập email và mật khẩu, hệ thống sẽ kiểm tra thông tin đăng nhập của người dùng bằng một phương thức gọi là "user.authenticate(email, password)" và trả về đối tượng người dùng nếu thông tin đăng nhập chính xác.
//Cụ thể, nếu đối tượng người dùng trả về từ phương thức authenticate là khác null (tức là thông tin đăng nhập hợp lệ), thì hệ thống sẽ thiết lập thuộc tính "userObj" cho phiên làm việc của người dùng bằng cách sử dụng phương thức "session.setAttribute()" và chuyển hướng người dùng đến trang "index.jsp" bằng phương thức "resp.sendRedirect()".
//Nếu thông tin đăng nhập không hợp lệ (tức là đối tượng người dùng trả về từ phương thức authenticate là null), 
//hệ thống sẽ thiết lập thuộc tính "errorMsg" cho phiên làm việc của người dùng để thông báo lỗi cho người dùng bằng cách sử dụng phương thức "session.setAttribute()" và chuyển hướng người dùng đến trang "user_login.jsp" để họ có thể nhập lại thông tin đăng nhập của mình.