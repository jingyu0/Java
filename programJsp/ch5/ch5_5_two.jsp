<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="mybean.maths.CounterBean" %>
<%@ page import="mybean.maths.CountPeople" %>
<jsp:useBean id="countA" class="mybean.maths.CounterBean" scope="application" />
<jsp:useBean id="countS" class="mybean.maths.CountPeople" scope="session"/>
<html>
<head><title>��5.5 ������bean</title>
</head>
<body bgcolor="yellow"> <font size="3">
<%  long num;
    num=countS.getCount(countA);
%>
    <p>��ӭ�����ʱ�վ�����Ǳ�վ��ch5_5_two.jspҳ��
    <br>���ǵ�<%= num%>
	�����ߡ�
	<br><a href="ch5_5.jsp"> ��ӭ��ȥch5_5.jspҳ��</a>
</font>
</body>
</html>