<%@ page language="java" contentType="text/html;charset=GB2312"%>
<%@ page import="java.util.*"%>
<%@ page import="mybean.maths.shoppingCart" %>
<jsp:useBean id="spcart" class="mybean.maths.shoppingCart"
     scope="session"/>
<html>
<head>
</head>
<body>
��Ҫ<a href="ch5_6_book.jsp" >��������</a><br>
<%
  String goods_id=request.getParameter("goods_id");
  try{
	  int goods_count=
	  	Integer.parseInt(request.getParameter("book_count"));
	  spcart.minusGoods(goods_id,goods_count);
	  out.print("�ɹ��ӹ��ﳵ��ȡ��!");
  }
  catch(Exception e){
	  out.print("��������ֲ���ȷ��");
  }
%>
<br>��Ҫ<a href="ch5_6_buy.jsp">�鿴���ﳵ</a>
</body>
</html>
