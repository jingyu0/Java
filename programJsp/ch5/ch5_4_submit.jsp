<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="mybean.maths.*" %>
<html>
<head><title>例5.4 辅助bean示例留言板submit.jsp</title>
</head>
<body>
<jsp:useBean id="peoplemess" class="mybean.maths.messList" scope="application"/>
<%
   String author=request.getParameter("author"),
          title=request.getParameter("title"),
		  mess=request.getParameter("mess");
   if(author==null)
      author="佚名";
   if(title==null)
      title="无标题";
   if(mess==null)
      mess="无内容";
   peoplemess.add(author,title,mess);
   out.print("您的信息已提交！");
%>
<a href="ch5_4.jsp" >返回</a>
</body>
</html>