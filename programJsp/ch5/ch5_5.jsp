<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="mybean.maths.CounterBean" %>
<%@ page import="mybean.maths.CountPeople" %>
<jsp:useBean id="countA" class="mybean.maths.CounterBean" scope="application" />
<jsp:useBean id="countS" class="mybean.maths.CountPeople" scope="session"/>
<html>
<head><title>例5.5 计数器bean</title>
</head>
<body bgcolor="yellow"> <font size="3">
<%  long num;
    num=countS.getCount(countA);
%>
    <p>欢迎您访问本站，这是本站的ch5_5.jsp页面
    <br>您是第<%= num%>
	访问者。
	<br><a href="ch5_5_two.jsp">欢迎您区ch5_5_two.jsp页面</a>
</font>
</body>
</html>