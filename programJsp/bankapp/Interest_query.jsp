<%@page contentType="text/html;charset=GBK"%>
<%@page language="java" import="java.sql.*"%>
<jsp:useBean id="db" class="bean.ConnDB" scope="page"/>
<html>
<body>
<table border="0" width="100%">
	<tr>    
	<td width="100%"> <p align="center"><b><font size="5" color="#FF9900">利率查询</font></b></td> 
	</tr>
</table>
<HR color="#FF9900">
<p>
<%! float rate; 
    double interest; 
    int per;   
    String cur;%>
<% 
request.setCharacterEncoding("GBK");
per=Integer.parseInt(request.getParameter("period"));
cur=(String)(request.getParameter("currency"));
try{	
	String strQuery="select * from interest where currency='"+cur+"' and period="+per;	
	ResultSet rs=db.executeQuery(strQuery);	
	while(rs.next())
	{		
		rate=rs.getFloat("rate");	
	}  
	db.close();
}catch(Exception e){}%>   
<p>  币种：<%=cur%>
<p>  存期：<%=per%> (月)
<p>  利率：<%=rate%><p>  
 <p><HR color="#FF9900">
</body>
</html>

