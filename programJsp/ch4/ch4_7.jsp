<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*"%>
<html>
<head>
<title>例4.6&lt;select&gt;和&lt;textarea&gt;示例</title>
<script type="text/javascript" src="check.js" 
    language="JavaScript" charset="GB2312" >
</script>
</head>
<body bgcolor="cyan">
<form method="post" action="ch4_6_show.jsp" name="form1"  onSubmit="return check()">
      <h3>网上计算机职称考试报名系统：</h3>
      <p>考生姓名：
      <input type="text" name="stuName" value="yang" size="8" align="left">
      <br>登录密码：
      <input type="password" name="stuPassword" value="yang" size="8" align="left">
      <br>性&nbsp;&nbsp;&nbsp;别：
      <input type="radio" name="stuSex" value="男" checked="男" align="left">男
      <input type="radio" name="stuSex" value="女" align="left">女
      <br>报考科目：
      <input type="checkbox" name="course" value="Windows Xp"  checked="true" >Windows Xp
      <input type="checkbox" name="course" value="Word 2003" >Word 2003
      <input type="checkbox" name="course" value="Excel 2003" >Excel 2003
      <br>隐藏域
      <input type="hidden" name="hinfo"  value="admin user" >
      <br>学历：
      <select name="level"  >
           <option value="专科">专科</option>
           <option value="本科"  selected="true">本科</option>
           <option value="硕士研究生">硕士研究生</option>
           <option value="博士研究生">博士研究生</option>
      </select>
      <br>报考级别：
      <select name="exmaclass" size="2">
          <option value="高级" selected="true">高级</option>
          <option value="中级">中级</option>
      </select>
      <br>备注：
      <textarea name="memo" rows="8" cols="30">在这里输入您报考的备注信息</textarea>
      <br>提交按钮：
      <input type="submit"  name="submit" value="提交" size="6">
      <input type="reset"   name="reset" value="重置" size="6">      
</form>
</body>
</html>