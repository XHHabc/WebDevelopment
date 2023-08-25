<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网页首页</title>

<link rel="stylesheet" href="./css/index.css">
<link rel="stylesheet" href="./css/base.css">
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="../fa/css/all.css">
<link rel="shortcut icon" href="../favicon.ico" />
</head>
<body>
<div>
<%-- <% 	String Dname=(String)session.getAttribute("Dname");

	if(Dname==null){
		/* out.print("检测到页面未登录账号，3秒后自动跳转到登录界面<br/>"); */
		response.setHeader("refresh", "3;url=Main.jsp");
	}
	
	if(Dname!=null){
		out.print("当前用户是："+Dname+"<br/>");
		
		
} %> --%>
  <!-- 快捷导航 -->
    <div class="shortcut">
        <div class="w clearfix">
            <div class="fl">
                <ul>
                    <li>西硬欢迎你!&nbsp;&nbsp;&nbsp;</li>
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
                        <a href=".././personalPage/PPage.jsp">客户服务</a>
                        <!-- <i class="fas fa-angle-down"></i> -->
                    </li>
                    <li></li>
                    <li>
                        <a href="#">网站导航</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <!-- 头部 -->
    <div class="header w">
        <div class="logo">
            <h1><a href="index.jsp" title="西硬"><img src="../img/logo.png" alt=""></a></h1>
        </div>
        
         <!-- 搜索 -->
         <div class="search">
            <input type="search"  placeholder="请搜索内容..." >
            <button>搜索</button>
         </div>

         <!-- 热词 -->
         <div class="hotwrods">   
             <a href="../../index.jsp" class="style">优惠购首发</a>
             <a href="../../index.jsp">亿元优惠</a>
             <a href="../../index.jsp">9.9元团购</a>
             <a href="../../index.jsp">美满99减30</a>
             <a href="../../index.jsp">办公用品</a>
             <a href="../../index.jsp">电脑</a>
             <a href="../../index.jsp">通信</a>
         </div>

         <!-- 购物车 -->
         <div class="shopcar">
             <a href="../../cart.jsp" class="car">
                 <i class="fas fa-cart-arrow-down "></i>
                </a>
                <a href="../../cart.jsp">我的购物车</a>
                <a href="../../cart.jsp">
                    <i class="fas fa-chevron-right"></i>
                </a>
         </div>
    </div>

    <!-- nav 导航 -->
    <div class="nav">
        <div class="w clearfix">
            <div class="dropdown fl">
                <div class="dt">全部商品分类</div>
                <div class="dd">
                    <ul>
                        <li>
                            <a href="../../index.jsp">家用电器</a>
                            <i class="fas fa-angle-right"></i>
                        </li>
                        <li>
                            <a href="../../index.jsp">手机 、 数码 、 通信</a>
                            <i class="fas fa-angle-right"></i>
                        </li>
                        <li>
                            <a href="../../index.jsp">电脑、办公</a>
                            <i class="fas fa-angle-right"></i>
                        </li>
                        <li>
                            <a href="../../index.jsp">家居、家具、家装、厨具</a>
                            <i class="fas fa-angle-right"></i>
                        </li>
                        <li>
                            <a href="../../index.jsp">男装、女装、童装、内衣</a>
                            <i class="fas fa-angle-right"></i>
                        </li>
                        <li>
                            <a href="../../index.jsp">个户化妆、清洁用品、宠物</a>
                            <i class="fas fa-angle-right"></i>
                        </li>
                        <li>
                            <a href="../../index.jsp">鞋靴、箱包、珠宝、奢侈品</a>
                            <i class="fas fa-angle-right"></i>
                        </li>
                        <li>
                            <a href="../../index.jsp">运动户外、钟表</a>
                            <i class="fas fa-angle-right"></i>
                        </li>
                        <li>
                            <a href="../../index.jsp">汽车、汽车用品</a>
                            <i class="fas fa-angle-right"></i>
                        </li>
                        <li>
                            <a href="../../index.jsp">母婴、玩具乐器</a>
                            <i class="fas fa-angle-right"></i>
                        </li>
                        <li>
                            <a href="../../index.jsp">食品、酒类、生鲜、特产</a>
                            <i class="fas fa-angle-right"></i>    
                        </li>
                        <li>
                            <a href="../../index.jsp">图书、音像、电子书</a>
                            <i class="fas fa-angle-right"></i>
                        </li>
                        <li>
                            <a href="../../index.jsp">彩票、旅行、充值、票务</a>
                            <i class="fas fa-angle-right"></i>
                        </li>
                        <li>
                            <a href="../../index.jsp">理财、众筹、白条、保险</a>
                            <i class="fas fa-angle-right"></i>
                        </li>
                        
                    </ul>
                </div>
            </div>

            <div class="navitems ">
                <ul>
                    <li><a href="../../index.jsp">服装城</a></li>
                    <li><a href="../../index.jsp">美妆馆</a></li>
                    <li><a href="../../index.jsp">传智超市</a></li>
                    <li><a href="../../index.jsp">全球购</a></li>
                    <li><a href="../../index.jsp">闪购</a></li>
                    <li><a href="../../index.jsp">团购</a></li>
                    <li><a href="../../index.jsp">拍卖</a></li>
                    <li><a href="../../index.jsp">有趣</a></li>
                </ul>
            </div>
        </div>
       
    </div>

    <!-- main -->
    <div class="w">
        <div class="main">
            <div class="focus" onmouseenter="mouseenter();" onmouseout="mouseout();">
                <div class="focus-img item"><img src="../img/focus1.png" width="721px" height="430px"></div>
                <div class="focus-img"><img src="../img/focus2.png" width="721px" height="430px"></div>
                <div class="focus-img"><img src="../img/focus3.jpg" width="721px" height="430px"></div>
                <div class="focus-img"><img src="../img/focus4.jpg" width="721px" height="430px"></div>
                <button class="focus-left" onclick="preClick();" onmouseenter="mouseenter();" onmouseout="mouseout();">&lt;</button>
                <button class="focus-right" onclick="nextClick();" onmouseenter="mouseenter();" onmouseout="mouseout();">&gt;</button>
                <div class="focus-dian" >
                    <ul class="pointList">
                        <li class="point dian-color" data-index="0"></li>
                        <li class="point" data-index="1"></li>
                        <li class="point" data-index="2"></li>
                        <li class="point" data-index="3"></li>
                    </ul>
                </div>
            </div>
            <div class="newsflash">

                <div class="news">
                    <div class="new_h">
                        <h5>品优购快报</h5>
                        <a href="#">更多&nbsp;
                            <i class="fas fa-chevron-right"></i>
                        </a>
                    </div>

                    <div class="new_b">
                        <ul>
                            <li><strong>[特惠]</strong><a href="../../index.jsp">爆款耳机5折秒</a></li>
                            <li><strong>[特惠]</strong><a href="../../index.jsp">618，健康好礼低至5折,kjiouio</a></li>
                            <li><strong>[特惠]</strong><a href="../../index.jsp">爆款耳机5折秒</a></li>
                            <li><strong>[特惠]</strong><a href="../../index.jsp">9.9元洗100张照片！</a></li>
                            <li><strong>[特惠]</strong><a href="../../index.jsp">智能空调立省1000</a></li>
                           
                        </ul>
                    </div>
                </div>

                <div class="lifeservice">
                    <ul>
                        <li>
                            <a href="../../index.jsp">
                            <i></i>
                            <p>话费</p>
                            </a>
                        </li>
                        <li>
                            <a href="../../index.jsp">
                            <i></i>
                            <p>话费</p>
                            </a>
                        </li>
                        <li>
                            <a href="../../index.jsp">
                            <i></i>
                            <p>话费</p>
                            </a>
                        </li>
                        <li>
                            <a href="../../index.jsp">
                            <i></i>
                            <p>话费</p>
                            </a>
                        </li>
                        <li>
                            <a href="../../index.jsp">
                            <i></i>
                            <p>话费</p>
                            </a>
                        </li>
                        <li>
                            <a href="../../index.jsp">
                            <i></i>
                            <p>话费</p>
                            </a>
                        </li>
                        <li>
                            <a href="../../index.jsp">
                            <i></i>
                            <p>话费</p>
                            </a>
                        </li>
                        <li>
                            <a href="../../index.jsp">
                            <i></i>
                            <p>话费</p>
                            </a>
                        </li>
                        <li>
                            <a href="../../index.jsp">
                            <i></i>
                            <p>话费</p>
                            </a>
                        </li>
                        <li>
                            <a href="../../index.jsp">
                            <i></i>
                            <p>话费</p>
                            </a>
                        </li>
                        <li>
                            <a href="../../index.jsp">
                            <i></i>
                            <p>话费</p>
                            </a>
                        </li>
                        <li>
                            <a href="../../index.jsp">
                            <i></i>
                            <p>话费</p>
                            </a>
                        </li>
    
                    </ul>
                </div>

                <div class="bargain">
                    <img src="../img/bargain.jpg" alt="">
                </div>
            </div>
        </div>
    </div>

    <!-- recom -->
    <div class="recom  w">
        <div class="gg ">
            <img src="../img/recom.png" alt="">
            <h3>今日推荐</h3>
        </div>
        <div class="dd fl">
            <ul>
                <li><img src="../img/pic.jpg" alt=""><i></i></li>
                <li><img src="../img/pic.jpg" alt=""><i></i></li>
                <li><img src="../img/pic.jpg" alt=""><i></i></li>
                <li><img src="../img/pic.jpg" alt=""><i></i></li>
               
               
               
            </ul>
        </div>
    </div>

      <!-- floor -->
      <div class="floor">
        <div class="jiadian w">
            <div class="box_h">
                <h3 class="style">家用电器</h3>
                <div class="tab_list">
                    <ul>
                        <li><a href="../../index.jsp">热门</a>|</li>
                        <li><a href="../../index.jsp">大家电</a>|</li>
                        <li><a href="../../index.jsp">生活电器</a>|</li>
                        <li><a href="../../index.jsp">个护健康</a>|</li>
                        <li><a href="../../index.jsp">应季电器</a>|</li>
                        <li><a href="../../index.jsp">空气/净水</a>|</li>
                        <li><a href="../../index.jsp">新奇特</a>|</li>
                        <li><a href="../../index.jsp">高端电器</a></li>
                        
                    </ul>
                </div>
            </div>
            
            <div class="box_b">
                <div class="tab_content">
                   <div class="tab_list_item">
                    <div class="col_210">
                        <ul>
                            <li><a href="#">节能补贴</a></li>
                            <li><a href="#">节能补贴</a></li>
                            <li><a href="#">节能补贴</a></li>
                            <li><a href="#">节能补贴</a></li>
                            <li><a href="#">节能补贴</a></li>
                            <li><a href="#">节能补贴</a></li>
                        </ul>
                        <a href="#"><img src="../img/floor/floor-1-1.png" alt=""></a>
                    </div>
                    <div class="col_329">
                        <a href="#"><img src="../img/floor/floor-1-2.jpg" alt=""></a>
                    </div>
                    <div class="col_220">
                        <a href="#" class="bb"><img src="../img/floor/floor-1-3.png" alt=""></a>
                        <a href="#"><img src="../img/floor/floor-1-4.png" alt=""></a>
                    </div>
                    <div class="col_220">
                        <a href="#"><img src="../img/floor/floor-1-5.png" alt=""></a>
                    </div>
                    <div class="col_219">
                        <a href="#" class="bb"><img src="../img/floor/floor-1-6.png" alt=""></a>
                        <a href="#"><img src="../img/floor/floor-1-7.png" alt=""></a>
                    </div>
                   </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 底部 -->
    <div class="footer">
        <div class="w">
            <!-- mod_servecie -->
            <div class="mod_servecie">
                <ul>
                    <li>
                        <h5></h5>
                        <div class="service_text">
                            <h4>正品保障</h4>
                            <p>正品保障，提供发票</p>
                        </div>
                    </li>
                    <li>
                        <h5></h5>
                        <div class="service_text">
                            <h4>正品保障</h4>
                            <p>正品保障，提供发票</p>
                        </div>
                    </li>
                    <li>
                        <h5></h5>
                        <div class="service_text">
                            <h4>正品保障</h4>
                            <p>正品保障，提供发票</p>
                        </div>
                    </li>
                    <li>
                        <h5></h5>
                        <div class="service_text">
                            <h4>正品保障</h4>
                            <p>正品保障，提供发票</p>
                        </div>
                    </li>   
                </ul>
            </div>

            <!-- mod_help -->
            <div class="mod_help">
               <dl>
                   <dt>购物指南</dt>
                   
                   <dd><a href="#">购物流程</a></dd>
                   <dd><a href="#">会员介绍</a></dd>
                   <dd><a href="#">生活旅行/团购</a></dd>
                   <dd><a href="#">常见问题</a></dd>
                   <dd><a href="#">大家电</a></dd>
                   <dd><a href="#">联系客服</a></dd>
               </dl>
               <dl>
                   <dt>购物指南</dt>

                   <dd><a href="#">购物流程</a></dd>
                   <dd><a href="#">会员介绍</a></dd>
                   <dd><a href="#">生活旅行/团购</a></dd>
                   <dd><a href="#">常见问题</a></dd>
                   <dd><a href="#">大家电</a></dd>
                   <dd><a href="#">联系客服</a></dd>
               </dl>
               <dl>
                   <dt>购物指南</dt>

                   <dd><a href="#">购物流程</a></dd>
                   <dd><a href="#">会员介绍</a></dd>
                   <dd><a href="#">生活旅行/团购</a></dd>
                   <dd><a href="#">常见问题</a></dd>
                   <dd><a href="#">大家电</a></dd>
                   <dd><a href="#">联系客服</a></dd>
               </dl>
               <dl>
                   <dt>购物指南</dt>

                   <dd><a href="#">购物流程</a></dd>
                   <dd><a href="#">会员介绍</a></dd>
                   <dd><a href="#">生活旅行/团购</a></dd>
                   <dd><a href="#">常见问题</a></dd>
                   <dd><a href="#">大家电</a></dd>
                   <dd><a href="#">联系客服</a></dd>
               </dl>
               <dl>
                   <dt>购物指南</dt>

                   <dd><a href="#">购物流程</a></dd>
                   <dd><a href="#">会员介绍</a></dd>
                   <dd><a href="#">生活旅行/团购</a></dd>
                   <dd><a href="#">常见问题</a></dd>
                   <dd><a href="#">大家电</a></dd>
                   <dd><a href="#">联系客服</a></dd>
               </dl>
               <dl>
                   <dt>帮助中心</dt>

                   <dd>
                       <img id="ewm" src="../img/ewm.jpg" alt="">
                       <p>西硬购物客户端</p>
                   </dd>
                 
               </dl>
            </div>

            <!-- mod_copyright -->
            <div class="mod_copyright">
                                 
                   <div class="link">
                    <a href="#">关于我们</a>|
                    <a href="#">联系我们</a>|
                    <a href="#">联系客服</a>| 
                    <a href="#">商家入驻</a>| 
                    <a href="#">营销中心</a>|
                    <a href="#">手机品优购</a>|
                    <a href="#">友情链接 </a>|
                    <a href="#">销售联盟</a>|
                    <a href="#">西硬购社区</a>|
                    <a href="#">西硬购公益</a>|
                    <a href="#">English Site</a>|
                    <a href="#"> Contact U</a>
                </div>
                <div class="copyright">
                    地址：广东省佛山市南海区狮山镇广东东软学院 邮编：100096 电话：400-618-4000 传真：010-82935100 邮箱: LinH+nan.cn <br>
                    京ICP备08001421号京公网安备110108007702
                </div>
            </div>
        </div>
    </div>

<script type="text/javascript" src="../js/index.js"></script>
</body>
</html>