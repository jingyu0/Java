<HTML>
<%@page contentType= "text/html;charset=GBK"%>
<%@page import="java.util.*,java.sql.*,java.text.*,java.sql.Date"%>
<head>
<title>�޸�����</title>
</head>
<body>
<jsp:useBean id="mydb" class="bean.ConnDB" />

<table border="0" width="100%">
	<tr>    
	<td width="100%" height="40"> </td> 
	</tr>
	<tr>    
	<td width="100%"> <p align="center"><b><font size="5" color="#FF9900">�޸�����</font></b></td> 
	</tr>
	<tr>    
	<td width="100%" height="40"> </td> 
	</tr>
</table>
<HR color="#FF9900">
<%
request.setCharacterEncoding("GBK");
String pwd=request.getParameter("pwd");
pwd=pwd.trim();
String accountNo=(String)session.getAttribute("txtAcNo");
accountNo=accountNo.trim();
int row=0;
try	
{		
	row=mydb.executeUpdate("UPDATE loginInfo set password='"+pwd+"' where accountNo='"+accountNo+"'");
	mydb.close();
}
catch(Exception e){System.err.print(e);}
if (row>0) out.println("<P><P><center>�޸ĳɹ�!�����ʹ�ø��������ṩ�ķ���!</center>");
else out.println("<P><P><center>�������ɹ���������!</center>");

%>
</body>
</HTML>
