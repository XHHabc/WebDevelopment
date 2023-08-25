<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息页</title>
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/base.css">
<link rel="stylesheet" href="./css/PPage.css">
</head>
<body>
<%
//int Uid=Integer.parseInt(request.getParameter("Uid"));
String Dname=(String)session.getAttribute("Dname");
User us=new UserDAO().findByName(Dname);

//通过Dname再获取Uid保存到session中，后续改密码页使用
session.setAttribute("Uid",us.getUid());

%>
 <div class="w">
        <div class="headerd">
            <div class="logo">
            </div>
        </div>
<div class="content">
            <div class="h">
                <div class="l">
                    个人信息页
                </div>
            </div>
            
<div class="Left"> 
<div class="text">
			<div class="sculpture"><img src="./img/kakaxi-7.jpg" ></div>
			<a href="userEdit.jsp?Uid=<%=us.getUid() %>">修 改 个 人 信 息</a></br> 
	 		<a href="./EditPWD/userEditPWD.jsp?Uid=<%=us.getUid() %>">修 改 密 码</a></br>
	 		<a href=".././logon_register/index.jsp">回 到 首 页</a>
	 		</div>
         	
	 </div>
	 
<div class="Right"> 
			<div class="d">
                <ul>
                    <li ><label for="">当前ID:</label><input  type="text" class="inp"  name="Uid" value="<%=session.getAttribute("Uid")%>" readonly="readonly"></li>
                    <li><label for="">用户名:</label><input  type="text" class="inp"  name="Uname" value="<%=us.getUname()%>" readonly> </li>
                    <li><label for="">地址:</label><input  type="text" class="inp" name="Uaddress" value="<%=us.getUaddress()%>" readonly></li>
                    <li><label for="">手机号:</label><input  type="text" class="inp" name="Uphone" value="<%=us.getUphone()%>" readonly></li>
                    <li><label for="">性别:</label><input  type="text" class="inp" name="Usex" value="<%=us.getUsex()%>" readonly></li>
                </ul>
            </div>
</body>
</html>