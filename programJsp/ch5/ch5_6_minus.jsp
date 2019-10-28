<%@ page language="java" contentType="text/html;charset=GB2312"%>
<%@ page import="java.util.*"%>
<%@ page import="mybean.maths.shoppingCart" %>
<jsp:useBean id="spcart" class="mybean.maths.shoppingCart"
     scope="session"/>
<html>
<head>
</head>
<body>
我要<a href="ch5_6_book.jsp" >继续购买</a><br>
<%
  String goods_id=request.getParameter("goods_id");
  try{
	  int goods_count=
	  	Integer.parseInt(request.getParameter("book_count"));
	  spcart.minusGoods(goods_id,goods_count);
	  out.print("成功从购物车中取出!");
  }
  catch(Exception e){
	  out.print("输入的数字不正确！");
  }
%>
<br>我要<a href="ch5_6_buy.jsp">查看购物车</a>
</body>
</html>
