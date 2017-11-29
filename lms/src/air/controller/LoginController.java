package air.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import air.service.LoginService;
import air.vo.User;

public class LoginController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("username").trim();
		String password = req.getParameter("password").trim();
		User user = new User();
		user.setUserName(userName);
		user.setPassword(password);
		LoginService loginService = new LoginService();
		boolean pwdCorrect = loginService.checkPwd(user);
		if(pwdCorrect) {
			HttpSession session = req.getSession();
			session.setAttribute("userName", userName);
			RequestDispatcher rd = req.getRequestDispatcher("student/studentMain.jsp");
			rd.forward(req, resp);
		} else {
			resp.sendRedirect("login.jsp?error=loginError");
		}
	}
	
}
