package krelve.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Download
 */
@WebServlet("/Download")
public class Download extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Download() {
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
		String appName = request.getParameter("app");
		File file = new File(request.getRealPath("app"));
		FileInputStream fis = new FileInputStream(file);
		byte[] b = new byte[fis.available()];
		fis.read(b);
		String filename = URLEncoder.encode(appName, "utf-8");
		response.setCharacterEncoding("utf-8");
		response.setHeader("Content-Disposition", "attachment; filename="
				+ filename + "");
		// ��ȡ��Ӧ�������������
		ServletOutputStream out = response.getOutputStream();
		// ���
		out.write(b);
		out.flush();
		out.close();
	}
}
