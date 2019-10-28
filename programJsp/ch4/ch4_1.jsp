<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<%! public String getWeek(int n){
	String strweek[]={"星期日","星期一","星期二","星期三","星期四","星期五","星期六"};
	return strweek[n];
   }
%>
<html>
<title>out对象的使用示例</title>
<body  bgcolor="#99CCCC">
<!--程序加载时间: 
    <%= (new java.util.Date()).toLocaleString()%>
	输出型注释
-->
<%--使用out对象输出表格和各种数据--%>
<%  /*创建一个奥运日历对象，相对于1900年
	    设置奥运会开幕日历对象*/
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
	out.print("<tr><td>北京奥运会开幕式时间</td>");
	out.print("<td>"+strYear+"年</td>");
	out.print("<td>"+strMonth+"月</td>");
	out.print("<td>"+strDay+"日</td>");
	out.print("<td>"+strWeek+"</td>");
	out.print("<td>"+hour+"时</td>");
	out.print("<td>"+minute+"分</td>");
	out.print("<td>"+second+"秒</td>");
	out.println("</tr>");
	out.println("</table>");
%>
</body>
</html>