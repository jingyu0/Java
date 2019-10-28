<%@ page contentType="text/html;charset=GB2312" %>
<%! public String getMax(double x,double y){
	if (x>y){
		double temp;
		temp=x;
		x=y;
		y=x;
	}
	return ("大数是："+y+",小数是："+x);
}
%>
<% String dx=request.getParameter("dx");
   String dy=request.getParameter("dy");
   double x=Double.parseDouble(dx);
   double y=Double.parseDouble(dy);
%>
<html>
<body>
<p>从这里开始是被加载文件的输出：<br>
传给加载文件的参数dx的值是：<%=dx%>,dy的值是：<%=dy%>。<br>
getMax方法调用结果：<%=getMax(x,y)%>
</body>
</html>

