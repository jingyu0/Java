<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<html>
<head>
   <title>JSP:FORWARDʹ��ʾ��</title>
</head>
<body>
  <p>���ǵ�һ��ҳ������</p>
  <% out.println("kdiek");
  %>
  <%
  if (Calendar.HOUR>Calendar.AM){
  %>
	 <jsp:forward page="ampm.jsp">
	    <jsp:param name="hello" value="Good a.m.!"/>
	 </jsp:forward>
  <%} else {
  %>
     <jsp:forward page="ampm.jsp">
	    <jsp:param name="hello" value="Good p.m.!"/>
	 </jsp:forward>
  <%}
  %>   
</body>
</html>