<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*"%>
<%@ include file="chString.txt" %>
<html>
<head>
<title>例4.6&lt;select&gt;和&lt;textaera&gt;示例</title>
</head>
<body bgcolor="cyan">
<%  String strName=request.getParameter("stuName");
    String strPassword=request.getParameter("stuPassword");
	String strSex=request.getParameter("stuSex");
	String strCourse[]=request.getParameterValues("course");
	String strHinfo=request.getParameter("hinfo");
	String strSubmit=request.getParameter("submit");
	String strLevel=request.getParameter("level");
	String strExamclass=request.getParameter("exmaclass");
	String strMemo=request.getParameter("memo");
	strName=chString(strName);
	strSex=chString(strSex);
	strHinfo=chString(strHinfo);
	strSubmit=chString(strSubmit);
	strLevel=chString(strLevel);
	strExamclass=chString(strExamclass);
	strMemo=chString(strMemo);
      out.print("<h3>网上计算机考试报名系统信息显示：</h3>");
      out.print("<p>考生姓名：");
      out.print(strName);
      out.print("<br>登录密码：");
      out.print(strPassword);
      out.print("<br>性&nbsp;&nbsp;&nbsp;别：");
      out.print(strSex);
      out.print("<br>报考科目：");
      if(strCourse==null)
	     out.print("没有选课");
	  else
	  {
	      for(int k=0;k<strCourse.length;k++){
		      out.print(chString(strCourse[k])+"&nbsp;&nbsp;");
		  }
	  }
	  out.print("<br>隐藏域:");
	  out.print(strHinfo);
	  out.print("<br>学历:");
	  out.print(strLevel);
	  out.print("<br>报考级别：");
	  out.print(strExamclass);
	  out.print("<br>备注：");
	  out.print(strMemo);
	  out.print("<br>提交按钮：");
	  out.print(strSubmit+" ");
%>   
</body>
</html>