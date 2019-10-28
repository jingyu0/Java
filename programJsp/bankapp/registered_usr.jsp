<html>
<%@ page contentType="text/html;charset=GBK"%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>已开户用户注册界面</title>


</head>

<body>

<table border="0" width="100%">
  <tr>
    <td width="50%"><b><i><font size="5">联合银行</font></i></b></td>
    <td width="50%">　</td>
  </tr>
  <tr>
    <td width="100%" colspan="2">
    </td>
  </tr>
</table>
<p align="left">&nbsp;&nbsp;&nbsp; </p>
<%! int ctr=0;
int flag=0;
int flag1=0;
int flag2=0;
%>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.sql.Date"%>
<%@ page language="java"%>
<%

try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection conn1,conn2;
	conn1=DriverManager.getConnection("jdbc:odbc:bank");
        Statement stmt1,stmt2;
	String str1,str2,str3,str4;

	str2=(String)request.getParameter("acNo");

	stmt1=conn1.createStatement();
	String strQuery1="select * from LoginInfo";
	ResultSet rs1=stmt1.executeQuery(strQuery1);

	while(rs1.next())
	{
		str1=(String)rs1.getString("accountNo");
		str1=str1.trim();
		str2=str2.trim();
		if(str2.equals(str1))
		{
			flag=1;
			out.println("found");
			break;
		}
	}
	out.println("flag"+flag);
	conn1.close();
	conn2=DriverManager.getConnection("jdbc:odbc:bank");

	stmt2=conn2.createStatement();
	String strQuery2="select * from AccountInfo where accountNo='"+str2+"'";
	String branch,acType,name,branchT,acTypeT,nameT;
	branch=request.getParameter("branch");
	branch=branch.trim();
	acType=request.getParameter("acType");
	acType=acType.trim();
	name=request.getParameter("name");
	name=name.trim();
	ResultSet rs2=stmt2.executeQuery(strQuery2);
	while(rs2.next())
	{
		nameT=rs2.getString("name");
		nameT=nameT.trim();
		acTypeT=rs2.getString("accountType");
		acTypeT=acTypeT.trim();
		branchT=rs2.getString("branch");
		branchT=branchT.trim();
		if((branch.equals(branchT))&&(acType.equals(acTypeT))&&(name.equals(nameT)))
		{
			ctr=1;
			flag1=2;
			break;
		}
		out.println(flag1);
	}
        conn1.close();

	if((flag!=1)&&(flag1==2))
	{
		conn1=DriverManager.getConnection("jdbc:odbc:bank","sa","");
		String pwd=request.getParameter("pwd");
		PreparedStatement stmt3=conn1.prepareStatement("insert into LoginInfo values(?,?)");
		stmt3.setString(1,str2);
		stmt3.setString(2,pwd);
		stmt3.executeUpdate();
		out.println("祝贺你!你已经完成在线注册！单击\'登录\'按钮可登录并查询你的帐户资金流水细节。");
	%>
	<input type="button" value="登录" name="login" onClick="login()">
	<%
	}
	else
	{
		out.println("<b>");
		out.println("抱歉，你的请求被拒绝。可能你已经注册或你提供的信息和数据库不一致!");
	}
	}catch(Exception e)
	{
		out.println("出现异常"+e);
	}
	%>
	</p>
	<p><input type="button" value="返回注册页面" name="back" onClick=""goBack()">&nbsp;&nbsp;
	   <input type="button" value="取消" name="cancel" onClick="goHome()"></p>

<SCRIPT>
function goBack()
{
	open("Registered_usr_page.html");
}

function goHome()
{
	open("Home_page.html");
}

</script>

</body>

</html>
