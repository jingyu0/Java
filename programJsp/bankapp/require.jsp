<%@page contentType= "text/html;charset=GBK"%>
<html>
<head>
<title>����������Ϣȷ��ҳ��</title>
</head>
<% request.setCharacterEncoding("GBK");%>
<jsp:useBean id="myBean" class="bean.ReqBean" scope="session"/>
��ȷ�����ύ����Ϣ��
<jsp:setProperty name="myBean" property="*" /><p>
<pre>
������     <%=myBean.getOwnerName()%>
���֤���룺<%=myBean.getIdNo()%>
��֧���У�  <%=myBean.getBranch()%>
�ʻ����ͣ�  <%=myBean.getAccountType()%>
סַ:      <%=myBean.getAddress()%>
��ϵ�绰:   <%=myBean.getPhone()%>
��������:   <%=myBean.getMail()%>
</pre>
<Form action="saveReqire.jsp" method="post"  >
<INPUT  type="submit" value="ȷ��" >
<INPUT  type="button" value="�޸�"  onClick="history.back()">

</body>
</html>
