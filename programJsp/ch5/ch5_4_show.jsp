<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="mybean.maths.*" %>
<html>
<head><title>Àı5.4 ¸¨ÖúbeanÊ¾ÀıÁôÑÔ°åshow.jsp</title>
</head>
<body>
<jsp:useBean id="peoplemess" class="mybean.maths.messList" scope="application"/>
<a href="ch5_4.jsp" >·µ»Ø</a>
<jsp:getProperty name="peoplemess" property="messSet"/>
<br>
<a href="ch5_4.jsp">·µ»Ø</a>
</body>
</html>