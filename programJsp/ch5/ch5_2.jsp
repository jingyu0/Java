<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="mybean.maths.Student" %>
<html>
<head>
<title>��5.2 setProperty����ָ��ʾ��</title>
</head>
<body bgcolor="cyan" >
<jsp:useBean id="stu" class="mybean.maths.Student" scope="page" />
<%
   long number=12345;
%>
<jsp:setProperty name="stu" property="name" value="�����"/>
<jsp:setProperty name="stu" property="sex" value="��"/>
<jsp:setProperty name="stu" property="number" value="<%= number%>"/>
<jsp:setProperty name="stu" property="height" value="<%= 170%>"/>
<jsp:setProperty name="stu" property="weight" value="80"/>
<p>getProperty����ָ�����ѧ����Ϣ��
<br>ѧ��������
<jsp:getProperty name="stu" property="name"/>
<br>ѧ��ѧ�ţ�
<jsp:getProperty name="stu" property="number"/>
<br>ѧ���Ա�
<jsp:getProperty name="stu" property="sex"/>
<br>ѧ����ߣ�
<jsp:getProperty name="stu" property="height"/>
<br>ѧ�����أ�
<jsp:getProperty name="stu" property="weight"/>
</body>
</html>