<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="mybean.maths.MyRectangle" %>
<html>
<head>
<title>例5.1一个bean的示例</title>
</head>
<body bgcolor="cyan" >
<jsp:useBean id="myrectangle" class="mybean.maths.MyRectangle" scope="page" />
<%  //设置矩形长
    myrectangle.setLength(2);
	//设置矩形宽
    myrectangle.setWidth(4);
%>
<p>getProperty动作输出矩形的面积是：
<jsp:getProperty name="myrectangle" property="area"/>
<p>表达式输出矩形的面积是：
<%= myrectangle.getArea() %>
</body>
</html>