<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<html>
<body>
<!--�������ʱ��: 
    <%= (new java.util.Date()).toLocaleString()%>
	�����ע��
-->
<%--չʾʱ�����ݵ�Java����Ƭ������ע�ͣ�--%>
<%  //���������Ͷ���
    Date dateNow=new Date();
	/*�����1900��
	    ���ð��˻ῪĻʱ��*/
    Date dateTemp=new Date(108,7,8); 
	/**������ʱ�������1900��1��1��
	 *�ĺ�����
	 */
	double  secondnum=(double)(dateTemp.getTime()-dateNow.getTime());
    long  daynum=(long)(secondnum/1000/60/60/24);
%>
<center>  
  <p>�౱��2008���˻ῪĻ����<br>
    <font color="red" size="8"><%=daynum%>��</font>
  <p>�����ǣ�<%= dateNow.toString()%>
  <p>�������˻ῪĻ��<%= dateTemp.toString()%>
</center>
</body>
</html>
