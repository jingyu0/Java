<%@page contentType="text/html;charset=GBK"%>
<%@page language="java" import="java.sql.*"%>
<jsp:useBean id="db" class="bean.ConnDB" scope="page"/>
<html>
<body>
<table border="0" width="100%" height="44">
  <tr>
    <td height="40">
      <p align="center"><b><font size="5" color="#FF9900">���Ҷһ�������</font></b></td>
  </tr>
</table>
<HR color="#FF9900">
<%! float rate; 
    double amt; 
    String fromCur; 
    String toCur;
    double result;%>
<% 
request.setCharacterEncoding("GBK");
amt=Double.parseDouble(request.getParameter("amount"));
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
	result=(long)(rate*amt*100)/100; 
}catch(Exception e){}%>   

<p> <%=fromCur%> �һ���<%=toCur%>
<p>  �һ��ʣ�<%=rate%>
<p>  �һ�������<%=amt%>     
<p>  �һ������<%=result%>
  <HR color="#FF9900">
 </body>
</html>

