<%@ page contentType="text/html;charset=GB2312" %>
<html>
<head><title>页面重定向示例</title></head>
<body>
<%
    String str=request.getParameter("userName");
	if(str==null){
	   str="";
	}
	if(str.length()<=0)
	   response.sendRedirect("ch4_12_show.jsp");
	else
	   out.print("欢迎"+str+"您来到测试页面！");
%>
</body></html>