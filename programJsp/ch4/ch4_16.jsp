<%@ page contentType="text/html;charset=GB2312"%>
<html>
<head>
<title>�û���¼�ɹ���ҳ��1</title>
</head>
<body bgcolor="#00BFFF">
<br>url�ض���ʾ��<br>
<%
   String str=response.encodeURL("ch4_16_show.jsp?&username=admin&password=admin");
   String strapp=(String)application.getAttribute("username"); 
%>
<br>session����ID��<%= session.getId()%>
<br>strapp:<%= strapp%>
<br><a href=<%= str%> >��ch4_16_show.jsp</a>
</body>
</html>
