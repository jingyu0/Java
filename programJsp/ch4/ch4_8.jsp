<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*"%>
<script language="javascript" type="text/javascript" >
<!--
   function check(){
     var strNum=document.forms[0].elements[0].value;
	 var strID=document.forms[0].elements[1].value;
	 var strEmail=document.forms[0].elements[2].value;
	 var strCnstring=document.forms[0].elements[3].value;
	 if(strNum.search("^\\d+(\\.\\d+)*$")!=0){
	    alert("请输入一个数字！");
		document.forms[0].elements[0].focus();
		return false;
	 }
	 if(strID.search("\\d{15}|\\d{18}")!=0){
	 	alert("请输入一个正确的身份证号！15位或18位");
		document.forms[0].elements[1].focus();
		return false;
	 }
	 if	(strEmail.search("^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+$")!=0){
	    alert("请输入一个正确的电子邮件地址！");
		document.forms[0].elements[2].focus();
		return false;
	 }
	 if(strCnstring.search("[\\u4e00-\\u9fa5]")!=0){
	    alert("请输入中文字符！");
		document.forms[0].elements[3].focus();
		return false;
	 }
   }
-->
</script>
<html>
<head>
<title>例4.8正则表达式示例</title>
</head>
<body bgcolor="cyan">
<form  name="form1" method="post" action="" onSubmit="return check()">
  <br>输入一个数字：<input name="num" type="text">
  <br>输入身份证号：<input name="id" type="text">
  <br>输入邮件地址：<input name="email" type="text">
  <br>输入中文字符：<input name="cnstring" type="text">
  <br>提交和重置按钮：
  <input name="submit" value="提交" type="submit" >
  <input name="reset" value="重置" type="reset" >
</form>
</body>
</html>