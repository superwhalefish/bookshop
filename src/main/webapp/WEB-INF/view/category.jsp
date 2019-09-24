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
	<jsp:include page="right.jsp"></jsp:include>
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