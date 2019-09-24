<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>书城</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
<div id="wrap">
  <div class="header">
    <div class="logo"><a href="index.jsp"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
    <div id="menu">
      <ul>
        <li><a href="index.jsp">首页</a></li>
        <li><a href="category.jsp">图书</a></li>
       <li><a href="cart.jsp">购物车</a></li>
      </ul>
    </div>
  </div>
  <div class="center_content">
    <div class="left_content">
      <div class="crumb_nav"> <a href="index.jsp">home</a> &gt;&gt; 图书 </div>
      <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>教育</div>
      <div class="new_products">
        <div class="new_prod_box"> <a href="details.jsp">C程序设计语言</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span> <a href="details.jsp"><img width="60" height="90" src="img/9150365.jpg" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.jsp">并行程序设计</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span> <a href="details.jsp"><img width="60" height="90" src="img/730211157X.jpg" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.jsp">C#设计模式</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span> <a href="details.jsp"><img width="60" height="90" src="img/9011122.jpg" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
		 <div class="new_prod_box"> <a href="details.jsp">深入浅出MFC</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span> <a href="details.jsp"><img width="60" height="90" src="img/47578.jpg" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.jsp">C#入门经典</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span> <a href="details.jsp"><img width="60" height="90" src="img/9171366.jpg" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.jsp">精通CSS</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span> <a href="details.jsp"><img width="60" height="90" src="img/9221944.jpg" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="pagination"> <span class="disabled"><<</span><span class="current">1</span><a href="#?page=2">2</a><a href="#?page=3">3</a>…<a href="#?page=199">10</a><a href="#?page=200">11</a><a href="#?page=2">>></a> </div>
      </div>
      <div class="clear"></div>
    </div>
    <!--end of left content-->
    <div class="right_content">
      <div class="languages_box"> <span class="red">语言:</span> <a href="#"><img src="images/gb.gif" alt="" title="" border="0" /></a> <a href="#"><img src="images/fr.gif" alt="" title="" border="0" /></a> <a href="#"><img src="images/de.gif" alt="" title="" border="0" /></a> </div>
      <div class="currency"> <span class="red">货币: </span> <a href="#">GBP</a> <a href="#">EUR</a> <a href="#"><strong>USD</strong></a> </div>
      <div class="cart">
        <div class="title"><span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span>我的购物车</div>
        <div class="home_cart_content"> 3 件 | <span class="red">总价: 100元</span> </div>
        <a href="cart.jsp" class="view_cart">查看</a> </div>
      <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>关于</div>
      <div class="about">
        <p> <img src="images/about.gif" alt="" title="" class="right" /> 成功的聪明人太多了，我必须为笨蛋争口气！（书单来了小编书单狗出书啦！解压神书，贱萌来袭！看书单狗为笨蛋争口气！）
解压神书，贱萌来袭！500万粉丝大号“书单来了”首席小编书单狗出漫画书啦！每一页都相当于给你的灵魂做次大保健。读客熊猫君出品 </p>
      </div>
      <div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>促销</div>
        	 <div class="new_prod_box"> <a href="details.jsp">框架设计</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="details.jsp"><img width="60" height="90"  src="img/9226773.jpg" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.jsp">C#高级编程</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="details.jsp"><img width="60" height="90" src="img/9222502.jpg" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
        <div class="new_prod_box"> <a href="details.jsp">网站设计与开发</a>
          <div class="new_prod_bg"> <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span> <a href="details.jsp"><img width="60" height="90" src="img/711117013X.jpg" alt="" title="" class="thumb" border="0" /></a> </div>
        </div>
      </div>
      <div class="right_box">
        <div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>分类</div>
        <ul class="list">
          <li><a href="#">饰品</a></li>
          <li><a href="#">书籍礼品</a></li>
          <li><a href="#">特价</a></li>
          <li><a href="#">饰品</a></li>
          <li><a href="#">书籍礼品</a></li>
          <li><a href="#">特价</a></li>
		   <li><a href="#">饰品</a></li>
          <li><a href="#">书籍礼品</a></li>
          <li><a href="#">特价</a></li>
        </ul>
        <div class="title"><span class="title_icon"><img src="images/bullet6.gif" alt="" title="" /></span>伙伴</div>
        <ul class="list">
          <li><a href="#">饰品</a></li>
          <li><a href="#">书籍礼品</a></li>
          <li><a href="#">特价</a></li>
          <li><a href="#">饰品</a></li>
          <li><a href="#">书籍礼品</a></li>
          <li><a href="#">特价</a></li>
		   <li><a href="#">饰品</a></li>
          <li><a href="#">书籍礼品</a></li>
          <li><a href="#">特价</a></li>
        </ul>
      </div>
    </div>
    <!--end of right content-->
    <div class="clear"></div>
  </div>
  <!--end of center content-->
  <div class="footer">
    <div class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /><br />
      </div>
    <div class="right_footer"> <a href="#">首页</a> <a href="#">图书</a>  </div>
  </div>
</div>
</body>
</html>