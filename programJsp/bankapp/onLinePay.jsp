<HTML>
<%@page contentType= "text/html;charset=GBK"%>
<head>
<title>���߽ɷ�</title>
</head>
<SCript src="check.js"></Script>
<SCRIPT>
//����û��Ƿ��Ѿ������ʺź�����ĺ���
function checkpass()
{
	if(form.userID.value=="")
	{
		alert("��¼��������Ϣ!");
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
	<td width="100%"> <p align="center"><b><font size="5" color="#FF9900">���߽ɷѽ���</font></b></td> 
	</tr>
	<tr>    
	<td width="100%" height="40"> </td> 
	</tr>
</table>
<HR color="#FF9900">
<p>
<form name="form" method="POST" action="onLinePay_process.jsp">  
     ��ѡ�����߽ɷѵ����������Ҫ�ɷѵĺ��루���ֻ��ţ��̶��绰����ȣ���
<p> <em>&nbsp;&nbsp;&nbsp;&nbsp;���</em> <select size="1" name="businessType">
     <option value="�ƶ��ֻ�����" selected>�ƶ��ֻ�����</option>
    <option value="���Ź̶��绰����">���Ź̶��绰����</option>
    <option value="������ˮ��">������ˮ��</option>
    <option value="�����õ��">�����õ��</option>
    <option value="ú��ʹ�÷�">ú��ʹ�÷�</option>
   </select><br>    
    <em>&nbsp;&nbsp;&nbsp;&nbsp;����</em> <input type="text" name="userID" size="20"><br> 
 
 	<p align="center">   <input type="button" value="ȷ��" onClick="checkpass()">   
	<input type="reset" value="���" name="B2">
	</form> 
<HR color="#FF9900">
</body>
</HTML>
