<%@ page contentType="text/html; charset=gb2312"  %>
<html>
<head>
<title>��4.14session����idʾ��</title>
</head>
<body bgcolor="#55FFFF">
<%
   String strSessionID=session.getId();
   boolean boo=session.isNew();
   session.setMaxInactiveInterval(15);
%>
<p>����ҳ��ch4_12_1.jsp
<br>session�����ID�ǣ�
<%= strSessionID %>
<br>�Ƿ��´�����session����<%= boo%>
<%
   out.print("<br>����������ʱ��Ϊ��"+session.getMaxInactiveInterval());
%>
<br><a href="ch4_14_2.jsp" >��ch4_14_2.jspҳ��</a>
   
</body>
</html>
