<%@ page contentType="text/html;charset=GB2312" %>  <!--jspָ����-->
<%@ page import="java.util.Date" %>                 <!--jspָ����-->
<%! Date dateTime;                                  //��������
    private static int countNum;
    public void setCount(){                         //��������
		countNum++;
	}
%>
<html>                                              <!--HTML���-->
<body  bgcolor="cyan">
   <font size=4><p>����Ƭ����dateTime����:
     <%  dateTime=new Date();                       //java����Ƭ
         out.println("<p>������ϵͳʱ�䣺"+dateTime);
		 setCount();
		 String str=request.getRemoteAddr();		 	 
	 %>
	 <p>���ǵ�
	 <%= countNum %>                                <!--���ʽ-->
	 λ�����ߣ����ĵ��Ե�IP��ַ�ǣ�
	 <%= str%>                                      <!--���ʽ-->
   </font>
</body>                                             <!--HTML���-->
</html> 