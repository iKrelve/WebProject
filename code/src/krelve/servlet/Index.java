package krelve.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import krelve.bean.App;
import krelve.bean.Recommend;
import krelve.bean.Top;
import krelve.utils.AppUtil;

/**
 * Servlet implementation class Index
 */
@WebServlet("/Index")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Index() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		List<App> smallApps = AppUtil.getSmallApps();
		List<App> local = AppUtil.getLocalApps();
		List<App> online = AppUtil.getOnlineApps();
		List<Recommend> recommend = AppUtil.getRecommendApps();
		List<Top> softTops = AppUtil.getSoftTop();
		request.setAttribute("small", smallApps);
		request.setAttribute("local", local);
		request.setAttribute("online", online);
		request.setAttribute("recommend", recommend);
		request.setAttribute("softTops", softTops);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
