<%@ page contentType="text/html; charset=gb2312" language="java"%>
<html>
<head><title>获取简单表单信息</title></head>
<body  bgcolor="#99CCCC">
<font size="3">
<%
   String strNumx=request.getParameter("ix");
   String strNumy=request.getParameter("iy");
   try{
      double ix=Double.parseDouble(strNumx);
	  double iy=Double.parseDouble(strNumy);
	  if(ix>iy){
	  out.print("<p>您输入的两个数中大数是:");
	  out.print((int)ix);
	  out.print("&nbsp;&nbsp;小数是：");
	  out.print((int)iy);
	  }
	  else{
	  out.print("<p>您输入的两个数中大数是:");
	  out.print((int)iy);
	  out.print("&nbsp;&nbsp;小数是：");
	  out.print((int)ix);
	  }
	}
  catch(NumberFormatException ee){
     out.println("<br>请输入数字字符");
  }
%>
</font>
<body>
</body>
</html>
