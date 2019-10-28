<HTML>
<%@page contentType= "text/html;charset=GBK"%>
<HEAD>
<title>帐户细节</title>
</HEAD>
<BODY BGCOLOR="#FFFFFF">
<%@page import="java.util.*,java.sql.*,java.text.*,java.sql.Date"%>
<jsp:useBean id="db" class="bean.ConnDB" scope="session"/>
<%! 	String actNumber,ownerName;
        float balance;
%>
<%
	String actNumber=(String)session.getAttribute("txtAcNo");
	actNumber=actNumber.trim();
try
{
	String strQuery1="select * from AccountInfo where AccountNo='"+actNumber+"'";
	ResultSet rs1=db.executeQuery(strQuery1);
	while(rs1.next())
	{
		//out.print("<p><font size=\"3\">户名:");
		ownerName=rs1.getString("ownerName");
		//out.print("帐号:");
	//out.print(actNumber+"<br>");
		//out.print("余额：");
		balance=rs1.getFloat("balance");
		//out.print("</font>");
		break;
	}
	rs1.close();
	db.close();
}
catch(Exception e){System.err.print(e+"error1");}
%>
<center>
<table border="0">
<TR></TR>
<TR><TD>
<font size="5"><b>帐户明细<b></font></center></TD></TR>
<table border="0" width="95%" height="21">
        <tr height="10"></tr>
	<tR><td ><font size="2">户名：<%=ownerName%></font></td></TR>
	<tR><td ><font size="2">帐号：<%=actNumber%></font></td></TR>
	<tR><td><font size="2">余额：<%=balance%></font> </td></TR>
</table>

<HR color="#FF9900" size="5">
<table border="0" width="95%" height="21">
	<TR>
	
	<TD ><font size="3"><B>发生日期</b></font></TD>
	<TD ><font size="3"><B>取款总额</b></font></TD>
	<TD><font size="3"><B>存款总额 </b></font></TD>
	
</tR>
<%
try
{
	String strQuery1="select * from TransCounterInfo where AccountNo='"+actNumber+"'";
	ResultSet rs1=db.executeQuery(strQuery1);
	while(rs1.next())
	{
		out.println("<tr>");
		out.println("<td> ");
		out.println(rs1.getString("transDate"));
		out.println("</td>");
		out.println("<td>");
		out.println(rs1.getFloat("DebitAmount"));
		out.println("</td>");
		out.println("<td> ");
		out.println(rs1.getFloat("CreditAmount"));
		out.println("</td>");
		out.println("</tr>");
	}
	rs1.close();
	db.close();
}
catch(Exception e){}
%>
</table>
<HR color="#FF9900" size="5">


</body>
</html>
</BODY>
</HTML>























