<HTML>
<%@page contentType= "text/html;charset=GBK"%>
<HEAD>
<title>��֧���</title>
</HEAD>
<BODY BGCOLOR="#FFFFFF">
<%@page import="java.util.*,java.sql.*,java.text.*,java.sql.Date"%>
<jsp:useBean id="db" class="bean.ConnDB" scope="session"/>
<%! 	String actNumber,ownerName;
        float balance;
        float debit;
        float credit;

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

		ownerName=rs1.getString("ownerName");
		balance=rs1.getFloat("balance");
		break;
	}
	rs1.close();
	db.close();
}
catch(Exception e){System.err.print(e+"error1");}
try
{
	String strQuery1="select * from TransCounterInfo where AccountNo='"+actNumber+"'";
        debit=0;
        credit=0;
	ResultSet rs1=db.executeQuery(strQuery1);
	while(rs1.next())
	{
debit+=rs1.getFloat("DebitAmount");
credit+=rs1.getFloat("CreditAmount");
	}
	rs1.close();
	db.close();
}
catch(Exception e){}

%>
<center>
<table border="0">
<TR></TR>
<TR><TD>
<font size="5"><b>�ʻ���֧���<b></font></center></TD></TR>
<table border="0" width="95%" height="21">
        <tr height="10"></tr>
	<tR><td ><font size="2">������<%=ownerName%></font></td></TR>
	<tR><td ><font size="2">�ʺţ�<%=actNumber%></font></td></TR>
	<tR><td><font size="2">��<%=balance%></font> </td></TR>
</table>
<HR color="#FF9900" size="5">
<table>
<tr><td></td></tr>
<tr height="50"></tr>
<tr><td>���ʻ�һ������<%=credit%></td></tr>
<tr><td>���ʻ�һ��֧ȡ<%=debit%></td></tr>
<tr height="50"></tr>
</table>
<HR color="#FF9900" size="5">

</body>
</html>
</BODY>
</HTML>























