<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*"%>
<html>
<head>
<title>��4.5&lt;input&gt;ʾ��</title>
</head>
<body bgcolor="cyan">
<form method="post" action="ch4_5_show.jsp" name="form1">
      <h3>���ϼ�������Ա���ϵͳ��</h3>
      <p>����������
      <input type="text" name="stuName" value="yang" size="8" align="left">
      <br>��¼���룺
      <input type="password" name="stuPassword" value="yang" size="8" align="left">
      <br>��&nbsp;&nbsp;&nbsp;��
      <input type="radio" name="stuSex" value="��" checked="��" align="left">��
      <input type="radio" name="stuSex" value="Ů" align="left">Ů
      <br>������Ŀ��
      <input type="checkbox" name="course" value="�ߵ���ѧ"  checked="�ߵ���ѧ" >�ߵ���ѧ
      <input type="checkbox" name="course" value="��ѧӢ��" >��ѧӢ��
      <input type="checkbox" name="course" value="���ݽṹ" >���ݽṹ
      <br>������
      <input type="hidden" name="hinfo"  value="admin user" >
      <br>�ύ��ť��
      <input type="submit"  name="submit" value="�ύ" size="6">
      <input type="reset" name="reset" value="����" size="6">      
</form>
</body>
</html>