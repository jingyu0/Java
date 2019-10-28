<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*"%>
<html>
<head>
<title>例4.5&lt;input&gt;示例</title>
</head>
<body bgcolor="cyan">
<form method="post" action="ch4_5_show.jsp" name="form1">
      <h3>网上计算机考试报名系统：</h3>
      <p>考生姓名：
      <input type="text" name="stuName" value="yang" size="8" align="left">
      <br>登录密码：
      <input type="password" name="stuPassword" value="yang" size="8" align="left">
      <br>性&nbsp;&nbsp;&nbsp;别：
      <input type="radio" name="stuSex" value="男" checked="男" align="left">男
      <input type="radio" name="stuSex" value="女" align="left">女
      <br>报考科目：
      <input type="checkbox" name="course" value="高等数学"  checked="高等数学" >高等数学
      <input type="checkbox" name="course" value="大学英语" >大学英语
      <input type="checkbox" name="course" value="数据结构" >数据结构
      <br>隐藏域
      <input type="hidden" name="hinfo"  value="admin user" >
      <br>提交按钮：
      <input type="submit"  name="submit" value="提交" size="6">
      <input type="reset" name="reset" value="重置" size="6">      
</form>
</body>
</html>