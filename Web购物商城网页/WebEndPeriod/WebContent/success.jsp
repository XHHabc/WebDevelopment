<%@page import="model.Goods"%>
<%@page import="db.GoodDao,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <center>
      <img src="images/add_cart_success.jpg"/>
      <hr>
      <%
         String id=request.getParameter("id");
        GoodDao goodDao = new GoodDao();
    	Goods items = goodDao.findById(Integer.parseInt(id));

         String num=request.getParameter("num");
      %>
                您成功购买了<%=num %>件商品编号为<%=id %>且商品名称为<%=items.getName() %>的商品&nbsp;&nbsp;&nbsp;&nbsp;
      <br>
      <br>
      <br>
   </center>
</body>
</html>