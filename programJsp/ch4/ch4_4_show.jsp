<%@ page contentType="text/html;charset=GB2312" %>
<%@ include file="chString.txt" %>
<html>
<head>
<title>��4.4���ִ���ʾ��</title>
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
<p>��ע��Ļ�Ա���ǣ�<%= strName %>
<p>���������ǣ�<%= strPassword %>
</body>
</html>