<%@ page contentType="text/html; charset=gb2312" language="java"%>
<html>
<head><title>��ȡ�򵥱���Ϣ</title></head>
<body  bgcolor="#99CCCC">
<font size="3">
<%
   String strNumx=request.getParameter("ix");
   String strNumy=request.getParameter("iy");
   try{
      double ix=Double.parseDouble(strNumx);
	  double iy=Double.parseDouble(strNumy);
	  if(ix>iy){
	  out.print("<p>��������������д�����:");
	  out.print((int)ix);
	  out.print("&nbsp;&nbsp;С���ǣ�");
	  out.print((int)iy);
	  }
	  else{
	  out.print("<p>��������������д�����:");
	  out.print((int)iy);
	  out.print("&nbsp;&nbsp;С���ǣ�");
	  out.print((int)ix);
	  }
	}
  catch(NumberFormatException ee){
     out.println("<br>�����������ַ�");
  }
%>
</font>
<body>
</body>
</html>
