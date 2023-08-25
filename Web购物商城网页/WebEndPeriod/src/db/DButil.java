package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DButil {
	public static Connection getConn(){
		java.sql.Connection conn=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");//链接模式02
			//Class.forName("com.mysql.jdbc.Driver");//链接模式01
			String url="jdbc:mysql://localhost:3306/testdb";
			String username="root";
			String password="123456";
		   // conn=DriverManager.getConnection(url,username,password);
			conn=DriverManager.getConnection(url,username,password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
		
		
	}
	/**
	 * 鍏抽棴鎵�鏈夎祫婧�
	 */
	public static void closeAll(Connection con,PreparedStatement pst,ResultSet rs){
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(pst!=null){
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(con!=null){
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			}
	}
}
