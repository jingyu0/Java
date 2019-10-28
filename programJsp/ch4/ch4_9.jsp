<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*"%>
<%@ include file="chString.txt" %>
<html>
<head>
<title>例4.9request对象常用方法示例</title>
</head>
<body bgcolor="cyan">
<form method="post" action="" name="form1">
      <p>输入学生姓名：
      <input type="text" name="stuName" value="yang" size="8">
      <p>输入学生密码：
      <input type="text" name="stuPassword" value="yang" size="8">
      <br>
      <input type="submit" name="submit" value="提交">
</form>

<% String strMethod=request.getMethod();
   String strProtocol=request.getProtocol(); 
   String strServerPath=request.getServletPath();
   String strClientIP=request.getRemoteAddr();
   String strServerName=request.getServerName();
   int iServerPort=request.getServerPort();
   out.print("<p><font color=red>□□</font>");
   out.print("请求行:");
   out.print(strMethod);
   out.print(strServerPath+"/");
   out.print(strProtocol);
   out.print("<p>客户端ip地址：");
   out.print(strClientIP+"<br>");
   out.print("服务器名称：");
   out.print(strServerName+"<br>");
   out.print("端口号：");
   out.print(iServerPort);
   out.print("<p>下面显示的是头名字及其值，显示格式“□□头名:头值”：<br>");
   Enumeration enumHeaderNames=request.getHeaderNames(); 
   while(enumHeaderNames.hasMoreElements()) 
   { 
      String strn=(String)enumHeaderNames.nextElement(); 
	  String strv=request.getHeader(strn);
	  out.print("<font color=red>□□</font>");
	  out.println(strn+":"+strv); 
   }
   Enumeration enumFormParaNames=request.getParameterNames();
   out.print("<p>显示表单参数及其值，显示格式“□□参数名:参数值”的格式。<br>");
   while(enumFormParaNames.hasMoreElements())
   {
      String strn=(String)enumFormParaNames.nextElement();
	  String strv=chString(request.getParameter(strn));
	  out.print("<font color=red>□□</font>");
	  out.print(strn+":" +strv+"&nbsp;&nbsp;");
   }
%>
</body>
</html>