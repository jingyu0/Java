<%@ page contentType="text/html; Charset=gb2312" language="java"%>
<html>
<head><title>��ȡ�򵥱���Ϣ</title></head>
<body  bgcolor="#99CCCC">
<font size="3">
<form method="get" action="" name="form1" >
   <p>ѧ��������
   <input type="text" name="stuName" value="yang" size="6">
      �Ա�
   <input type="text" name="stuSex" value="boy" size="6">
      ���䣺
   <input type="text" name="stuAge"  size="6">
   <input type="submit" name="submit1" value="�ύ" size="4">
</form>
<%
    String  strName=request.getParameter("stuName"),
	        strSex=request.getParameter("stuSex"),
			strAge=request.getParameter("stuAge");
	double  dAge=0;
	if(strAge==null){
	   strAge="";
	}
	try{  dAge=Double.parseDouble(strAge);
	      if(dAge>=18){
		  out.print("<p>ѧ��������"+strName+"&nbsp;&nbsp;�Ա�"+strSex);
		  out.print("&nbsp;&nbsp;���䣺"+strAge+"&nbsp;&nbsp;�����ˣ���ӭ���ʡ�");
		  }
		  else{
		  out.print("<p>ѧ��������"+strName+"&nbsp;&nbsp;�Ա�"+strSex);
		  out.print("&nbsp;&nbsp;���䣺"+strAge+"&nbsp;&nbsp;δ�����ˣ�л�����ʣ�");		  
		  }
	}
	catch(NumberFormatException ee){
	      out.print("�������ֶ�����������");
	}
%>
</font>
<body>
</body>
</html>
