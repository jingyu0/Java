<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*"%>
<%@ include file="chString.txt" %>
<html>
<head>
<title>��4.5&lt;input&gt;ʾ��</title>
</head>
<body bgcolor="cyan">
<%  String strName=request.getParameter("stuName");
    String strPassword=request.getParameter("stuPassword");
	String strSex=request.getParameter("stuSex");
	String strCourse[]=request.getParameterValues("course");
	String strHinfo=request.getParameter("hinfo");
	String strSubmit=request.getParameter("submit");
	strName=chString(strName);
	strSex=chString(strSex);
	strHinfo=chString(strHinfo);
	strSubmit=chString(strSubmit);
      out.print("<h3>���ϼ�������Ա���ϵͳ��Ϣ��ʾ��</h3>");
      out.print("<p>����������");
      out.print(strName);
      out.print("<br>��¼���룺");
      out.print(strPassword);
      out.print("<br>��&nbsp;&nbsp;&nbsp;��");
      out.print(strSex);
      out.print("<br>������Ŀ��");
      if(strCourse==null)
	     out.print("û��ѡ��");
	  else
	  {
	      for(int k=0;k<strCourse.length;k++){
		      out.print(chString(strCourse[k])+"&nbsp;&nbsp;");
		  }
	  }
	  out.print("<br>������");
	  out.print(strHinfo);
	  out.print("<br>�ύ��ť��");
	  out.print(strSubmit+" ");
%>   
</body>
</html>