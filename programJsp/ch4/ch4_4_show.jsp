<%@ page contentType="text/html;charset=GB2312" %>
<%@ include file="chString.txt" %>
<html>
<head>
<title>例4.4汉字处理示例</title>
</head>
<body bgcolor="cyan">
<% String strName=request.getParameter("strName");
   String strPassword=request.getParameter("strPassword");
   if (strName==null)
   {  strName="";
   }
   if(strPassword==null)
   {  strPassword="";
   }
   strName=chString(strName);
   strPassword=chString(strPassword);
%>
<p>您注册的会员名是：<%= strName %>
<p>您的密码是：<%= strPassword %>
</body>
</html>