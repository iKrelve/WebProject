package krelve.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class App_store 根据用户的操作进行对数据库的操作放回一个string然后再jsp中显示出来
 * 
 * 
 */
@WebServlet("/App_store")
public class App_store extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	public App_store() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request);
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response) post中获取查询的
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String operate = new String(request.getParameter("operate").getBytes(
				"ISO8859-1"), "UTF-8");
		String json = null;
		if (operate.equals("paihang")) {
			Operate oper = new Operate();
			json = oper.operate_paihang(request);
		} else if (operate.equals("software")) {
			Operate oper = new Operate();
			try {
				json = oper.operate_software(request);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if (operate.equals("amusement")) {
			Operate oper = new Operate();
			json = oper.operate_amusement(request);
		} else if (operate.equals("game")) {
			Operate oper = new Operate();
			;
			json = oper.operate_game(request);
		} else if (operate.equals("search")) {
			Operate oper = new Operate();
			;
			json = oper.Search(request);
		} else if (operate.equals("register_dev")) {
			Operate oper = new Operate();
			json = oper.operate_register(request);
		} else if (operate.equals("auther_other_works")) {
			Operate oper = new Operate();
			json = oper.auther_otherworks(request);
		}
		// 获取评价
		else if (operate.equals("get_estimate")) {
			Operate oper = new Operate();
			json = oper.get_estimate(request);
		} else if (operate.equals("hate")) {
			Operate oper = new Operate();
			json = oper.why_hate(request);
		}
		if (json == null) {
			json = "wrong";
		}
		request.setAttribute("json", json.toString());
		request.getRequestDispatcher("/WEB-INF/page/jsonnewslist.jsp").forward(
				request, response);
	}

}
