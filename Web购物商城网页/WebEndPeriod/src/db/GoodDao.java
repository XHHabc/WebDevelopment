package db;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Goods;
import db.DButil;

public class GoodDao {
/**
 * 根据id，名称，场地查询产品
 * @param id
 * @param name
 * @param city
 * @return
 */
	Connection conn;
	PreparedStatement pst;
	ResultSet rs;
	public List<Goods> find(Integer id,String name,String city){
		   conn=DButil.getConn();
		   List<Goods> goods=new ArrayList<Goods>();
		   String sql="select * from items where 1=1";
		   if(id!=null)
		   {
			   sql=sql+" and id='"+id+"'";
		   }
		   if(name!=null){
			   sql=sql+" and name='"+name+"'";
		   }
		   if(city!=null){
			   sql=sql+" and city='"+city+"'";
		   }
		   System.out.println(sql);
		   try {
			   pst=conn.prepareStatement(sql);
			   	   
			   rs=pst.executeQuery();
			   //处理结果集
			   while(rs.next()){
				   Goods good=new Goods(rs.getInt("id"), rs.getString("name"), rs.getString("city"),
						   rs.getInt("price"), rs.getInt("number"), rs.getString("picture"));
				  
				   goods.add(good);
			   }
			  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DButil.closeAll(conn, pst, rs);
		}
		   return goods;
		   
	}
	/**
	 * 根据id查询商品
	 * @param id
	 * @return
	 */
		public Goods findById(Integer id){
			Goods goods=null;//创建用户对象
			String sql="select * from items where id='"+id+"' ";
			System.out.println(sql);
			try {
				conn=DButil.getConn();
				//执行sql语句
				pst=conn.prepareStatement(sql);
				rs=pst.executeQuery();
				if(rs.next()) {
					goods=new Goods();
					goods.setId(rs.getInt("id"));
					goods.setName(rs.getString("name"));
					goods.setCity(rs.getString("city"));
					goods.setNumber(rs.getInt("number"));
					goods.setPrice(rs.getInt("price"));
					goods.setPicture(rs.getString("picture"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				DButil.closeAll(conn, pst, rs);
			}
			   return goods;
			
		}
		//获取所有商品
		public List<Goods> getGoodList() {
		    String sql = "select * from items";
		    List<Goods> goodsList = new ArrayList<>();
		    try (Connection conn = DButil.getConn();
		         PreparedStatement pst = conn.prepareStatement(sql);
		         ResultSet rs = pst.executeQuery()) {
		        while (rs.next()) {
		            Goods good = new Goods();
		            good.setId(rs.getInt("id"));
		            good.setName(rs.getString("name"));
		            good.setCity(rs.getString("city"));
		            good.setNumber(rs.getInt("number"));
		            good.setPrice(rs.getInt("price"));
		            good.setPicture(rs.getString("picture"));
		            goodsList.add(good);
		        }
		        for (int i = 0; i < goodsList.size(); i++) {
		            System.out.println(goodsList.get(i));
		        }
		    } catch (SQLException e) {
		        e.printStackTrace();
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    if (goodsList.isEmpty()) {
		        System.out.println("No data found!");
		    }
		    return goodsList;
		}
       //获取最近浏览的前五条商品信息
     	public ArrayList<Goods> getViewList(String list)
     	{
     		System.out.println("list:"+list);
     		ArrayList<Goods> itemlist = new ArrayList<Goods>();
     		int iCount=5; //每次返回前五条记录
     		if(list!=null&&list.length()>0)
     		{
     		    String[] arr = list.split("-");
     		    System.out.println("arr.length="+arr.length);
     		    //如果商品记录大于等于5条
     		    if(arr.length>=5)
     		    {
     		       for(int i=arr.length-1;i>=arr.length-iCount;i--)
     		       {
     		    	  itemlist.add(findById(Integer.parseInt(arr[i])));  
     		       }
     		    }
     		   else
   		      {
   		    	   for(int i=arr.length-1;i>=0;i--)
   		    	 {
   		    		  itemlist.add(findById(Integer.parseInt(arr[i])));
   		    	 }
   		      }
   		       return itemlist;
   		   }else
   		   {
   			  return null;
   		   }
   		
   	}



}
