<%@ page contentType="text/html;Charset=GB2312" %>
<%@ page import="mybean.maths.LoginBean" %>
<html>
<head>
<title>例5.3 bean与表单参数交互示例</title>
</head>
<body bgcolor="cyan" >
<jsp:useBean id="stu" class="mybean.maths.LoginBean" scope="page" />
<jsp:setProperty name="stu"  property="*" />
<%
   if (stu.check()){
%>
	   <h2>欢迎<jsp:getProperty name="stu" property="loginName"/>
	   进入考生报名系统。
	   </h2>
<% }
   else{
%>
       <h2>登录失败,单击<a href="javascript:history.back(-1);">这里重新登录</a></h2>
<% }
%>
<p>您登录的信息是：
<br>用户名称：
<jsp:getProperty name="stu" property="loginName"/>
<br>用户密码：
<jsp:getProperty name="stu" property="password"/>
</body>
</html>