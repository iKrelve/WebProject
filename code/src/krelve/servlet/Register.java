package krelve.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import krelve.utils.UserUtil;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Register() {
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
		String nickname = request.getParameter("nickname");
		String password = request.getParameter("password");
		String password2 = request.getParameter("password2");
		System.out.println("nickname:" + nickname);
		System.out.println("password:" + password);
		System.out.println("password2:" + password2);
		if (UserUtil.register(nickname, password)) {
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write("注册成功，3秒后返回登陆页面...");
			response.setHeader("Refresh", "3;url=/AppStore/login.html");
		} else {
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write("用户名已存在，3秒后返回注册页面...");
			response.setHeader("Refresh", "3;url=/AppStore/register.html");
		}
	}
}
