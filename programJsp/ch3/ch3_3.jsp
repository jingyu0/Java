<%@ page contentType="text/html;charset=GB2312" %>  <!--jspָ����-->
<%! int lucknum=0,count=0;
    public synchronized void countNum(){
		count++;
		lucknum=count%10;
    }
%>
<html>                                              <!--HTML���-->
<body  bgcolor="cyan">
   <font size=4>
     <%  countNum();                                //����Ƭ
	     int num=(int)(Math.random()*10)+1;
		 if (num==lucknum)
		 {
     %>     <p>�����ʵ���������:<%= num %>
	 <%  }
		 else
		 {
	 %>
		    <p>����ȡ��������:<%= num %>
			<p>���ǵ�<%= count %>��������
	 <%
		 }
	 %>
  </font>
</body>
</html> 