package krelve.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import krelve.bean.App;
import krelve.bean.Recommend;
import krelve.bean.SoftwareBean;
import krelve.bean.Top;

public class AppUtil {
	public static List<App> getSmallApps() {
		List<App> apps = new ArrayList<App>();
		Connection conn = DBHelper.getConnection();
		ResultSet rs = DBHelper.executeQuery(conn, "select * from small");
		try {
			while (rs.next()) {
				String title = rs.getString("title");
				String url = rs.getString("url");
				String pic = rs.getString("pic");
				App app = new App(title, url, pic);
				apps.add(app);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		DBHelper.closeConnection(conn);
		return apps;
	}

	public static List<App> getLocalApps() {
		List<App> apps = new ArrayList<App>();
		Connection conn = DBHelper.getConnection();
		ResultSet rs = DBHelper.executeQuery(conn, "select * from local");
		try {
			while (rs.next()) {
				String name;
				name = rs.getString("name");
				String url = rs.getString("url");
				App app = new App(name, url, "");
				apps.add(app);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		DBHelper.closeConnection(conn);
		return apps;
	}

	public static List<App> getOnlineApps() {
		List<App> apps = new ArrayList<App>();
		Connection conn = DBHelper.getConnection();
		ResultSet rs = DBHelper.executeQuery(conn, "select * from online");
		try {
			while (rs.next()) {
				String name;
				name = rs.getString("name");
				String url = rs.getString("url");
				App app = new App(name, url, "");
				apps.add(app);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		DBHelper.closeConnection(conn);
		return apps;
	}

	public static List<Recommend> getRecommendApps() {
		List<Recommend> apps = new ArrayList<Recommend>();
		Connection conn = DBHelper.getConnection();
		ResultSet rs = DBHelper.executeQuery(conn, "select * from recommend");
		try {
			while (rs.next()) {
				String name = rs.getString("name");
				String url = rs.getString("url");
				String pic = rs.getString("pic");
				String star = rs.getString("star");
				String click = rs.getString("click");
				String weight = rs.getString("weight");
				String desc = rs.getString("desc");
				String type = rs.getString("type");
				Recommend recommend = new Recommend(name, url, pic, star,
						click, weight, desc, type);
				apps.add(recommend);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		DBHelper.closeConnection(conn);
		return apps;
	}

	public static List<Top> getSoftTop() {
		List<Top> apps = new ArrayList<Top>();
		Connection conn = DBHelper.getConnection();
		ResultSet rs = DBHelper.executeQuery(conn, "select * from softtop");
		try {
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String url = rs.getString("url");
				String pic = rs.getString("pic");
				Top app = new Top(id, name, url, pic);
				apps.add(app);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		DBHelper.closeConnection(conn);
		return apps;
	}
	public static List<Top> getTop_Game() {
		List<Top> apps = new ArrayList<Top>();
		Connection conn = DBHelper.getConnection();
		ResultSet rs = DBHelper.executeQuery(conn, "select * from top_game");
		try {
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String url = rs.getString("url");
				String pic = rs.getString("pic");
				Top app = new Top(id, name, url, pic);
				apps.add(app);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		DBHelper.closeConnection(conn);
		return apps;
	}
	public static List<Top> getTop_Soft() {
		List<Top> apps = new ArrayList<Top>();
		Connection conn = DBHelper.getConnection();
		ResultSet rs = DBHelper.executeQuery(conn, "select * from top_soft");
		try {
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String url = rs.getString("url");
				String pic = rs.getString("pic");
				Top app = new Top(id, name, url, pic);
				apps.add(app);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		DBHelper.closeConnection(conn);
		return apps;
	}

	public static List<SoftwareBean> getSoftware() {
		List<SoftwareBean> apps = new ArrayList<SoftwareBean>();
		Connection conn = DBHelper.getConnection();
		ResultSet rs = DBHelper.executeQuery(conn, "select * from software");
		try {
			while (rs.next()) {
				String name = rs.getString("name");
				String url = rs.getString("url");
				String pic = rs.getString("pic");
				String download = rs.getString("download");
				String update = rs.getString("update");
				String desc = rs.getString("desc");
				SoftwareBean app = new SoftwareBean(name, url, pic, download,
						update, desc);
				apps.add(app);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		DBHelper.closeConnection(conn);
		return apps;
	}

}
