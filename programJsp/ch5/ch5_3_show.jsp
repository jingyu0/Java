<%@ page contentType="text/html;Charset=GB2312" %>
<%@ page import="mybean.maths.LoginBean" %>
<html>
<head>
<title>��5.3 bean�����������ʾ��</title>
</head>
<body bgcolor="cyan" >
<jsp:useBean id="stu" class="mybean.maths.LoginBean" scope="page" />
<jsp:setProperty name="stu"  property="*" />
<%
   if (stu.check()){
%>
	   <h2>��ӭ<jsp:getProperty name="stu" property="loginName"/>
	   ���뿼������ϵͳ��
	   </h2>
<% }
   else{
%>
       <h2>��¼ʧ��,����<a href="javascript:history.back(-1);">�������µ�¼</a></h2>
<% }
%>
<p>����¼����Ϣ�ǣ�
<br>�û����ƣ�
<jsp:getProperty name="stu" property="loginName"/>
<br>�û����룺
<jsp:getProperty name="stu" property="password"/>
</body>
</html>