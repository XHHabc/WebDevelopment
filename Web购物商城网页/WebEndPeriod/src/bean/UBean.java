package bean;

import java.sql.*;


import db.Conn;
import model.User;

public class UBean {
	private String Uname,Upasswd;
	
	
	public boolean isValid(){
		boolean flag=false;
		//检查用户表中是否有
		Conn con=null;
		Statement st=null;//传送sql语句
		ResultSet rs=null;//接受返回值
		PreparedStatement pt=null;//预编译的Statement对象

		String sql="select * from useraa where Uname=? and Upasswd=?";
			try {
				con=new Conn();
				pt=con.prepareStatement(sql);
				pt.setString(1,Uname);
				pt.setString(2,Upasswd);
				rs=pt.executeQuery();
				if(rs!=null&&rs.next()){//能移动则表示最少有一条数据
					flag=rs.getString("Upasswd").equals(Upasswd);
				}
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				//逆序关闭资源
				if(rs!=null){
					try {
						rs.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				if(con!=null){
					try {
						con.close();
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				if(con!=null){
					try {
						con.close();
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
			
			
				
		
		return flag;
	}


	
	public UBean() {
		super();
	}



	public UBean(String uname, String upasswd) {
		super();
		Uname = uname;
		Upasswd = upasswd;
	}



	public String getUname() {
		return Uname;
	}



	public void setUname(String uname) {
		Uname = uname;
	}



	public String getUpasswd() {
		return Upasswd;
	}



	public void setUpasswd(String upasswd) {
		Upasswd = upasswd;
	}




	
	
	
}
