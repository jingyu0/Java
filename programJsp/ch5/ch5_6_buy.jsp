<%@ page language="java" contentType="text/html;charset=GB2312"%>
<%@ page import="java.util.*"%>
<%@ page import="mybean.maths.GoodsList" %>
<%@ page import="mybean.maths.Goods" %>
<%@ page import="mybean.maths.shoppingCart" %>
<jsp:useBean id="glApp" class="mybean.maths.GoodsList"
     scope="application"/>
<jsp:useBean id="spcart" class="mybean.maths.shoppingCart"
     scope="session"/>
<%!
    public String handleString(String s){
	  String str=s;
	  try{
		 byte b[]=str.getBytes("ISO-8859-1");
	     str=new String(b);
	  }
	  catch(Exception ee){}		
	    return str;
    }
    public Goods searchGood(ArrayList<Goods> goodsList,
    		String goods_id){
    	 Goods gds=null;
   	     for(Goods me:goodsList){
	    	 if(goods_id.equals(me.getGoods_id())){
	    		 gds=me;
	    		 break;
	    	}
	     }
   	     return gds;
    }
%>
<html>
  <head>
  </head>
  <body>
  ��Ҫ<a href="ch5_6_book.jsp" >��������</a><br>
  <%
     ArrayList<Goods> goodsList=glApp.getGoodL();
     Goods gds=null;
     if(request.getParameter("goods_id")!=null){
    	 String goods_id=request.getParameter("goods_id");
    	 out.print("<table border>");
    	 out.print("<tr><td colspan=4 align=center>");
    	 out.print("��Ҫ������ǣ�</td></tr>");
    	 out.print("<tr>");
    	     out.print("<td width=40>���</td>");
    	     out.print("<td width=300>����</td>");
    	     out.print("<td width=80>����</td>");
    	     out.print("<td width=100>����</td>");
    	 out.print("</tr>");
    	 gds=searchGood(goodsList,goods_id);    			
    	 out.print("<tr>");
    	     out.print("<td>"+goods_id+"</td>");
    	     out.print("<td>"+gds.getGoods_name()+"</td>");
    	     out.print("<td>"+gds.getGoods_price()+"</td>");
    	     out.print("<form action=ch5_6_add.jsp method=post>");
    	     out.print("<td>"+"<input type=input name=book_count size=6>");
    	     out.print("<input type=hidden name=goods_id value="+goods_id+">");
    	     out.print("<input type=submit name=submit value=�ύ></td></form>");
    	     out.print("</tr>");
    	     out.print("</table>");
     }
     double all_price=0;
     out.print("<table border>");
     out.print("<tr><td colspan=7 align=center>");
     out.print("���Ĺ��ﳵ����������Ŀ��</td></tr>");
     out.print("<tr>");
         out.print("<td width=40>���</td>");
         out.print("<td width=300>����</td>");
         out.print("<td width=80>��Ŀ</td>");
         out.print("<td width=80>����</td>");
         out.print("<td width=80>�ܼ�</td>");
         out.print("<td width=100>ɾ��</td>");
         out.print("<td width=100>����</td>");
     out.print("</tr>");
     Hashtable<String, Integer> list=spcart.listMyGoods();     
     Enumeration<String> enumkeys=list.keys();
     while(enumkeys.hasMoreElements()){
    	 String goods=(String)enumkeys.nextElement();
    	 goods=handleString(goods);
    	 out.print("<tr>");
    	    out.print("<td>"+goods+"</td>");
    	    gds=searchGood(goodsList,goods);
    	    out.print("<td>"+gds.getGoods_name()+"</td>");
    	    out.print("<td>"+list.get(goods)+"</td>");
    	    out.print("<td>"+gds.getGoods_price()+"</td>");
    	    out.print("<td>");
    	    out.print(gds.getGoods_price()*list.get(goods)+"</td>");
    	    out.print("<td> <a href='ch5_6_delete.jsp?goods_id=");
    	    out.print(goods+"'>�ӹ��ﳵ��ɾ��</a></td>");
    	    out.print("<form action=ch5_6_minus.jsp method=post>");
    	    out.print("<td>"+"<input type=input name=book_count size=6>");
    	    out.print("<input type=hidden name=goods_id value="+goods+">");
    	    out.print("<input type=submit value=�ύ></td></form>");
    	    out.print("</tr>");
    	    all_price=all_price+list.get(goods)*gds.getGoods_price();
     }
     out.print("<tr>");
         out.print("<td colspan=4 align=center>"+"�ܼ�Ϊ:"+"</td>");
         out.print("<td>"+all_price+"</td><td>&nbsp;</td><td>&nbsp;</td>");
     out.print("</tr>");
     out.print("</table>");
  %>
  </body>
</html>
