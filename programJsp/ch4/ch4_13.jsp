<%@ page contentType="text/html;charset=GB2312" %>
<html>
<head><title>修改状态码</title></head>
<body>
<%
    response.setStatus(408);
	out.print("请求超时，页面不显示");
%>
</body></html>