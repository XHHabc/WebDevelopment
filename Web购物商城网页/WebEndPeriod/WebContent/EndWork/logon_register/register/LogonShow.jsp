<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8");

String Uname=request.getParameter("Uname");
String Upasswd=request.getParameter("Upasswd");
String Upasswd02=request.getParameter("Upasswd02");
String Uaddress=request.getParameter("Uaddress");
String Uphone=request.getParameter("Uphone");
String Usex=request.getParameter("Usex");


if(Uname.trim().length()==0||Upasswd.trim().length()==0){
	out.println("用户名或密码不能为空！三秒后返回。");
	response.setHeader("refresh", "3;url=Logon.jsp");
}else if(!Upasswd.equals(Upasswd02)){
	out.println("两次密码不相同！三秒后返回。");
	response.setHeader("refresh", "3;url=Logon.jsp");
}else if(!Uphone.matches("^1[3|4|5|7|8][0-9]\\d{8}$")){//利用正则表达式验证
	out.println("手机号格式有问题！三秒后返回。");
	response.setHeader("refresh", "3;url=Logon.jsp");
}else{
	
out.println("账号："+Uname+"<br/>");
out.println("密码："+Upasswd+"<br/>");
out.println("确认密码："+Upasswd02+"<br/>");
out.println("地址："+Uaddress+"<br/>");
out.println("手机号："+Uphone+"<br/>");
out.println("性别："+Usex+"<br/>");


//创建用户对象并利用构造方法将数据保存到数据库
User us=new User(1,Uname,Upasswd,Uaddress,Uphone,Usex);
//out.println(us+"<br/>");
//out.println(us.getUname()+"<br/>");
UserDAO dao=new UserDAO();
if(dao.add(us)){
	out.println("注册成功");	
	response.sendRedirect("../Main.jsp");
}else{
	out.println("注册失败");	
	//response.sendRedirect("logon.jsp");
}
}
%>
</body>
</html>