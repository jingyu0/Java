<%@page contentType= "text/html;charset=GBK"%>
<%@page import="java.util.*,java.sql.*,java.text.*,java.sql.Date"%>
<html>
<head>
<title>保存开户申请信息</title>
</head>
<% request.setCharacterEncoding("GBK");%>
<jsp:useBean id="myBean" class="bean.ReqBean" scope="session"/>
<jsp:setProperty name="myBean" property="*" /><p>
<jsp:useBean id="mydb" class="bean.ConnDB" />
<%!int row;%>
<%
String ownerName=myBean.getOwnerName();
String idNo=myBean.getIdNo();
String branch=myBean.getBranch();
String accountType=myBean.getAccountType();
String address=myBean.getAddress();
String phone=myBean.getPhone();
String mail=myBean.getMail();
try	
{	int reqNum=0;	
	ResultSet rs=mydb.executeQuery("select * from reqNum");
	while(rs.next())
	{
		reqNum=rs.getInt("reqnum");
	}
	mydb.executeUpdate("UPDATE reqNum set reqnum=reqnum+1");
	rs.close();
	mydb.close();
//	 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
//	 Connection conn=DriverManager.getConnection("jdbc:odbc:bank");
//	 PreparedStatement  stmt=conn.prepareStatement("INSERT INTO  AccountReq VALUES(?,?,?,?,?,?,?,?)");
	 PreparedStatement  stmt=mydb.prepareStatement("INSERT INTO  AccountReq VALUES(?,?,?,?,?,?,?,?)");
	stmt.setInt(1,reqNum);
	stmt.setString(2,ownerName);
	stmt.setString(3,idNo);
	stmt.setString(4,branch);
	stmt.setString(5,accountType);
	stmt.setString(6,address);
	stmt.setString(7,phone);
	stmt.setString(8, mail);
	row=stmt.executeUpdate();

	mydb.close();
}
catch(Exception e){System.err.print(e);}

if (row>0)
{
%>
你的下列开户申请信息已经成功地保存到数据库中！谢谢你的申请！我们将尽快派业务员与你联系帮你办理正式开户手续！

<%
}
else
{
%>
<CENTER>
<H3>由于某种故障，你的请求未提交成功，请按"返回"重新提交！<H3>
<A href="javascript:history.back();">返回</A>
<%
}
%>
<CENTER>
<A href="Home_page.html">联合银行首页</A>
</CENTER>
</BODY>
</HTML>

