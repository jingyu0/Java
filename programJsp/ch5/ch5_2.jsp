<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="mybean.maths.Student" %>
<html>
<head>
<title>例5.2 setProperty动作指令示例</title>
</head>
<body bgcolor="cyan" >
<jsp:useBean id="stu" class="mybean.maths.Student" scope="page" />
<%
   long number=12345;
%>
<jsp:setProperty name="stu" property="name" value="杨得力"/>
<jsp:setProperty name="stu" property="sex" value="男"/>
<jsp:setProperty name="stu" property="number" value="<%= number%>"/>
<jsp:setProperty name="stu" property="height" value="<%= 170%>"/>
<jsp:setProperty name="stu" property="weight" value="80"/>
<p>getProperty动作指令输出学生信息：
<br>学生姓名：
<jsp:getProperty name="stu" property="name"/>
<br>学生学号：
<jsp:getProperty name="stu" property="number"/>
<br>学生性别：
<jsp:getProperty name="stu" property="sex"/>
<br>学生身高：
<jsp:getProperty name="stu" property="height"/>
<br>学生体重：
<jsp:getProperty name="stu" property="weight"/>
</body>
</html>