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
<% //����sumMethod����
   out.println("<p>10��20֮�����֮���ǣ�"+sumMethod(10,20));
   out.println("<p>ҳ�����sum��ֵΪ��"+sum);
   //����sumMethod����
   out.println("<p>20��30֮�����֮���ǣ�"+sumMethod(20,30));
   out.println("<p>ҳ�����sum��ֵΪ��"+sum);
%>
</body>
</html>