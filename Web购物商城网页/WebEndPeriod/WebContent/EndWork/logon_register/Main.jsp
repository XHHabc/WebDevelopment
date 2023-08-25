<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link rel="stylesheet" href="./css/index.css">
<link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/base.css">
<link rel="shortcut icon" href="favicon.ico" />
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
                    用户登录
                </div>
            </div>

            <div class="c">
              <form  action="MainShow.jsp">
                <ul>
                    <li ><label for="">用户名:</label><input  type="text" class="inp"  name="Dname" ></li>
                    <li><label for="">登录密码:</label><input  type="password" class="inp" name="Dpassword"></li>
                    <li><input type="submit" value="登录" class="btn" ></li>
                    <li><input type="button" value="注册" class="btn" onclick=getLogon()></li>
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