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
	    alert("������һ�����֣�");
		document.forms[0].elements[0].focus();
		return false;
	 }
	 if(strID.search("\\d{15}|\\d{18}")!=0){
	 	alert("������һ����ȷ�����֤�ţ�15λ��18λ");
		document.forms[0].elements[1].focus();
		return false;
	 }
	 if	(strEmail.search("^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+$")!=0){
	    alert("������һ����ȷ�ĵ����ʼ���ַ��");
		document.forms[0].elements[2].focus();
		return false;
	 }
	 if(strCnstring.search("[\\u4e00-\\u9fa5]")!=0){
	    alert("�����������ַ���");
		document.forms[0].elements[3].focus();
		return false;
	 }
   }
-->
</script>
<html>
<head>
<title>��4.8������ʽʾ��</title>
</head>
<body bgcolor="cyan">
<form  name="form1" method="post" action="" onSubmit="return check()">
  <br>����һ�����֣�<input name="num" type="text">
  <br>�������֤�ţ�<input name="id" type="text">
  <br>�����ʼ���ַ��<input name="email" type="text">
  <br>���������ַ���<input name="cnstring" type="text">
  <br>�ύ�����ð�ť��
  <input name="submit" value="�ύ" type="submit" >
  <input name="reset" value="����" type="reset" >
</form>
</body>
</html>