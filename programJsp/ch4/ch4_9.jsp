<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*"%>
<%@ include file="chString.txt" %>
<html>
<head>
<title>��4.9request�����÷���ʾ��</title>
</head>
<body bgcolor="cyan">
<form method="post" action="" name="form1">
      <p>����ѧ��������
      <input type="text" name="stuName" value="yang" size="8">
      <p>����ѧ�����룺
      <input type="text" name="stuPassword" value="yang" size="8">
      <br>
      <input type="submit" name="submit" value="�ύ">
</form>

<% String strMethod=request.getMethod();
   String strProtocol=request.getProtocol(); 
   String strServerPath=request.getServletPath();
   String strClientIP=request.getRemoteAddr();
   String strServerName=request.getServerName();
   int iServerPort=request.getServerPort();
   out.print("<p><font color=red>����</font>");
   out.print("������:");
   out.print(strMethod);
   out.print(strServerPath+"/");
   out.print(strProtocol);
   out.print("<p>�ͻ���ip��ַ��");
   out.print(strClientIP+"<br>");
   out.print("���������ƣ�");
   out.print(strServerName+"<br>");
   out.print("�˿ںţ�");
   out.print(iServerPort);
   out.print("<p>������ʾ����ͷ���ּ���ֵ����ʾ��ʽ������ͷ��:ͷֵ����<br>");
   Enumeration enumHeaderNames=request.getHeaderNames(); 
   while(enumHeaderNames.hasMoreElements()) 
   { 
      String strn=(String)enumHeaderNames.nextElement(); 
	  String strv=request.getHeader(strn);
	  out.print("<font color=red>����</font>");
	  out.println(strn+":"+strv); 
   }
   Enumeration enumFormParaNames=request.getParameterNames();
   out.print("<p>��ʾ����������ֵ����ʾ��ʽ������������:����ֵ���ĸ�ʽ��<br>");
   while(enumFormParaNames.hasMoreElements())
   {
      String strn=(String)enumFormParaNames.nextElement();
	  String strv=chString(request.getParameter(strn));
	  out.print("<font color=red>����</font>");
	  out.print(strn+":" +strv+"&nbsp;&nbsp;");
   }
%>
</body>
</html>