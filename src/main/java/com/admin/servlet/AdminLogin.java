package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.User;

@WebServlet("/adminLogin")
public class AdminLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

			String email = req.getParameter("email");
			String password = req.getParameter("password");

			HttpSession session = req.getSession();

			if ("vanlinh.it.hutech@gmail.com".equals(email) && "Aa12345".equals(password)) {
				session.setAttribute("adminObj", new User());
				resp.sendRedirect("admin/index.jsp");
			} else {
				session.setAttribute("errorMsg", "Email hoặc mật khẩu chưa đúng!");
				resp.sendRedirect("admin_login.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}