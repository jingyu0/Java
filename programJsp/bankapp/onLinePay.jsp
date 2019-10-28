<HTML>
<%@page contentType= "text/html;charset=GBK"%>
<head>
<title>在线缴费</title>
</head>
<SCript src="check.js"></Script>
<SCRIPT>
//检查用户是否已经输入帐号和密码的函数
function checkpass()
{
	if(form.userID.value=="")
	{
		alert("请录入完整信息!");
	}
	else
	{
		form.submit();
	}
}
</script>
<body>

<table border="0" width="100%">
	<tr>    
	<td width="100%" height="40"> </td> 
	</tr>
	<tr>    
	<td width="100%"> <p align="center"><b><font size="5" color="#FF9900">在线缴费界面</font></b></td> 
	</tr>
	<tr>    
	<td width="100%" height="40"> </td> 
	</tr>
</table>
<HR color="#FF9900">
<p>
<form name="form" method="POST" action="onLinePay_process.jsp">  
     请选择在线缴费的类别并输入需要缴费的号码（如手机号，固定电话号码等）：
<p> <em>&nbsp;&nbsp;&nbsp;&nbsp;类别</em> <select size="1" name="businessType">
     <option value="移动手机话费" selected>移动手机话费</option>
    <option value="电信固定电话话费">电信固定电话话费</option>
    <option value="居民用水费">居民用水费</option>
    <option value="居民用电费">居民用电费</option>
    <option value="煤气使用费">煤气使用费</option>
   </select><br>    
    <em>&nbsp;&nbsp;&nbsp;&nbsp;号码</em> <input type="text" name="userID" size="20"><br> 
 
 	<p align="center">   <input type="button" value="确认" onClick="checkpass()">   
	<input type="reset" value="清空" name="B2">
	</form> 
<HR color="#FF9900">
</body>
</HTML>
