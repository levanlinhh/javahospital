package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static Connection conn;

	public static Connection getConn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitall_db", "root", "");

		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}

	public static void main(String[] args) {
		Connection conn = DBConnect.getConn();
		if (conn != null) {
			System.out.println("Connected successfully to the database");
		} else {
			System.out.println("Failed to connect to the database");
		}
	}
}
