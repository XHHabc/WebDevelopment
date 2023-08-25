<%@page import="bean.UBean"%>
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
	//int Uid=(int)session.getAttribute("Uid");
	
	String Upasswd=request.getParameter("Upasswd");
	String UpasswdNew01=request.getParameter("UpasswdNew01");
	String UpasswdNew02=request.getParameter("UpasswdNew02");

	
	String Dname=(String)session.getAttribute("Dname");
	UBean bean=new UBean(Dname,Upasswd);
	
	
 	if(Upasswd.trim().length()==0||UpasswdNew01.trim().length()==0||UpasswdNew02.trim().length()==0){
		out.println("密码不能为空！三秒后返回。");
		response.setHeader("refresh", "3;url=userEditPWD.jsp");
 	
 	}else if(!bean.isValid()){
		out.println("旧密码错误!三秒后返回。");
		response.setHeader("refresh", "3;url=userEditPWD.jsp");
 	}else if(!UpasswdNew01.equals(UpasswdNew02)){
		out.println("新密码与确认密码不一致!三秒后返回。");
		response.setHeader("refresh", "3;url=userEditPWD.jsp");
	} else {
		User us=new User();
		us.setUid(Uid);
		us.setUpasswd(UpasswdNew01);
		new UserDAO().updatePWD(us); 
		out.print("修改成功，3秒后自动跳转回个人页面<br/>");
		response.setHeader("refresh", "3;url=../PPage.jsp");
	} 
	
	
  	}catch(Exception e){
		System.out.println("表单参数异常！");
		
	}finally{
		System.out.println("执行完成");

		//response.sendRedirect("booklist.jsp");
	} 
%>
</body>
</html>