<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="mybean.maths.*" %>
<html>
<head><title>��5.4 ����beanʾ�����԰�submit.jsp</title>
</head>
<body>
<jsp:useBean id="peoplemess" class="mybean.maths.messList" scope="application"/>
<%
   String author=request.getParameter("author"),
          title=request.getParameter("title"),
		  mess=request.getParameter("mess");
   if(author==null)
      author="����";
   if(title==null)
      title="�ޱ���";
   if(mess==null)
      mess="������";
   peoplemess.add(author,title,mess);
   out.print("������Ϣ���ύ��");
%>
<a href="ch5_4.jsp" >����</a>
</body>
</html>