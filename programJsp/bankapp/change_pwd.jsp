<HTML>
<%@page contentType= "text/html;charset=GBK"%>
<head>
<title>�޸��������</title>
</head>
<body>
<SCRIPT>
function checkpass()
{
	//�ж��û��Ƿ�����
	if((form.pwd.value=="")||(form.pwdconfirm.value==""))
	{	
		alert("��¼��������Ϣ!");	
	}	
	//�ж�����Ĵ����Ƿ���һ������
	else if (form.pwd.value!=form.pwdconfirm.value)
	{
		alert("2���������벻һ��!");
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
	<td width="100%"> <p align="center"><b><font size="5" color="#FF9900">�޸�����</font></b></td> 
	</tr>
	<tr>    
	<td width="100%" height="40"> </td> 
	</tr>
</table>
<HR color="#FF9900">
<p>
<form name="form" method="POST" action="change_pwd_process.jsp">  
     �����������벢ȷ��<p><em>&nbsp;&nbsp;&nbsp; ������</em> <input type="password" name="pwd" size="20"><br>  
     <em>������ȷ��</em> <input type="password" name="pwdconfirm" size="20"><br>     
 	<p align="center">   <input type="button" value="ȷ��" onClick="checkpass()">   
	<input type="reset" value="���" name="B2">
	</p>  
</form> 
<HR color="#FF9900">
</body>
</HTML>
