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
	  if(spcart.deleteGoods(goods_id)){
	      out.print("成功删除购物车中的的该书!");
	  }
	  else{
		  out.print("删除失败！");
	  }
  }
  catch(Exception e){
	  out.print("输入参数不正确！");
  }
%>
<br>我要<a href="ch5_6_buy.jsp">查看购物车</a>
</body>
</html>
