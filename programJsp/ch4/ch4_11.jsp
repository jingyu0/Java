<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.Date" %>
<html>
<head><title>��4.11����refreshͷʾ��</title>
</head>
<body>
<%
   Date date=new Date();
   response.setHeader("refresh","3");  
%>
<p>ҳ�潫ÿ��3����ˢ��һ�Ρ�
<p>���ڵ�ʱ���ǣ�<%= date%>
</body>
</html>