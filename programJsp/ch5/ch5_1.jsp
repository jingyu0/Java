<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="mybean.maths.MyRectangle" %>
<html>
<head>
<title>��5.1һ��bean��ʾ��</title>
</head>
<body bgcolor="cyan" >
<jsp:useBean id="myrectangle" class="mybean.maths.MyRectangle" scope="page" />
<%  //���þ��γ�
    myrectangle.setLength(2);
	//���þ��ο�
    myrectangle.setWidth(4);
%>
<p>getProperty����������ε�����ǣ�
<jsp:getProperty name="myrectangle" property="area"/>
<p>���ʽ������ε�����ǣ�
<%= myrectangle.getArea() %>
</body>
</html>