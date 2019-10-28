<%@ page contentType="text/html;charset=GB2312" %>  <!--jsp指令标记-->
<%@ page import="java.util.Date" %>                 <!--jsp指令标记-->
<%! Date dateTime;                                  //变量声明
    private static int countNum;
    public void setCount(){                         //方法声明
		countNum++;
	}
%>
<html>                                              <!--HTML标记-->
<body  bgcolor="cyan">
   <font size=4><p>程序片创建dateTime对象:
     <%  dateTime=new Date();                       //java程序片
         out.println("<p>服务器系统时间："+dateTime);
		 setCount();
		 String str=request.getRemoteAddr();		 	 
	 %>
	 <p>您是第
	 <%= countNum %>                                <!--表达式-->
	 位访问者！您的电脑的IP地址是：
	 <%= str%>                                      <!--表达式-->
   </font>
</body>                                             <!--HTML标记-->
</html> 