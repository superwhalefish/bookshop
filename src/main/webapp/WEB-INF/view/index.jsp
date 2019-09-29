<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>书城主页</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery-easyui-1.4.3/jquery.min.js"></script>

</head>
<body>
	<div id="wrap">
		<div class="header">
			<div class="logo">
				<a href="/bookshop/index"><img src="images/logo.gif" alt="" title=""
					border="0" /></a>
			</div>
			<div id="menu">
				<ul>
					<li class="selected"><a href="/bookshop/index">首页</a></li>
					<li><a href="/bookshop/category">图书</a></li>
				</ul>
			</div>
		</div>
		<div class="center_content">
			<div class="left_content">
				<div class="title">
					<span class="title_icon"><img src="css/images/bullet1.gif"
						alt="" title="" /></span>精选书籍
				</div>
				<c:forEach items="${randTwoBook }" var="rBook" begin="0" end="1">
					<div class="feat_prod_box">
						<div class="prod_img">
							<a href="/bookshop/bookDetails?id=${rBook.id }"><img src="img/${rBook.bimg }.jpg"
								width="100" height="150" alt="" title="" border="0" /></a>
						</div>
						<div class="prod_det_box">
							<div class="box_top"></div>
							<div class="box_center">
								<div class="prod_title">${rBook.bname }</div>
								<p class="details">${rBook.bdetials }著，${rBook.bauthor } 等译
								</p>
								<a href="/bookshop/bookDetails?id=${rBook.id }" class="more">- 更多细节 -</a>
								<div class="clear"></div>
							</div>
							<div class="box_bottom"></div>
						</div>
						<div class="clear"></div>
					</div>
				</c:forEach>
				<div class="title">
					<span class="title_icon"><img src="images/bullet2.gif"
						alt="" title="" /></span>新书
				</div>
				<div class="new_products">
					<c:forEach items="${randTwoBook }" var="rBook">
						<div class="new_prod_box">
							<a href="/bookshop/bookDetails?id=${rBook.id }">${rBook.bname }</a>
							<div class="new_prod_bg">
								<span class="new_icon"><img src="images/new_icon.gif"
									alt="" title="" /></span> <a href="/bookshop/bookDetails?id=${rBook.id }"><img width="60"
									height="90" src="img/${rBook.bimg }.jpg" alt="" title=""
									class="thumb" border="0" /></a>
							</div>
						</div>
					</c:forEach>
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
			<div class="left_footer">
				<img src="images/footer_logo.gif" alt="" title="" /><br />
			</div>
			<div class="right_footer">
				<a href="#">首页</a> <a href="category.jsp">图书</a>
			</div>
		</div>
	</div>
	<div style="text-align: center;">
		<p>
			&#26469;&#28304;:<a href="http://www.mycodes.net/" target="_blank">&#28304;&#30721;&#20043;&#23478;</a>
		</p>
	</div>
</body>
</html>