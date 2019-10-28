<%@ page contentType="text/html;charset=GB2312" %>
<html>
<head>
<title>例5.3 与表单参数值进行交互</title>
</head>
<body bgcolor="cyan" >
<form method="post" action="ch5_3_show.jsp" name="form1" >
  <p>输入用户名称：
   <input type="text" name="loginName" size="20"/>
  <br>输入用户密码：
   <input type="password" name="password" size="20"/>
  <br>确认用户信息：&nbsp;&nbsp;&nbsp;
   <input type="submit" name="submit" value="提交" size="6" />
   <input type="reset"  name="reset" value="重置" ssize="6" />
</form>
</body>
</html>