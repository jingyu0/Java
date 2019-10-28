<%@ page contentType="text/html;charset=GB2312" %>
<html>
<head>
<title>这是Include动作标记示例</title>
</head>
<body bgcolor="cyan">
<% double dx=3.14,dy=4.3;
%>
<p>主页面信息：加载ch3_8_1.jsp文件，求两个数的最大值:下面开始加载。
  <jsp:include page="ch3_8_1.jsp" >
      <jsp:param name="dx" value="<%=dx%>" />
	  <jsp:param name="dy" value="<%=dy%>" />
  </jsp:include>
<p>主页面信息：现在已经加载完毕。</p>
</body>
</html>