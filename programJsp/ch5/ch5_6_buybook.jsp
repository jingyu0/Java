<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
</head>
<body bgcolor="yellow"> <font size="3">
<%  long num;
    num=countS.getCount(countA);
%>
    <p>欢迎您访问本站，这是本站的ch5_5_two.jsp页面
    <br>您是第<%= num%>
	访问者。
	<br><a href="ch5_5.jsp"> 欢迎您去ch5_5.jsp页面</a>
</font>
</body>
</html>