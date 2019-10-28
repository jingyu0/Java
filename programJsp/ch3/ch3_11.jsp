<%@ page contentType="text/html;charset=GB2312" %>
<html>
<head><title>特殊字符使用示例&lt;html&&gt;</title>
</head>
<body>
这在HTML标记中的示例：<p>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;html&gt;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;body&gt;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&amp;=&amp;amp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;=&amp;quot;
<p>这是在程序片中的示例：
<p>
<% 
   out.println("\"&lt;jsp&gt;\"");
%>
</body>
</html>