<HTML>
<BODY BGCOLOR="#FFFFFF">
<%@page contentType= "text/html;charset=GBK"%>
<%@page import="java.util.*,java.sql.*,java.text.*,java.sql.Date"%>
<jsp:useBean id="db" class="bean.ConnDB" scope="session"/>
<!-flag标识输入的信息是否与数据库保存的信息匹配，0-不匹配，1-匹配>
<%! int flag=0;%>		
<%	
	//从请求变量txtAcNo获取输入的帐号
	String actNumber=(String)request.getParameter("txtAcNo");
	//从请求变量txtPwd获取输入的密码
	String password=(String)request.getParameter("txtPwd");
	actNumber=actNumber.trim();
	password=password.trim();
try	
{		
	//访问数据库，以帐号为关键字查询用户输入的帐号与密码是否与表
	//AccountNo中的一致
	String strQuery="select * from LoginInfo where AccountNo='"+actNumber+"'";
	ResultSet rs=db.executeQuery(strQuery);
	String pwd;
	while(rs.next())
	{
		pwd=(String)rs.getString("password");
		pwd=pwd.trim();
		//如果密码也一样，则设置flag=1，表示登录成功
		if( (pwd.equals(password))&& (pwd.length()!=0))
		{
			flag=1;
			break;
		}
	}
	rs.close();
	db.close();
}
catch(Exception e){System.err.print(e);}
//如果登录成功，则跳转到个人银行页面
if (flag==1)
{
%>
	<jsp:forward page="person_bank.jsp" />
<%
}
%>
<!-下面的代码在登录不成功时才执行，即生成图8-4页面>
<center>
<p><font  color="#FF0000">你的登录信息有误！
<a href="javaScript:history.back();">返回</A>
</center>
</BODY>
</HTML>

