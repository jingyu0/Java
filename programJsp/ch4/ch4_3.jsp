<%@ page contentType="text/html; Charset=gb2312" language="java"%>
<html>
<head><title>获取简单表单信息</title></head>
<body  bgcolor="#99CCCC">
<font size="3">
<form method="get" action="" name="form1" >
   <p>学生姓名：
   <input type="text" name="stuName" value="yang" size="6">
      性别：
   <input type="text" name="stuSex" value="boy" size="6">
      年龄：
   <input type="text" name="stuAge"  size="6">
   <input type="submit" name="submit1" value="提交" size="4">
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
		  out.print("<p>学生姓名："+strName+"&nbsp;&nbsp;性别"+strSex);
		  out.print("&nbsp;&nbsp;年龄："+strAge+"&nbsp;&nbsp;成年人，欢迎访问。");
		  }
		  else{
		  out.print("<p>学生姓名："+strName+"&nbsp;&nbsp;性别"+strSex);
		  out.print("&nbsp;&nbsp;年龄："+strAge+"&nbsp;&nbsp;未成年人，谢绝访问！");		  
		  }
	}
	catch(NumberFormatException ee){
	      out.print("在年龄字段请输入数字");
	}
%>
</font>
<body>
</body>
</html>
