<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改个人信息</title>
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/base.css">
<link rel="stylesheet" href="./css/PPage.css">
<link rel="stylesheet" href="./css/main.css">
</head>
<body>
<%

int id=Integer.parseInt(request.getParameter("Uid"));
User us=new UserDAO().findById(id);

%>
   <div class="w">
        <div class="headerd">
            <div class="logo">
            </div>
        </div>
        <div class="content">
            <div class="h">
                <div class="l">
                    修改个人信息
                </div>
            </div>

            <div class="d">
              <form   action="userEditSave.jsp" method="post">
                <ul>
                    <li ><label for="">当前ID:</label><input  type="text" class="inp"  name="Uid" value="<%=session.getAttribute("Uid")%>" readonly="readonly"></li>
                    <li><label for="">用户名:</label><input  type="text" class="inp"  name="Uname" value="<%=us.getUname()%>"> </li>
                    <li><label for="">地址:</label><input  type="text" class="inp" name="Uaddress" value="<%=us.getUaddress()%>"></li>
                    <li><label for="">手机号:</label><input  type="text" class="inp" name="Uphone" value="<%=us.getUphone()%>"></li>
                    <li><label for="">性别:</label><input  type="text" class="inp" name="Usex" value="<%=us.getUsex()%>"></li>
                    <li><input type="submit"  value="确定" class="btn" ></li>
                    <li><input type="reset" class="btn"></li>
                </ul>
              </form>
            </div>
        </div>
        <div class="foot w">
            <div class="copyright">
                地址：广东省佛山市南海区狮山镇广东东软学院 邮编：100096 电话：400-618-4000 传真：010-82935100 邮箱: LinH+nan.cn <br>
                    京ICP备08001421号京公网安备110108007702
            </div>
        </div>
    </div>
    
<%-- <form action="userEditSave.jsp" method="post">
	当前ID(不可更改)：<input type="text" name=Uid value="<%=us.getUid()%>" readonly="readonly"><br/> 
	用户名<input type="text" name="Uname" value="<%=us.getUname()%>"><br/>
	地址<input type="text" name="Uaddress" value="<%=us.getUaddress()%>"><br/>
	手机号<input type="text" name="Uphone" value="<%=us.getUphone()%>"><br/>
	性别<input type="text" name="Usex" value="<%=us.getUsex()%>"><br/>
	<input type="submit" value="确定">
	<input type="reset">
</form> --%>
</body>
</html>