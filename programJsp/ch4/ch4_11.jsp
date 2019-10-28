<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.Date" %>
<html>
<head><title>例4.11增加refresh头示例</title>
</head>
<body>
<%
   Date date=new Date();
   response.setHeader("refresh","3");  
%>
<p>页面将每隔3秒钟刷新一次。
<p>现在的时间是：<%= date%>
</body>
</html>