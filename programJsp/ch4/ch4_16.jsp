<%@ page contentType="text/html;charset=GB2312"%>
<html>
<head>
<title>用户登录成功：页面1</title>
</head>
<body bgcolor="#00BFFF">
<br>url重定向示例<br>
<%
   String str=response.encodeURL("ch4_16_show.jsp?&username=admin&password=admin");
   String strapp=(String)application.getAttribute("username"); 
%>
<br>session对象ID：<%= session.getId()%>
<br>strapp:<%= strapp%>
<br><a href=<%= str%> >到ch4_16_show.jsp</a>
</body>
</html>
