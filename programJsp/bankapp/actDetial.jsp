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
<center><font size="4"><b>�ʽ���ˮ<b></font></center>
<table border="0" width="95%" height="21">
	<tR>
	<td >������<%=ownerName%></td>
	<td >�ʺţ�<%=actNumber%></td>
	<td>��<%=balance%> </td>
</tR>

<center><font size="4"><b>�ʽ���ˮ<b></font></center>
<table border="1" width="95%" height="21">
	<tR>
	<td >��������</td>
	<td >ȡ���ܶ�</td>
	<td>����ܶ� </td>
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
		out.println(rs1.getDate("transDate"));
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
</body>
</html>
</BODY>
</HTML>



