<%@ page contentType="text/html;charset=GB2312"%>
<%@ include file="chString.txt" %>
<html>
<head>
<title>�û���¼�ɹ�</title>
</head>
<body bgcolor="#00BFFF">
<br>�û���¼�ɹ�!<br>
�û���¼����<%= (String)session.getAttribute("username")%>
<br>�û���¼���룺<%= (String)session.getAttribute("password")%>
<br>session����ID��<%= session.getId()%>
</body>
</html>
