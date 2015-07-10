package krelve.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import krelve.bean.App;
import krelve.bean.SoftwareBean;
import krelve.bean.Top;
import krelve.utils.AppUtil;

/**
 * Servlet implementation class Software
 */
@WebServlet("/Software")
public class Software extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Software() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		List<App> local = AppUtil.getLocalApps();
		List<App> online = AppUtil.getOnlineApps();
		List<SoftwareBean> software = AppUtil.getSoftware();
		List<Top> softTops = AppUtil.getSoftTop();
		request.setAttribute("local", local);
		request.setAttribute("online", online);
		request.setAttribute("software", software);
		request.setAttribute("softTops", softTops);
		request.getRequestDispatcher("software.jsp").forward(request, response);
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
