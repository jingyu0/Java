<HTML>
<%@page contentType= "text/html;charset=GBK"%>
<head>
<title>修改密码界面</title>
</head>
<body>
<SCRIPT>
function checkpass()
{
	//判断用户是否输入
	if((form.pwd.value=="")||(form.pwdconfirm.value==""))
	{	
		alert("请录入完整信息!");	
	}	
	//判断输入的存期是否是一个整数
	else if (form.pwd.value!=form.pwdconfirm.value)
	{
		alert("2次密码输入不一样!");
	}
	else
	{		
		form.submit();	
	}
}
</script>
<table border="0" width="100%">
	<tr>    
	<td width="100%" height="40"> </td> 
	</tr>
	<tr>    
	<td width="100%"> <p align="center"><b><font size="5" color="#FF9900">修改密码</font></b></td> 
	</tr>
	<tr>    
	<td width="100%" height="40"> </td> 
	</tr>
</table>
<HR color="#FF9900">
<p>
<form name="form" method="POST" action="change_pwd_process.jsp">  
     请输入新密码并确认<p><em>&nbsp;&nbsp;&nbsp; 新密码</em> <input type="password" name="pwd" size="20"><br>  
     <em>新密码确认</em> <input type="password" name="pwdconfirm" size="20"><br>     
 	<p align="center">   <input type="button" value="确认" onClick="checkpass()">   
	<input type="reset" value="清空" name="B2">
	</p>  
</form> 
<HR color="#FF9900">
</body>
</HTML>
