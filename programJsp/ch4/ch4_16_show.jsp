<%@ page contentType="text/html;charset=GB2312"%>
<html>
<head>
<title>用户登录成功</title>
</head>
<body bgcolor="#00BFFF">
<br>url重定向示例：页面2<br>
<%
   String str=response.encodeRedirectURL("ch4_16.jsp");    
%>
<br>session对象ID：<%= session.getId()%>
<br><a href=<%= str%> >到ch4_16.jsp</a>
</body>
</html>
