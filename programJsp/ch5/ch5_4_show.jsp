<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="mybean.maths.*" %>
<html>
<head><title>��5.4 ����beanʾ�����԰�show.jsp</title>
</head>
<body>
<jsp:useBean id="peoplemess" class="mybean.maths.messList" scope="application"/>
<a href="ch5_4.jsp" >����</a>
<jsp:getProperty name="peoplemess" property="messSet"/>
<br>
<a href="ch5_4.jsp">����</a>
</body>
</html>