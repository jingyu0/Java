<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<html>
<head>
   <title>JSP:FORWARDת���ҳ��</title>
</head>
<body background="cyan" >
  <%
    String str=request.getParameter("hello");
  %>
  <font size="5" color="red">
     <%=str%>
  </font>
</body>
</html>