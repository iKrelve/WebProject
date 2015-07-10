package krelve.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserUtil {
	public static boolean register(String nickname, String password) {
		Connection conn = DBHelper.getConnection();
		ResultSet rs = DBHelper.executeQuery(conn,
				"select * from user where nickname = '" + nickname + "'");
		try {
			if (rs.first()) {
				return false;
			}
			DBHelper.executeSQL(conn,
					"insert into user(nickname,password) values('" + nickname
							+ "' , '" + password + "')");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			DBHelper.closeConnection(conn);
		}
		return true;
	}

	public static boolean login(String username, String password) {
		Connection conn = DBHelper.getConnection();
		ResultSet rs = DBHelper.executeQuery(conn,
				"select * from user where nickname = '" + username
						+ "' and password = '" + password + "'");
		try {
			if (!rs.first()) {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			DBHelper.closeConnection(conn);
		}
		return true;

	}
}
