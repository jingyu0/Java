<%@ page contentType="text/html;charset=GB2312" %>
<html>
<head><title>��5.4 ����beanʾ�����԰�</title>
</head>
<body>
<form action="ch5_4_submit.jsp" method=post name="form1">
    �����������֣�<br>
	<input type="text" name="author" />
	<br>�����������Ա��⣺<br>
	<input type="text" name="title" />
	<br>�����������ԣ�<br>
	<textarea  name="mess" rows="10" cols="36" 
	    warp="physical"></textarea><br>
	<input type="submit" value="�ύ����" name="submit"/>
	<input type="reset" value="��������" name="reset" />
</form>
<form action="ch5_4_show.jsp" method="post" name="form2">
    <input type="submit" value="�鿴����" name="look">
</form>
</body>
</html>