import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.sql.*;
public class  Welcome extends HttpServlet
{
	static int counter;
	public void  init()
	{
   try
        {
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection conn=DriverManager.getConnection("jdbc:odbc:bank","sa","");
                  Statement stmt=conn.createStatement();
	String strQuery="select * from viewNum";
	ResultSet rs=stmt.executeQuery(strQuery);
	if(rs.next())
	  	counter=rs.getInt(1);
	else
              		 counter=0;
	if(rs!=null)  rs.close();
                 if(stmt!=null)  stmt.close();
                 if(conn!=null) conn.close();
        } catch(Exception e){}

 }


	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException 
	{
		response.setContentType("text/HTML;charset=GB2312");
		PrintWriter out=response.getWriter();
		counter++;
		out.println("<HTML>");
		out.println("<head>");
		out.println("<title> ��������-��ӭҳ��</title></head>");
		out.println("<body bgproperties=\"fixed\">");
		out.println("<table border=\"0\" width=\"100%\">");
		out.println("<tr>");
		out.println("<td width=\"18%\">");
		out.println("<img  src=\"bank2.gif\" align=\"middle\" width=\"150\" height=\"142\">");
		out.println("</td>");
		out.println("<td width=\"82%\" valign=\"middle\">");
		out.println("<b><font size=\"6\"><MARQUEE>��ӭ������������</MARQUEE></font></b>");
		out.println("</td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("�������л�ӭ���Ĺ��٣���������������ҵ��ٮٮ�ߣ���ҵ�񸲸ǽ���ҵ��ҽԺ��ѧУ�͸��ˣ��ṩ����͸��ְ��ҷ��񡣿��Դӱ�վ�����������˽�������Ϣ�����Ȿվ���ṩ����ҵ��������ڱ���վ�������ʻ�ϸ�ڣ������û���ʻ�����ͨ������վ�������룻�㻹����ͨ��������վ�ṩ�Ĺ��ܼ���������Ϣ����Ҷһ���");
		out.println("<p><b><font size=\"3\"><a href=\"Home_page.html\">�뵥�����Ӽ�����</a></font></b></br>");
		out.println("����ҳ�Ѿ������� <b>"+String.valueOf(counter)+" </b>�Σ�"+"\n");
     	out.println("</body>");
		out.println("</HTML>");

	}

	  public void destroy()
	 {
        try
        {
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection conn=DriverManager.getConnection("jdbc:odbc:bank","sa","");
                  Statement stmt=conn.createStatement();
	String strUpdate="update viewnum set  num="+counter;
	int rows=stmt.executeUpdate(strUpdate);
                 if(stmt!=null)  stmt.close();
                 if(conn!=null) conn.close();
        }
        catch(Exception e){}
    }

}
