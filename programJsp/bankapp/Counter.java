import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.sql.*;
public class  Counter extends HttpServlet
{
	static int counter;

	public void  init()
	{
	   try
	   {

	   RandomAccessFile raf=new RandomAccessFile("counter.txt","rw");
	   if (raf.length()==0)
	   {
	   raf.seek(0);
	   raf.writeInt(0);
	   }
	   raf.seek(0);
	   counter=raf.readInt();
	   }

	   catch(Exception e){e.printStackTrace();}
	 }


	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException
	{
		counter++;
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

	}

		public void destroy()
	   {
	   try
	   {
	   RandomAccessFile raf=new RandomAccessFile("counter.txt","rw");
	   raf.seek(0);
	   raf.writeInt(counter);
	   }
	   catch(Exception e){e.printStackTrace();}
	   }
}
