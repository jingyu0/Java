<%@ page contentType="text/html;charset=GB2312"%>
<%@ include file="chString.txt" %>
<html>
<head>
<title>��4.15�����¼���û���</title>
</head>
<body bgcolor="#00BFFF">
<%
   String strUserName=request.getParameter("userName");
   String strPassword=request.getParameter("password");
   String strSessionID=session.getId();
   if (strUserName==null){
       strUserName="";
   }
   if(strPassword==null){
       strPassword="";
   }
   //��¼�ɹ��󱣴��û�������ת��ĳҳ��
   if(strUserName!=""&&strPassword!=""){
      session.setAttribute("username",chString(strUserName));
	  session.setAttribute("password",chString(strPassword));
	  response.sendRedirect("ch4_15_show.jsp");
   }
%>
<form method="post" action="ch4_15.jsp" name="form1" >
   <br>�û���¼��
   <input type="text" name="userName" size="20">
   <br>�û����룺
   <input type="password" name="password" size="20">
   <br>�ύ�����ã�
   <input type="submit" name="submit"  value="�ύ" >
   <input type="reset" name="reset" value="����" >
</form>
<%= strSessionID %>
</body>
</html>
