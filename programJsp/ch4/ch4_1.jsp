<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<%! public String getWeek(int n){
	String strweek[]={"������","����һ","���ڶ�","������","������","������","������"};
	return strweek[n];
   }
%>
<html>
<title>out�����ʹ��ʾ��</title>
<body  bgcolor="#99CCCC">
<!--�������ʱ��: 
    <%= (new java.util.Date()).toLocaleString()%>
	�����ע��
-->
<%--ʹ��out����������͸�������--%>
<%  /*����һ�������������������1900��
	    ���ð��˻ῪĻ��������*/
    Calendar calendar1=Calendar.getInstance();
	calendar1.setTime(new Date(108,7,8,20,8));
	String strYear=String.valueOf(calendar1.get(Calendar.YEAR)),
	       strMonth=String.valueOf(calendar1.get(Calendar.MONTH)+1),
		   strDay=String.valueOf(calendar1.get(Calendar.DAY_OF_MONTH)),
		   strWeek=getWeek(calendar1.get(Calendar.DAY_OF_WEEK)-1);
    int hour=calendar1.get(Calendar.HOUR_OF_DAY),
	       minute=calendar1.get(Calendar.MINUTE),
		   second=calendar1.get(Calendar.SECOND);    
    out.println("<table border=\"2\" align=\"center\">");
	out.print("<tr><td>�������˻ῪĻʽʱ��</td>");
	out.print("<td>"+strYear+"��</td>");
	out.print("<td>"+strMonth+"��</td>");
	out.print("<td>"+strDay+"��</td>");
	out.print("<td>"+strWeek+"</td>");
	out.print("<td>"+hour+"ʱ</td>");
	out.print("<td>"+minute+"��</td>");
	out.print("<td>"+second+"��</td>");
	out.println("</tr>");
	out.println("</table>");
%>
</body>
</html>