<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<html>
<body>
<!--程序加载时间: 
    <%= (new java.util.Date()).toLocaleString()%>
	输出型注释
-->
<%--展示时间数据的Java程序片（隐藏注释）--%>
<%  //创建日期型对象
    Date dateNow=new Date();
	/*相对于1900年
	    设置奥运会开幕时间*/
    Date dateTemp=new Date(108,7,8); 
	/**求两个时间相对于1900年1月1日
	 *的毫秒数
	 */
	double  secondnum=(double)(dateTemp.getTime()-dateNow.getTime());
    long  daynum=(long)(secondnum/1000/60/60/24);
%>
<center>  
  <p>距北京2008奥运会开幕还有<br>
    <font color="red" size="8"><%=daynum%>天</font>
  <p>今天是：<%= dateNow.toString()%>
  <p>北京奥运会开幕：<%= dateTemp.toString()%>
</center>
</body>
</html>
