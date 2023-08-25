<%@ page language="java" contentType="text/html; charset=utf-8"
  import="db.GoodDao,model.Goods" %>
  <%@ page import="java.util.*" %>
  <%@page isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 	<link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./fa/css/all.css">
    <link rel="shortcut icon" href=" favicon.ico" />
    <link rel="stylesheet" href="./css/base.css">
    <link rel="stylesheet" href="./css/pages.css">
    <link rel="stylesheet" href="./css/index.css">
<style type="text/css">
	   
	   hr{
	   		border-color:#ffcb3c; 
	   }
	   div dd{
	      margin:0px;
	      font-size:10pt;
	   }
	   div dd.dd_name
	   {
	      color:blue;
	   }
	   div dd.dd_city
	   {
	      color:#000;
	   }
	</style>
</head>
<body>
   <!-- 快捷导航 -->
     <div class="shortcut">
        <div class="w clearfix">
            <div class="fl">
                <ul>
                    <li>品优欢迎你!&nbsp;&nbsp;</li>
                    <li>
                        <%if(session.getAttribute("Dname")==null) {%>
                        <a href="#">请登录</a>&nbsp;
                        <%}else{ %>
                        <a href="#">当前用户：<%=session.getAttribute("Dname") %></a>&nbsp;
                        <%} %>
                        <a href="Main.jsp" class="style">免费注册</a>
                    </li>
                </ul>
            </div>
            <div class="fr">
                <ul>
                    <li><a href="#">我的订单</a></li>
                    <li></li>
                    <li>
                        <a href="#">我的西硬</a>
                        <i class="fas fa-angle-down"></i>
                    </li>
                    <li></li>
                    <li><a href="#">西硬会员</a></li>
                    <li></li>
                    <li><a href="#">企业采购</a></li>
                    <li></li>
                    <li>
                        <a href="#">关注西硬</a>
                        <i class="fas fa-angle-down"></i>
                    </li>
                    <li></li>
                    <li>
                        <a href="#">客户服务</a>
                        <i class="fas fa-angle-down"></i>
                    </li>
                    <li></li>
                    <li>
                        <a href="#">网站导航</a>
                        <i class="fas fa-angle-down"></i>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <!-- 头部 -->
    <div class="header w">
        <div class="logo">
            <h1><a href="./EndWork/logon_register/index.jsp" title="西硬"><img src="./img/logo.png" alt=""></a></h1>
        </div>
        
         <!-- 搜索 -->
         <div class="search">
            <input type="search" name="" id="" placeholder="请搜索内容..." >
            <button>搜索</button>
         </div>

         <!-- 热词 -->
         <div class="hotwrods">   
             <a href="#" class="style">优惠购首发</a>
             <a href="#">亿元优惠</a>
             <a href="#">9.9元团购</a>
             <a href="#">美满99减30</a>
             <a href="#">办公用品</a>
             <a href="#">电脑</a>
             <a href="#">通信</a>
         </div>

         <!-- 购物车 -->
         <div class="shopcar">
             <a href="cart.jsp" class="car">
                 <i class="fas fa-cart-arrow-down "></i>
                </a>
                <a href="cart.jsp">我的购物车</a>
                <a href="cart.jsp">
                    <i class="fas fa-chevron-right"></i>
                </a>
         </div>
    </div>

    <!-- nav 导航 -->
    <div class="nav">
        <div class="w clearfix">
            <div class="box1 fl"> 
                <ul>
                    <li><a href="#">品牌秒杀</a></li>
                    <li><a href="#">限时秒杀</a></li>
                    <li><a href="#">特价秒杀</a></li>
            </ul>
        </div> 
        <div class="box2 fl">
            <ul>
                <li><a href="#">女装</a></li>
                <li><a href="#">女鞋</a></li>
                <li><a href="#">男装</a></li>
                <li><a href="#">男鞋</a></li>
                <li><a href="#">母婴童装</a></li>
                <li><a href="#">食品</a></li>
                <li><a href="#">智能数码</a></li>
                <li><a href="#">运动户外</a></li>
                <li><a href="#">更多分类<i class="fas fa-angle-down"></i></a></li>
                
            </ul>
        </div>
    </div>   

    </div>
  
    <center>
<table width="750" height="60" cellpadding="0" cellspacing="0" border="0">
<tr>
<td>

            <!-- 商品循环开始 -->
            <%
                GoodDao goodDao=new GoodDao();
                List<Goods> list=goodDao.getGoodList();
                if(list!=null&&list.size()>0){
                    for(int i=0;i<list.size();i++){
                        Goods goods=list.get(i);
                        try {
            %>
                            <div>
                                <dl>
                                    <dt>
                                        <a href="details.jsp?id=<%=goods.getId() %>"><img src="images/<%=goods.getPicture() %>" width="120" height="90" border="1"/></a>
                                    </dt>
                                    <dd class="dd_name"><%=goods.getName() %></dd>
                                    <dd class="dd_city">描述:<%=goods.getCity() %>&nbsp;&nbsp;价格:￥<%=goods.getPrice() %></dd>
                                </dl>
                            </div>
            <%
                        } catch (Exception e) {
            %>
                            <h2>An exception occurred:</h2>
                            <p><%=e.getMessage()%></p>
            <%
                        }
                    }
                }
            %>
            <!-- 商品循环结束 -->

        </td>
    </tr>
</table>
    </center>

</body>
</html>