<%@ page language="java" contentType="text/html; charset=utf-8"
  import="db.GoodDao,model.Goods" %>
  <%@ page import="java.util.*" %>
  <%@page isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	   div{
	      float:left;
	      margin: 10px;
	   }
	   div dd{
	      margin:0px;
	      font-size:10pt;
	   }
	   div dd.dd_name
	   {
	      color:blue;
	   }
	   div dd.dd_city
	   {
	      color:#000;
	   }
	</style>
</head>
<body>
 <h1 align="center" style="color: pink">商品展示,欢迎选购！</h1>
    <hr>
  
    <center>
<table width="750" height="60" cellpadding="0" cellspacing="0" border="0">
<tr>
<td>

            <!-- 商品循环开始 -->
            <%
                GoodDao goodDao=new GoodDao();
                List<Goods> list=goodDao.getGoodList();
                if(list!=null&&list.size()>0){
                    for(int i=0;i<list.size();i++){
                        Goods goods=list.get(i);
                        try {
            %>
                            <div>
                                <dl>
                                    <dt>
                                        <a href="details.jsp?id=<%=goods.getId() %>"><img src="images/<%=goods.getPicture() %>" width="120" height="90" border="1"/></a>
                                    </dt>
                                    <dd class="dd_name"><%=goods.getName() %></dd>
                                    <dd class="dd_city">产地:<%=goods.getCity() %>&nbsp;&nbsp;价格:￥<%=goods.getPrice() %></dd>
                                </dl>
                            </div>
            <%
                        } catch (Exception e) {
            %>
                            <h2>An exception occurred:</h2>
                            <p><%=e.getMessage()%></p>
            <%
                        }
                    }
                }
            %>
            <!-- 商品循环结束 -->

        </td>
    </tr>
</table>
    </center>

</body>
</html>