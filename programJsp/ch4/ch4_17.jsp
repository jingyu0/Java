<%@ page contentType="text/html;charset=GB2312"%>
<html>
<head>
<title>计数器示例</title>
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
<p>欢迎访问本站，您是第
<%= yournumber%>个访问用户。
</body>
</html>


