<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录验证</title>
</head>
<body>
<% 
request.setCharacterEncoding("UTF-8");
String Dname=request.getParameter("Dname");
String Dpassword=request.getParameter("Dpassword");
UBean bean=new UBean(Dname,Dpassword);

if(Dname==null||Dname.length()==0||Dpassword.length()==0){
	//out.println(Dname.length());
	out.println("用户名和密码不能为空！三秒后返回。");
	response.setHeader("refresh", "3;url=Main.jsp");
}else if(!bean.isValid()){
	out.println("用户名或密码错误!三秒后返回。");
	response.setHeader("refresh", "3;url=Main.jsp");
}else{
	out.println("登录成功！！！欢迎"+Dname);
	session.setAttribute("Dname", Dname);
	//out.print("账号11"+session.getAttribute("Dname"));
	response.sendRedirect("index.jsp");
}
%>
</body>
</html>