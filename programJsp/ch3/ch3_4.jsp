<%@ page contentType="text/html;charset=GB2312" %>  <!--jspָ����-->
<html>                                              <!--HTML���-->
<body  bgcolor="cyan">
   <font size=4>
   <% char begin='A';                               /*Java����Ƭ*/
      int  ix=13;
   %>
   <font color="blue"><p>��ɫ���ǰ13����ĸ��<br>   <!--����Html���-->
   <%                                               /*Java����Ƭ*/
      for(;begin<'A'+ix;begin++){
   %>
        <%= begin %>                                <!--Java���ʽ-->
   <%
	  }
   %>
   </font>
   <font color="green"><p>��ɫ�����13����ĸ��<br>  <!--����Html���-->
   <% 
      for(;begin<'N'+ix;begin++){
   %>
        <%= begin %>                                <!--Java���ʽ-->
   <%
      }
   %>
   </font>
   </font>
</body>
</html> 