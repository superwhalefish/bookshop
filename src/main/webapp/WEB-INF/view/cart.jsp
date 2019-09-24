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
      <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>我的购物车</div>
      <div class="feat_prod_box_details">
        <table class="cart_table">
          <tr class="cart_title">
		  	<td>选择</td>
            <td>图片</td>
            <td>书名</td>
            <td>单价</td>
            <td>数量</td>
            <td>总额</td>
          </tr>
          <tr>
		  	<td><input type="checkbox" id="t1" value="9011122"/></td>
            <td><a href="details.jsp"><img width="25" height="40" src="img/9011122.jpg" alt="" title="" border="0" class="cart_thumb" /></a></td>
            <td>C程序设计语言</td>
            <td>100</td>
            <td><input type="text" id="q1" size="1" style="text-align:center; vertical-align:middel;"  value="1"/></td>
            <td>100</td>
          </tr>
          <tr>
		  	<td><input type="checkbox" id="t2" value="730211157X"/></td>
            <td><a href="details.jsp"><img width="25" height="40" src="img/730211157X.jpg" alt="" title="" border="0" class="cart_thumb" /></a></td>
            <td>并行程序设计</td>
            <td>100</td>
            <td><input type="text" id="q2" size="1" style="text-align:center; vertical-align:middel;" value="1"/></td>
            <td>100</td>
          </tr>
          <tr>
		  <td><input type="checkbox" id="t3" value="9150365"/></td>
            <td><a href="details.jsp"><img width="25" height="40" src="img/9150365.jpg" alt="" title="" border="0" class="cart_thumb" /></a></td>
            <td>C#设计模式</td>
            <td>100</td>
            <td><input type="text" id="q3" size="1" style="text-align:center; vertical-align:middel;" value="1"/></td>
            <td>100</td>
          </tr>
         
          <tr>
            <td colspan="4" class="cart_total"><span class="red">总计:</span></td>
            <td> 300</td>
          </tr>
        </table>
        <a href="#" class="continue">&lt; 继续</a> <a href="#" class="checkout">提交订单 &gt;</a> </div>
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
    <div class="right_footer"> <a href="#">首页</a> <a href="#">图书</a> <a href="#">购物车</a></div>
  </div>
</div>
</body>
</html>