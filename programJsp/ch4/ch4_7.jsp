<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*"%>
<html>
<head>
<title>��4.6&lt;select&gt;��&lt;textarea&gt;ʾ��</title>
<script type="text/javascript" src="check.js" 
    language="JavaScript" charset="GB2312" >
</script>
</head>
<body bgcolor="cyan">
<form method="post" action="ch4_6_show.jsp" name="form1"  onSubmit="return check()">
      <h3>���ϼ����ְ�ƿ��Ա���ϵͳ��</h3>
      <p>����������
      <input type="text" name="stuName" value="yang" size="8" align="left">
      <br>��¼���룺
      <input type="password" name="stuPassword" value="yang" size="8" align="left">
      <br>��&nbsp;&nbsp;&nbsp;��
      <input type="radio" name="stuSex" value="��" checked="��" align="left">��
      <input type="radio" name="stuSex" value="Ů" align="left">Ů
      <br>������Ŀ��
      <input type="checkbox" name="course" value="Windows Xp"  checked="true" >Windows Xp
      <input type="checkbox" name="course" value="Word 2003" >Word 2003
      <input type="checkbox" name="course" value="Excel 2003" >Excel 2003
      <br>������
      <input type="hidden" name="hinfo"  value="admin user" >
      <br>ѧ����
      <select name="level"  >
           <option value="ר��">ר��</option>
           <option value="����"  selected="true">����</option>
           <option value="˶ʿ�о���">˶ʿ�о���</option>
           <option value="��ʿ�о���">��ʿ�о���</option>
      </select>
      <br>��������
      <select name="exmaclass" size="2">
          <option value="�߼�" selected="true">�߼�</option>
          <option value="�м�">�м�</option>
      </select>
      <br>��ע��
      <textarea name="memo" rows="8" cols="30">�����������������ı�ע��Ϣ</textarea>
      <br>�ύ��ť��
      <input type="submit"  name="submit" value="�ύ" size="6">
      <input type="reset"   name="reset" value="����" size="6">      
</form>
</body>
</html>