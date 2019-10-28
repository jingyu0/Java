<%@ page contentType="text/html;charset=GB2312" %>
<html>
<head><title>例4.10contentType属性示例</title>
</head>
<body>
<p>单击“保存为Word文档” 按钮将当前页面保存为Word文档
<form  action="" method="post" name="form1" >
   <input type="submit"  name="submit" value="保存为Word文档" >
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