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
  ��Ҫ<a href="ch5_6_buy.jsp" >�鿴���ﳵ</a><br>
  <%
     ArrayList<Goods> goodsList=glApp.getGoodL();
	 out.print("<table border>");
	 out.print("<tr><td colspan=4 align=center>");
	 out.print("�������ͼ���б�</td></tr>");
	 out.print("<tr><td width=40>"+"���"+"</td>");
	 out.print("<td width=300>"+"����"+"</td>");
	 out.print("<td width=80>"+"�۸�"+"</td>");
	 out.print("<td width=80>"+"������"+"</td>");
	 out.print("</tr>");
     for(Goods me:goodsList){
    	 out.print("<tr>");
         out.print("<td>" +me.getGoods_id()+"</td>");
         out.print("<td>"+me.getGoods_name()+"</td>");
         out.print("<td>"+me.getGoods_price()+"</td>");
         out.print("<td><a href='ch5_6_buy.jsp?goods_id="+
        		 me.getGoods_id()+"'>��Ҫ����</a></td>");
         out.print("</tr>");
     }
     out.print("<table>");
  %>
  </body>
</html>
