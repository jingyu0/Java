<%@page contentType= "text/html;charset=GBK"%>
<%@page import="java.util.*,java.sql.*,java.text.*,java.sql.Date"%>
<html>
<head>
<title>�����û�¼�����Ϣ</title>
</head>
<table border="0" width="100%">
  <tr>
    <td width="75%" height="50%"><b><font size="6">��������</font></b></td>
    <td width="25%"><img border="0" src="contact.gif" width="149" height="40"></td>
  </tr>
</table>
<hr size="5" color="#FF9900">
<% request.setCharacterEncoding("GBK");%>
<jsp:useBean id="mydb" class="bean.ConnDB" />
<%!int row;%>
<%
/* ������������⣬ʹ�����´���
String username=new String(request.getParameter("username").getBytes("iso-8859-1"),"gb2312");
String company=new String(request.getParameter("company").getBytes("iso-8859-1"),"gb2312");
String phone=request.getParameter("phone");
String fax=request.getParameter("fax");
String email=request.getParameter("email");
String subject=new String(request.getParameter("subject").getBytes("iso-8859-1"),"gb2312");
String comment=new String(request.getParameter("comment").getBytes("iso-8859-1"),"gb2312");
*/
String username=request.getParameter("username");
String company=request.getParameter("company");
String phone=request.getParameter("phone");
String fax=request.getParameter("fax");
String email=request.getParameter("email");
String subject=request.getParameter("subject");
String comment=request.getParameter("comment");
try	
{	
	 PreparedStatement  stmt=mydb.prepareStatement("INSERT INTO  ContactInfo VALUES(?,?,?,?,?,?,?)");
	stmt.setString(1,username);
	stmt.setString(2,company);
	stmt.setString(3,phone);
	stmt.setString(4,fax);
	stmt.setString(5,email);
	stmt.setString(6,subject);
	stmt.setString(7,comment);
	row=stmt.executeUpdate();

	mydb.close();
}
catch(Exception e){System.err.print(e);}

if (row>0)
{
%>
���ύ����Ϣ�Ѿ��ɹ��ر��浽���ݿ��У�лл��Ļݹˣ�
<p>
<CENTER>
<A href="javascript:history.back();">����</A>
<A href="Home_page.html">��ҳ</A>
</CENTER>
<%
}
else
{
%>
<CENTER>
<H3>����ĳ�ֹ��ϣ����ύ����Ϣû�б���ɹ������Ժ����ԣ�<H3>
<P><A href="javascript:history.back();">����</A>
<A href="Home_page.html">��ҳ</A>
</CENTER>
<%
}
%>

</BODY>
</HTML>

