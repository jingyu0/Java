<%@ page contentType="text/html;charset=GB2312" %>  <!--jsp指令标记-->
<%! int lucknum=0,count=0;
    public synchronized void countNum(){
		count++;
		lucknum=count%10;
    }
%>
<html>                                              <!--HTML标记-->
<body  bgcolor="cyan">
   <font size=4>
     <%  countNum();                                //程序片
	     int num=(int)(Math.random()*10)+1;
		 if (num==lucknum)
		 {
     %>     <p>您访问的幸运数是:<%= num %>
	 <%  }
		 else
		 {
	 %>
		    <p>您抽取的数字是:<%= num %>
			<p>您是第<%= count %>个访问者
	 <%
		 }
	 %>
  </font>
</body>
</html> 