<%@ page contentType="text/html;charset=GB2312"%>
<html>
<head>
<title>�û���¼�ɹ�</title>
</head>
<body bgcolor="#00BFFF">
<br>url�ض���ʾ����ҳ��2<br>
<%
   String str=response.encodeRedirectURL("ch4_16.jsp");    
%>
<br>session����ID��<%= session.getId()%>
<br><a href=<%= str%> >��ch4_16.jsp</a>
</body>
</html>
