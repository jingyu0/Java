<%@  page contentType="text/html;charset=GB2312" %>
<html>
  <head>
    <title>include指令示例</title>
	<link href="mystylesheet.css" rel="stylesheet" type="text/css" />
  </head>  
  <body class="twoColHybLtHdr">
    <div id="container">
      <div id="header">
      <%@ include file="head.txt" %>
      </div>
      <div id="sidebar1">
       <%@ include file="left.txt" %>
      </div>
      <div id="mainContent">
	  <font size="6" color="red">
      <p>这是考试报名页面</p>
	  </font>
      </div>
      <%@  include file="footer.txt" %>
    </div>
  </body>
</html>  

