<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>保存修改数据</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	try{
	
	int Uid=Integer.parseInt(request.getParameter("Uid"));
	String Uname=request.getParameter("Uname");
	//String Upasswd=request.getParameter("Upasswd");
	String Uaddress=request.getParameter("Uaddress");
	String Uphone=request.getParameter("Uphone");
	String Usex=request.getParameter("Usex");
	
/* 	out.print(Uid);
	out.print(Uname); */
	User us=new User(Uid,Uname,Uaddress,Uphone,Usex);

	new UserDAO().update(us);
	
  	}catch(Exception e){
		System.out.println("表单参数异常！");
		
	}finally{
		System.out.println("执行完成");
		out.print("修改成功，3秒后自动跳转回个人页面<br/>");
		response.setHeader("refresh", "3;url=PPage.jsp");
		//response.sendRedirect("booklist.jsp");
	} 
%>
</body>
</html>