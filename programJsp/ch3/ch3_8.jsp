<%@ page contentType="text/html;charset=GB2312" %>
<html>
<head>
<title>����Include�������ʾ��</title>
</head>
<body bgcolor="cyan">
<% double dx=3.14,dy=4.3;
%>
<p>��ҳ����Ϣ������ch3_8_1.jsp�ļ����������������ֵ:���濪ʼ���ء�
  <jsp:include page="ch3_8_1.jsp" >
      <jsp:param name="dx" value="<%=dx%>" />
	  <jsp:param name="dy" value="<%=dy%>" />
  </jsp:include>
<p>��ҳ����Ϣ�������Ѿ�������ϡ�</p>
</body>
</html>