<%@ page contentType="text/html;charset=GB2312" %>
<html>
<head><title>例5.4 辅助bean示例留言板</title>
</head>
<body>
<form action="ch5_4_submit.jsp" method=post name="form1">
    输入您的名字：<br>
	<input type="text" name="author" />
	<br>输入您的留言标题：<br>
	<input type="text" name="title" />
	<br>输入您的留言：<br>
	<textarea  name="mess" rows="10" cols="36" 
	    warp="physical"></textarea><br>
	<input type="submit" value="提交留言" name="submit"/>
	<input type="reset" value="重置留言" name="reset" />
</form>
<form action="ch5_4_show.jsp" method="post" name="form2">
    <input type="submit" value="查看留言" name="look">
</form>
</body>
</html>