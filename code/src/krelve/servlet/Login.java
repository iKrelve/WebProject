package krelve.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import krelve.utils.UserUtil;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		if (UserUtil.login(login, password)) {
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write("登录成功，3秒后返回首页...");
			response.setHeader("Refresh", "3;url=/AppStore/Index");
		} else {
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write("用户名或密码错误，3秒后返回登录页面...");
			response.setHeader("Refresh", "3;url=/AppStore/login.html");
		}
	}

}
