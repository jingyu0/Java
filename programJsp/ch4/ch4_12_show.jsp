<%@ page contentType="text/html;charset=GB2312" %>
<html>
<head><title>ҳ���ض���ʾ��</title></head>
<body>
<%
    String str=request.getParameter("userName");
	if(str==null){
	   str="";
	}
	if(str.length()<=0)
	   response.sendRedirect("ch4_12_show.jsp");
	else
	   out.print("��ӭ"+str+"����������ҳ�棡");
%>
</body></html>