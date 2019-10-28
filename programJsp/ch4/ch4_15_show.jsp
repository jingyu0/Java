<%@ page contentType="text/html;charset=GB2312"%>
<%@ include file="chString.txt" %>
<html>
<head>
<title>用户登录成功</title>
</head>
<body bgcolor="#00BFFF">
<br>用户登录成功!<br>
用户登录名：<%= (String)session.getAttribute("username")%>
<br>用户登录密码：<%= (String)session.getAttribute("password")%>
<br>session对象ID：<%= session.getId()%>
</body>
</html>
