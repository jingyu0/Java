<HTML>
<%@page contentType= "text/html;charset=GBK"%>
<HEAD>
<title>�ʻ�ϸ��</title>
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
		//out.print("<p><font size=\"3\">����:");
		ownerName=rs1.getString("ownerName");
		//out.print("�ʺ�:");
	//out.print(actNumber+"<br>");
		//out.print("��");
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
<font size="5"><b>�ʻ���ϸ<b></font></center></TD></TR>
<table border="0" width="95%" height="21">
        <tr height="10"></tr>
	<tR><td ><font size="2">������<%=ownerName%></font></td></TR>
	<tR><td ><font size="2">�ʺţ�<%=actNumber%></font></td></TR>
	<tR><td><font size="2">��<%=balance%></font> </td></TR>
</table>

<HR color="#FF9900" size="5">
<table border="0" width="95%" height="21">
	<TR>
	
	<TD ><font size="3"><B>��������</b></font></TD>
	<TD ><font size="3"><B>ȡ���ܶ�</b></font></TD>
	<TD><font size="3"><B>����ܶ� </b></font></TD>
	
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























