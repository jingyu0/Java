<%@ page language="java" contentType="text/html;charset=GB2312"%>
<%@ page import="java.util.*" %>
<%@ page import="mybean.maths.GoodsList" %>
<%@ page import="mybean.maths.Goods" %>
<jsp:useBean id="glApp" class="mybean.maths.GoodsList" 
     scope="application"/>
<html>
  <head>
  </head>
  <body>
  我要<a href="ch5_6_buy.jsp" >查看购物车</a><br>
  <%
     ArrayList<Goods> goodsList=glApp.getGoodL();
	 out.print("<table border>");
	 out.print("<tr><td colspan=4 align=center>");
	 out.print("网上书店图书列表</td></tr>");
	 out.print("<tr><td width=40>"+"序号"+"</td>");
	 out.print("<td width=300>"+"书名"+"</td>");
	 out.print("<td width=80>"+"价格"+"</td>");
	 out.print("<td width=80>"+"购买吗？"+"</td>");
	 out.print("</tr>");
     for(Goods me:goodsList){
    	 out.print("<tr>");
         out.print("<td>" +me.getGoods_id()+"</td>");
         out.print("<td>"+me.getGoods_name()+"</td>");
         out.print("<td>"+me.getGoods_price()+"</td>");
         out.print("<td><a href='ch5_6_buy.jsp?goods_id="+
        		 me.getGoods_id()+"'>我要购买</a></td>");
         out.print("</tr>");
     }
     out.print("<table>");
  %>
  </body>
</html>
