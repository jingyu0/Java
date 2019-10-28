<%@ page contentType="text/html;charset=GB2312"%>
<%@ include file="chString.txt" %>
<html>
<head>
<title>例4.15保存登录的用户名</title>
</head>
<body bgcolor="#00BFFF">
<%
   String strUserName=request.getParameter("userName");
   String strPassword=request.getParameter("password");
   String strSessionID=session.getId();
   if (strUserName==null){
       strUserName="";
   }
   if(strPassword==null){
       strPassword="";
   }
   //登录成功后保存用户名，跳转到某页面
   if(strUserName!=""&&strPassword!=""){
      session.setAttribute("username",chString(strUserName));
	  session.setAttribute("password",chString(strPassword));
	  response.sendRedirect("ch4_15_show.jsp");
   }
%>
<form method="post" action="ch4_15.jsp" name="form1" >
   <br>用户登录：
   <input type="text" name="userName" size="20">
   <br>用户密码：
   <input type="password" name="password" size="20">
   <br>提交或重置：
   <input type="submit" name="submit"  value="提交" >
   <input type="reset" name="reset" value="重置" >
</form>
<%= strSessionID %>
</body>
</html>
