<HTML>
<frameset cols="25%,*" border=0>
<%
session.setAttribute("txtAcNo",request.getParameter("txtAcNo"));
%>
<frame name="mytop" src="left.jsp">
<frame name="details" src="welcomep.jsp">
</frameset>
</HTML>
