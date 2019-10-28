<%@page contentType="text/html;charset=GBK"%>
<%@page language="java" import="java.sql.*"%>
<jsp:useBean id="db" class="bean.ConnDB" scope="page"/>
<html>
<body>
<table border="0" width="100%" height="44">
  <tr>
    <td height="40">
      <p align="center"><b><font size="5" color="#FF9900">货币兑换率查询</font></b></td>
  </tr>
</table>
<HR color="#FF9900">
<%! float rate; 
     String fromCur; 
    String toCur;
  %>
<% 
request.setCharacterEncoding("GBK");
fromCur=(String)(request.getParameter("FromCur"));
fromCur.trim();
toCur=(String)(request.getParameter("ToCur"));
toCur.trim();
try{	
	String strQuery="select * from exchange where FromCur='"+fromCur+"' and ToCur='"+toCur+"'";	
	ResultSet rs=db.executeQuery(strQuery);	
	while(rs.next())
	{		
		rate=rs.getFloat("rate");	
	}  
}catch(Exception e){}%>   

<p> <%=fromCur%> 兑换成<%=toCur%>
<p>  兑换率：<%=rate%>     
 <HR color="#FF9900">
</body>
</html>

