package com.work.method;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class jdbcSelectOneDate {
	public static List<String> jdbcSelect(String date1, String listname, String columnIndex) throws SQLException {
		String url = "jdbc:mysql://192.168.1.170:3307/geoweibo?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull";
		String username = "root";
		String password = "1234";
		List<String> pc = new ArrayList<String>();
		java.sql.Connection con = DriverManager.getConnection(url, username, password);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt
				.executeQuery("select * from " + listname + " where date = '" + date1 + "'");
		while (rs.next()) {
			pc.add(rs.getString(columnIndex));
		}
		if (rs != null) { // 关闭记录集
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (stmt != null) { // 关闭声明
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (con != null) { // 关闭连接对象
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return pc;
	}
}
