<%@ page contentType="text/html;charset=GB2312" %>
<html>
<head><title>��4.10contentType����ʾ��</title>
</head>
<body>
<p>����������ΪWord�ĵ��� ��ť����ǰҳ�汣��ΪWord�ĵ�
<form  action="" method="post" name="form1" >
   <input type="submit"  name="submit" value="����ΪWord�ĵ�" >
</form>
<%
   String strSubmit=request.getParameter("submit");
   if (strSubmit==null){
       strSubmit="";
   }
   if(!strSubmit.equals("")){
       response.setContentType("application/msword;charset=GB2312");
   }
%>
</body>
</html>