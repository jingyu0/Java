<%@ page contentType="text/html;charset=GB2312"%>
<html>
<head>
<title>������ʾ��</title>
</head>
<body>
<%!
  synchronized void countPeople(){
      ServletContext application =getServletContext();
	  Integer number=(Integer)application.getAttribute("Count");
	  if(number==null){
		 number=new Integer(1);
		 application.setAttribute("Count",number);
	  }
	  else{
		 number=new Integer(number.intValue()+1);
		 application.setAttribute("Count",number);
	  }		  
  }  
%>
<%    
  Integer personnum=(Integer)application.getAttribute("Count");
  if(session.isNew() | personnum==null){
	   countPeople();
  }
  Integer yournumber=(Integer)application.getAttribute("Count");   
%>
<p>��ӭ���ʱ�վ�����ǵ�
<%= yournumber%>�������û���
</body>
</html>


