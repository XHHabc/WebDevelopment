<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<link rel="stylesheet" href="../css/index.css">
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/base.css">
<link rel="shortcut icon" href="../favicon.ico" />
</head>
<body>
 <div class="w">
        <div class="headerd">
            <div class="logo">
            </div>
        </div>
        <div class="content">
            <div class="h">
                <div class="l">
                    注册新用户
                </div>
                <div class="r">
                    <ul>
                        <li>我有账号,去</li>
                        <li ><a href="../Main.jsp" class="style">登录</a></li>
                    </ul>
                </div>
            </div>

            <div class="b">
              <form action="LogonShow.jsp" method="get">
                <ul>
                    <li ><label for="">用户名:</label><input name="Uname"  type="text" class="inp"></li>
                    <li><label for="">密码:</label><input type="password" name="Upasswd" class="inp"></li>
                    <li><label for="">确认密码:</label><input name="Upasswd02" type="password" class="inp"></li>
                    <li class="safe"><label for="">地址:</label><input name="Uaddress" type="text" class="inp"></li>
                    <li><label for="">手机号:</label><input name="Uphone" type="text" class="inp"></li>
                    <li><label for="">性别:</label><input type="radio" name="Usex" value="男" checked="checked" class="sex"/>男
                                                    <input type="radio" name="Usex" value="女" class="sex"/>女
                                                    <input type="radio" name="Usex" value="保密" class="sex"/>保密</li>
                    <li ><input type="submit" name="username" value="提交" class="submit"/><input type="reset" class="submit"/></li>
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
<!-- <form action="LogonShow.jsp" method="get">
<table border="1">
  <tr>
    <th colspan="2">会员注册</th>
  </tr>

  <tr>
    <td>用户名：</td>
    <td><input type="text" name="Uname" /></td>
  </tr>
  
  <tr>
    <td>密码：</td>
    <td><input type="password" name="Upasswd" /></td>
  </tr>
  <tr>
    <td>确认密码：</td>
    <td><input type="password" name="Upasswd02" /></td>
  </tr>
      <tr>
    <td>地址：</td>
    <td><input type="text" name="Uaddress" /></td>
  </tr>
      <tr>
    <td>手机号：</td>
    <td><input type="text" name="Uphone" /></td>
  </tr>
  <tr>
    <td>性别：</td>
    <td>
    	<input type="radio" name="Usex" value="男" checked="checked"/>男
		<input type="radio" name="Usex" value="女"/>女
		<input type="radio" name="Usex" value="保密"/>保密
	</td>
  </tr>
  <tr>
    <td></td>
    <td><input type="submit" name="username" value="提交"/><input type="reset" /></td>
  </tr>


</table>
</form> -->
</body>
</html>