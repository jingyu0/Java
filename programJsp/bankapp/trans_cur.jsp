<HTML>
<%@page contentType= "text/html;charset=GBK"%>
<head>
<title>����ת��</title>
</head>
<SCript src="check.js"></Script>
<SCRIPT>
//����û��Ƿ��Ѿ������ʺź�����ĺ���
function checkpass()
{
	if((form.ownername.value=="")||(form.toNo.value==""))
	{
		alert("��¼��������Ϣ!");
	}
	else if (!isValidDouble(form.amount.value))
	{
		alert("ת����Ӧ����һ���Ϸ���ʵ����");
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
	<td width="100%"> <p align="center"><b><font size="5" color="#FF9900">����ת�ʽ���</font></b></td> 
	</tr>
	<tr>    
	<td width="100%" height="40"> </td> 
	</tr>
</table>
<HR color="#FF9900">
<p>
<form name="form" method="POST" action="trans_cur_process.jsp">  
     �������ʽ�ת���ʻ����ʺ�,����������ת���
     <p>&nbsp;&nbsp;&nbsp;&nbsp;<em>�ʺ�</em>   
     <input type="text" name="toNo" size="20"><br>    
    <em>&nbsp;&nbsp;&nbsp;&nbsp;����</em> <input type="text" name="ownername" size="20"><br> 
     <em>ת����</em> <input type="amount" name="amount" size="20"><br>      
 	<center>   <input type="button" value="ȷ��" onClick="checkpass()">   
	<input type="reset" value="���" name="B2">
	</center>  
</form> 
<HR color="#FF9900">
</body>
</HTML>
