<%@ page contentType="text/html; charset=gb2312"  %>
<html>
<head>
<title>例4.14session对象id示例</title>
</head>
<body bgcolor="#55FFFF">
<%
   String strSessionID=session.getId();
   boolean boo=session.isNew();
   session.setMaxInactiveInterval(15);
%>
<p>我是页面ch4_12_1.jsp
<br>session对象的ID是：
<%= strSessionID %>
<br>是否新创建的session对象：<%= boo%>
<%
   out.print("<br>允许的最长发呆时间为："+session.getMaxInactiveInterval());
%>
<br><a href="ch4_14_2.jsp" >到ch4_14_2.jsp页面</a>
   
</body>
</html>
