<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>书城</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" href="css/lightbox.css" type="text/css" media="screen" />
<script src="js/prototype.js" type="text/javascript"></script>
<script src="js/scriptaculous.js?load=effects" type="text/javascript"></script>
<script src="js/lightbox.js" type="text/javascript"></script>
<script type="text/javascript" src="js/java.js"></script>
</head>
<body>
<div id="wrap">
  <div class="header">
    <div class="logo"><a href="index.jsp"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
    <div id="menu">
      <ul>
        <li class="selected"><a href="index.jsp">首页</a></li>
        <li><a href="specials.jsp">图书</a></li>
		 <li><a href="cart.jsp">购物车</a></li>
      </ul>
    </div>
  </div>
  <div class="center_content">
    <div class="left_content">
      <div class="crumb_nav"> <a href="index.jsp">首页</a> &gt;&gt; 详情</div>
      <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>C++ Primer中文版</div>
      <div class="feat_prod_box_details">
        <div class="prod_img"><a href="details.jsp"><img width="100" height="150" src="img/9213579.jpg" alt="" title="" border="0" /></a> <br />
          <br />
          <a href="img/9213579.jpg" rel="lightbox"><img src="images/zoom.gif" alt="" title="" border="0" /></a> </div>
        <div class="prod_det_box">
          <div class="box_top"></div>
          <div class="box_center">
            <div class="prod_title">详情</div>
            <p class="details"> 一本经久不衰的C 畅销经典教程；首本支持C 11新标准的程序设计图书。       它被誉为“发人员学习C 的必备教程,C 是在 C 语言基础上发的一种集面向对象编程、泛型编程和过程化编程于一体的编程语言，是C语言的...&nbsp;</p>
            <div class="price"><strong>作者:</strong> <span class="red">（美）Stanley B. Lippman Barbara E. Moo Josée LaJoie   著，李师贤  等译</span></div>
			 <div class="price"><strong>出版社:</strong> <span class="red">人民邮电出版社</span></div>
			  <div class="price"><strong>出版时间:</strong> <span class="red">2010-02-01</span></div>
			   <div class="price"><strong>字&nbsp;&nbsp;数:</strong> <span class="red">18.2万</span></div>
			    <div class="price"><strong>所属分类:</strong> <span class="red">教育 > 科技 </span></div>
            <div class="price"><strong>价格:</strong> <span class="red">100元</span></div>
            <a href="details.jsp" class="more">加入购物车</a>
            <div class="clear"></div>
          </div>
          <div class="box_bottom"></div>
        </div>
        <div class="clear"></div>
      </div>
      <div id="demo" class="demolayout">
        <ul id="demo-nav" class="demolayout">
          <li><a class="active" href="#tab1">更多细节</a></li>
          <li><a class="" href="#tab2">相关书籍</a></li>
        </ul>
        <div class="tabs-container">
          <div style="display: block;" class="tab" id="tab1">
            <p class="more_details">C 是在 C 语言基础上发的一种集面向对象编程、泛型编程和过程化编程于一体的编程语言，是C语言的超集。《C Primer Plus(第6版)中文版》是根据2003年的ISO/ANSI C 标准编写的，通过大量短小精悍的程序详细而全面地阐述了 C 的基本概念和技术，并专辟一章介绍了C 11新增的功能。 　　全书分18章和10个附录。分别介绍了C 程序的运行方式、基本数据类型、复合数据类型、循环和关系表达式、分支语句和逻辑运算符、函数重载和函数模板、内存模型和名称空间、类的设计和使用、多态、虚函数、动态内存分配、继承、代码重用、友元、异常处理技术、string类和标准模板库、输/输出、C 11新增功能等内容。 　　 《C Primer Plus(第6版)中文版》针对C 初学者，书中从C语言基础知识始介绍，然后在此基础上详细阐述C 新增的特性，因此不要求读者有C语言方面的背景知识。本书可作为高等院校教授C 课程的教材，也可供初学者自学C 时使用。 </p>
            <ul class="list">
              <li>内容提要</li>
              <li>作者简介</li>
              <li>前言</li>
              <li>第1章 预备知识</li>
			  <li>....</li>
            </ul>
           
          </div>
          <div style="display: none;" class="tab" id="tab2">
            <div class="new_prod_box"> <a href="details.jsp">C++ Primer 习题解答</a>
              <div class="new_prod_bg"> <a href="details.jsp"><img width="60" height="90"  src="img/8996733.jpg" alt="" title="" class="thumb" border="0" /></a> </div>
            </div>
            <div class="new_prod_box"> <a href="details.jsp">C程序设计语言</a>
              <div class="new_prod_bg"> <a href="details.jsp"><img width="60" height="90"  src="img/9150365.jpg" alt="" title="" class="thumb" border="0" /></a> </div>
            </div>
            <div class="new_prod_box"> <a href="details.jsp">C#设计模式</a>
              <div class="new_prod_bg"> <a href="details.jsp"><img width="60" height="90"  src="img/9011122.jpg" alt="" title="" class="thumb" border="0" /></a> </div>
            </div>
           
            <div class="clear"></div>
          </div>
        </div>
      </div>
      <div class="clear"></div>
    </div>
    <!--end of left content-->
    <div class="right_content">
      <div class="languages_box"> <span class="red">语言:</span> <a href="#"><img src="images/gb.gif" alt="" title="" border="0" /></a> <a href="#"><img src="images/fr.gif" alt="" title="" border="0" /></a> <a href="#"><img src="images/de.gif" alt="" title="" border="0" /></a> </div>
      <div class="currency"> <span class="red">货币: </span> <a href="#">GBP</a> <a href="#">EUR</a> <a href="#"><strong>USD</strong></a> </div>
      <div class="cart">
        <div class="title"><span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span>我的购物车</div>
        <div class="home_cart_content"> 3 件 | <span class="red">总额: 100元</span> </div>
        <a href="cart.jsp" class="view_cart">查看</a> </div>
      <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>关于</div>
      <div class="about">
        <p> <img src="images/about.gif" alt="" title="" class="right" />成功的聪明人太多了，我必须为笨蛋争口气！（书单来了小编书单狗出书啦！解压神书，贱萌来袭！看书单狗为笨蛋争口气！）
解压神书，贱萌来袭！500万粉丝大号“书单来了”首席小编书单狗出漫画书啦！每一页都相当于给你的灵魂做次大保健。读客熊猫君出品</p>
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
    <div class="right_footer"> <a href="#">首页</a> <a href="#">图书</a></div>
  </div>
</div>
</body>
<script type="text/javascript">

var tabber1 = new Yetii({
id: 'demo'
});

</script>
</html>