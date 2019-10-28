<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.uitl.*" %>
<%! int sum=0;    
    public int sumMethod(int begin,int end){
	   int subsum=0;
       for(;begin<=end;begin++){
		   subsum+=begin;
	   }
	   sum+=subsum;
	   return subsum;
	}
%>
<html>
<body bgcolor=cyan>
<% //调用sumMethod方法
   out.println("<p>10到20之间的数之和是："+sumMethod(10,20));
   out.println("<p>页面变量sum的值为："+sum);
   //调用sumMethod方法
   out.println("<p>20到30之间的数之和是："+sumMethod(20,30));
   out.println("<p>页面变量sum的值为："+sum);
%>
</body>
</html>