import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.sql.*;
public class  Counter extends HttpServlet
{
	static int counter;
	protected Connection conn;
	
	public void  init()
	{
	   try
	   {
	   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	   conn=DriverManager.getConnection("jdbc:odbc:bank");
	   Statement stmt=conn.createStatement();
	   ResultSet rs=stmt.executeQuery("select * from countertable");
	   if (rs.next()) counter=rs.getInt("counter");
	   }
	   catch(Exception e){e.printStackTrace();}
	 }
	   
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException 
	{
		try
		{
		counter++;
		Statement stmt=conn.createStatement();
	    stmt.executeUpdate("delete  from countertable");
	    PreparedStatement pstmt=conn.prepareStatement("insert into countertable values(?)");
	    pstmt.setInt(1,counter);
	    pstmt.executeUpdate();
	    pstmt.close();
	    stmt.close();
	   
		response.setContentType("text/html");
        PrintWriter out=response.getWriter();
		out.println("<html>");
		out.println("<head><TITLE> ��������-��ӭҳ�� </TITLE></head>");
		out.println("<BODY bgproperties=\"fixed\" bgcolor=\"#CCCFF\">");
		out.println("<p><b><font><font size=\"6\">��ӭ������������</font></font></b></p>");
		out.println("�������л�ӭ���Ĺ��٣���������������ҵ��ٮٮ�ߣ���ҵ�񸲸ǽ���ҵ��ҽԺ��ѧУ�͸��ˣ��ṩ����͸��ְ��ҷ��񡣿��Դӱ�վ�����������˽�������Ϣ�����Ȿվ���ṩ����ҵ��������ڱ�վ���������ʻ�ϸ�ڣ������û���ʻ�����ͨ����վ���������룻�㻹����ͨ����վ���ṩ�Ĺ��ܼ���������Ϣ����Ҷһ���");
        out.println("<p><b><font size=\"3\"><a href=\"Home_page.htm\">�뵥�����Ӽ�����</a></font></b></p>");
		out.println("���ǵ�"+counter+"��������");
		out.println("</body></html>");
		
		}catch(Exception ex){ex.printStackTrace();}

	}

		public void destroy()
	   {
	   try
	   {
       conn.close();

	   }
	   catch(Exception e){e.printStackTrace();}
	 }
}
