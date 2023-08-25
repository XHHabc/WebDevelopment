<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
</head>
<body>

<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/base.css">
<link rel="stylesheet" href="../css/user.css">
</head>

    
<body>

  <script type="text/javascript">
        function getLogon() {
            window.location.href="register/Logon.jsp";
        }
        </script>

    <div class="w">
        <div class="headerd">
            <div class="logo">
            </div>
        </div>
        <div class="content">
            <div class="h">
                <div class="l">
                    修改密码
                </div>
            </div>

            <div class="d">
              <form  action="userEditPWDSave.jsp" method="post">
                <ul>
                    <li ><label for="">当前ID:</label><input  type="text" class="inp"  name="Uid" value="<%=session.getAttribute("Uid")%>" readonly="readonly"></li>
                    <li><label for="">旧密码:</label><input  type="password" class="inp"  name="Upasswd" ></li>
                    <li><label for="">新密码:</label><input  type="password" class="inp" name="UpasswdNew01"></li>
                    <li><label for="">确认新密码:</label><input  type="password" class="inp" name="UpasswdNew02"></li>
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
    
</body>
</html>