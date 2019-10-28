<%@page contentType= "text/html;charset=GBK"%>
<html>
<head>
<title>开户申请信息确认页面</title>
</head>
<% request.setCharacterEncoding("GBK");%>
<jsp:useBean id="myBean" class="bean.ReqBean" scope="session"/>
请确认你提交的信息：
<jsp:setProperty name="myBean" property="*" /><p>
<pre>
姓名：     <%=myBean.getOwnerName()%>
身份证号码：<%=myBean.getIdNo()%>
分支银行：  <%=myBean.getBranch()%>
帐户类型：  <%=myBean.getAccountType()%>
住址:      <%=myBean.getAddress()%>
联系电话:   <%=myBean.getPhone()%>
电子邮箱:   <%=myBean.getMail()%>
</pre>
<Form action="saveReqire.jsp" method="post"  >
<INPUT  type="submit" value="确认" >
<INPUT  type="button" value="修改"  onClick="history.back()">

</body>
</html>
