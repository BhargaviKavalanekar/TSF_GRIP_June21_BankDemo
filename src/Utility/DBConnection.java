package Utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	static Connection dbconnect;
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//dbconnect = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlbankmgmt","root","Parel@1212");
			dbconnect = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlbankmgmt?autoReconnect=true&useSSL=false","root","Parel@1212");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dbconnect;
}
}