<%@ page contentType="text/html;charset=GB2312" %>
<%! public String getMax(double x,double y){
	if (x>y){
		double temp;
		temp=x;
		x=y;
		y=x;
	}
	return ("�����ǣ�"+y+",С���ǣ�"+x);
}
%>
<% String dx=request.getParameter("dx");
   String dy=request.getParameter("dy");
   double x=Double.parseDouble(dx);
   double y=Double.parseDouble(dy);
%>
<html>
<body>
<p>�����￪ʼ�Ǳ������ļ��������<br>
���������ļ��Ĳ���dx��ֵ�ǣ�<%=dx%>,dy��ֵ�ǣ�<%=dy%>��<br>
getMax�������ý����<%=getMax(x,y)%>
</body>
</html>

