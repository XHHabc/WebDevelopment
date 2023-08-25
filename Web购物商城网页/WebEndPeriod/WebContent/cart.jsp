<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="model.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'cart.jsp' starting page</title>
 	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link type="text/css" rel="stylesheet" href="css/style1.css" />
    <script language="javascript">
	    function delcfm() {
	        if (!confirm("确认要删除？")) {
	            window.event.returnValue = false;
	        }
	    }
   </script>
   <style type="text/css">
     hr{
	     
	     border-color:#ffcb3c; 
	   }
	   
	   div{
	      float:left;
	      margin-left: 30px;
	      margin-right:30px;
	      margin-top: 5px;
	      margin-bottom: 5px;
	     
	   }
	   a{
	   		color: black;
	   }
	   h1{
	   		color:#ffcb3c;
	   		height:50px;
	   		line-height: 50px;
	   }
	 .main{
	 	width:1220px;
	 	margin: 5px auto 0px 230px;
	 }
    table{
     border:1px;
     border-top-color:#ffcb3c;
     border-bottom-color:#ffcb3c;
     }
   th{
     background-color:#ffcb3c;
   }
      th, td {
	text-align: center;
    }
      div #total
	   {
	     margin:0px auto;
	     text-align:right; 
	   } 
	    div #number
	   {
	     margin:0px auto;
	     text-align:center; 
	   }
	   #submit-order{
	   		border: none;
	   		height: 30px;
	   		font-size:13px;
	   		color:#fcfcfcfc;
	   		background-color: #ffcb3c;
	   		margin-top:10px;
	   		box-shadow: 2px 3px 3px #ccc;
	   }
   </style>
   
  </head>
  
  <body>
    <h1 align="center">我的购物车</h1> 
   <a href="index.jsp">首页</a> >> <a href="index.jsp">商品列表</a>
   <hr> 
   
 <div class="main">
 		<div id="shopping">
   <form action="CartServlet" method="post">		
			<table  width="750" height="60" cellpadding="0" cellspacing="0" border="0">
				<tr>
					<th >商品名称</th>
					<th >商品单价</th>
					<th >商品价格</th>
					<th >购买数量</th>
					<th >操作</th>
				</tr>
				<%
				    //判断session中是否有购物车对象
				    if(request.getSession().getAttribute("cart")!=null){
				    	
				%>
				<!-- 循环的开始 -->
				<%
				     Cart cart=(Cart)request.getSession().getAttribute("cart");
				     HashMap<Goods,Integer> good=cart.getGoods();
				     Set<Goods> goods=good.keySet();
				     Iterator<Goods> it=goods.iterator();
				     while(it.hasNext()){
				    	 Goods i=it.next();
				%>
				<tr name="products" id="product_id_1">
					<td class="thumb"><img src="images/<%=i.getPicture() %>"width="150" height="120"/><a href="details.jsp?id=<%=i.getId()%>">
					<%=i.getName()%></a></td>
					<td class="number"><%=i.getPrice() %></td>
					<td class="price" id="price_id_1">
						<span><%=i.getPrice()*good.get(i) %></span>
						<input type="hidden" value="" />
					</td>
					<td class="number">
                     	<%=good.get(i) %>			
					</td>                        
                    <td class="delete">
					  	<a href="CartServlet?action=delete&id=<%=i.getId() %>"onclick="delcfm();">删除</a>		                  
					</td>
				</tr>
				<%
				    }
				%>
				 <!-- 循环的结束 --> 
				
			</table>
			 <div class="total"><span id="total">总计￥<%=cart.getTotalPrice() %></span></div>
			<%
				    }
				%>
			<div class="number"><a href="CartServlet?action=clear"><input type="button" value="提交订单" id="submit-order"></a></div>

<script>
document.getElementById("submit-order").addEventListener("click", function() {
  if(confirm("确认提交订单？")) {
    alert("购买成功，会尽快给您发货！为您清空购物车，请您重新选择商品进行购物。");
    window.location.href = "CartServlet?action=clear";
  }
});
</script>
		</form>
	</div> 
  </div>
   
  </body>
</html>
