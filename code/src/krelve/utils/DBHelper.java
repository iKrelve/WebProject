package krelve.utils;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Properties;
import java.sql.Connection;
import java.sql.Statement;

public class DBHelper {
	private static String url;
	private static String username;
	private static String password;
	private static Properties props = new Properties();

	static {
		try {
			props.load(DBHelper.class.getResourceAsStream("/jdbc.properties"));
		} catch (IOException e) {
			System.out.println("#ERROR#");
		}
		url = (props.getProperty("jdbc.url"));
		username = (props.getProperty("jdbc.username"));
		password = (props.getProperty("jdbc.password"));
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("#ERROR#");
		}
	}

	public static Connection getConnection() {
		java.sql.Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static ResultSet executeQuery(Connection conn, String staticSql) {
		ResultSet rs = null;
		try {
			Statement stmt = conn.createStatement();
			rs = stmt.executeQuery(staticSql);
		} catch (SQLException e) {
			System.out.println("#ERROR#n" + staticSql + "\n" + e.getMessage());
		}
		return rs;
	}

	public static void executeSQL(Connection conn, String staticSql) {
		try {
			Statement stmt = conn.createStatement();
			stmt.execute(staticSql);
		} catch (SQLException e) {
			System.out.println("#ERROR#\n" + staticSql + "\n" + e.getMessage());
		}
	}

	public static void executeBatchSQL(Connection conn, List<String> sqlList) {
		try {
			Statement stmt = conn.createStatement();
			for (String sql : sqlList) {
				stmt.addBatch(sql);
			}
			stmt.executeBatch();
		} catch (SQLException e) {
			System.out.println("#ERROR#");
		}
	}

	public static void closeConnection(Connection conn) {
		if (conn == null)
			return;
		try {
			if (!conn.isClosed()) {
				conn.close();
			}
		} catch (SQLException e) {
			System.out.println("#ERROR#");
		}
	}
}
