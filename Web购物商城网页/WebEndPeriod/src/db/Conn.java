package db;

import java.io.InputStream;
import java.sql.*;

//锟斤拷锟捷匡拷通锟矫达拷锟斤拷锟洁，锟缴达拷锟斤拷锟斤拷锟接★拷执锟斤拷SQL锟斤拷洹拷乇锟斤拷锟皆达拷锟�
public class Conn {

    private Connection con; //锟斤拷锟斤拷锟捷匡拷锟斤拷锟接的讹拷锟斤拷
    private Statement st;

//锟斤拷锟届函锟斤拷锟斤拷锟节达拷锟斤拷Conn锟斤拷亩锟斤拷锟绞憋拷远锟斤拷锟斤拷锟�
    public Conn() throws Exception {
    	String driver="com.mysql.cj.jdbc.Driver";//链接模式02
    	//String driver="com.mysql.jdbc.Driver"; //链接模式01
    	String url="jdbc:mysql://localhost:3306/testdb?useUnicode=true&characterEncoding=utf8";//锟斤拷锟捷匡拷锟街�
    	String username="root";//锟斤拷锟捷匡拷锟剿猴拷
    	String password="123456";//锟斤拷锟捷匡拷锟斤拷锟斤拷

        Class.forName(driver);
        con = DriverManager.getConnection(url,username,password);
        st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    }

//executeQuery--执锟叫诧拷询锟斤拷锟�
    public ResultSet executeQuery(String sql) {
        ResultSet rs = null;
        try {
            rs = st.executeQuery(sql);
        } catch (Exception e) {
            e.printStackTrace(System.err);
        }
        return rs;  
    }
    //executeUpdate锟斤拷锟斤拷--执锟叫讹拷锟斤拷锟捷匡拷母锟斤拷碌锟絊QL锟斤拷锟�

    public int executeUpdate(String sql) {
        try {
            return st.executeUpdate(sql);
        } catch (Exception e) {
             e.printStackTrace(System.err);
            return 0;
        }
    }

//锟斤拷锟斤拷预锟斤拷锟斤拷锟斤拷锟侥凤拷锟斤拷
    public PreparedStatement prepareStatement(String sql) {
        try {
            return con.prepareStatement(sql);
        } catch (SQLException e) {
            e.printStackTrace(System.err);
            return null;
        }
    }

 //锟叫讹拷锟斤拷锟斤拷锟角凤拷晒锟�   
    public boolean isConnected(){
    	return con!=null;
    }
/*
 **锟截闭革拷锟斤拷锟斤拷源锟侥凤拷锟斤拷
*/
    public void close() {
        try {
            if (st!=null) st.close();
        } catch (Exception e) {
            e.printStackTrace(System.err);
        }
        try {
            if (con!=null) con.close();
        } catch (Exception e) {
           e.printStackTrace(System.err);
        }
    }
}