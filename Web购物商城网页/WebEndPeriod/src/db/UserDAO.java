package db;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import model.User;

public class UserDAO {
	
	public boolean add(User us){

		boolean flag=false;
		Conn con=null;
		PreparedStatement pt=null;
		String sql="INSERT INTO useraa(Uname,Upasswd,Uaddress,Uphone,Usex) VALUES(?,?,?,?,?)";
		try {
			con=new Conn();
			pt=con.prepareStatement(sql);
			pt.setString(1, us.getUname());
			pt.setString(2, us.getUpasswd());
			pt.setString(3, us.getUaddress());
			pt.setString(4, us.getUphone());
			pt.setString(5, us.getUsex());
			
			int n=pt.executeUpdate();
			flag=n>0;
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			// 逆序关闭资源
						if (pt != null)
							try {
								pt.close();
							} catch (SQLException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						if (con != null)
							con.close();
		}
		return flag;
	}
	
	public boolean update(User us){
		boolean flag=false;
		Conn con=null;
		PreparedStatement pt=null;
		String sql="update useraa set Uname=?,Uaddress=?,Uphone=?,Usex=? where Uid=? ";
		try {
			con=new Conn();
			pt=con.prepareStatement(sql);
			
			pt.setString(1, us.getUname());
			pt.setString(2, us.getUaddress());

			pt.setString(3, us.getUphone());
			pt.setString(4, us.getUsex());
			
			pt.setInt(5, us.getUid());

			
			int n=pt.executeUpdate();
			flag=n>0;
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			// 逆序关闭资源
			if (pt != null){
				try {
					pt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
			if (con != null){
				con.close();
			}
		}
		
		return flag;
		
	}
	
	public boolean updatePWD(User us){
		boolean flag=false;
		Conn con=null;
		PreparedStatement pt=null;
		String sql="update useraa set Upasswd=? where Uid=? ";
		try {
			con=new Conn();
			pt=con.prepareStatement(sql);
			
			pt.setString(1, us.getUpasswd());

			pt.setInt(2, us.getUid());

			
			int n=pt.executeUpdate();
			flag=n>0;
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			// 逆序关闭资源
			if (pt != null){
				try {
					pt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
			if (con != null){
				con.close();
			}
		}
		
		return flag;
		
	}

	
	public User findById(int Uid){

		User us=null;
		Conn con=null;
		ResultSet rs=null;
		String sql="select * from useraa where Uid ="+Uid;
		try {
			con=new Conn();
			rs=con.executeQuery(sql);

			if(rs!=null&&rs.next())
				//将当前对象封装成Book对象
				us=new User(rs.getInt("Uid"),rs.getString("Uname"),rs.getString("Upasswd"),rs.getString("Uaddress"),rs.getString("Uphone"),rs.getString("Usex"));
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null)
				try {
					rs.close();
				} catch (Exception e2) {
					// TODO: handle exception
					e2.printStackTrace();
				}
			if (con != null){
				try {
					con.close();// 关闭连接
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return us;
		
	}
	
	public User findByName(String Uname){

		User us=null;
		Conn con=null;
		ResultSet rs=null;
		String sql="select * from useraa where Uname ='"+Uname+"'";
		try {
			con=new Conn();
			rs=con.executeQuery(sql);

			if(rs!=null&&rs.next())
				//将当前对象封装成Book对象
				us=new User(rs.getInt("Uid"),rs.getString("Uname"),rs.getString("Upasswd"),rs.getString("Uaddress"),rs.getString("Uphone"),rs.getString("Usex"));
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null)
				try {
					rs.close();
				} catch (Exception e2) {
					// TODO: handle exception
					e2.printStackTrace();
				}
			if (con != null){
				try {
					con.close();// 关闭连接
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return us;
		
	}
	
}
