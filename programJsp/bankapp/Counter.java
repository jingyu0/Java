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
		out.println("<head><TITLE> 联合银行-欢迎页面 </TITLE></head>");
		out.println("<BODY bgproperties=\"fixed\" bgcolor=\"#CCCFF\">");
		out.println("<p><b><font><font size=\"6\">欢迎光临联合银行</font></font></b></p>");
		out.println("联合银行欢迎您的光临！联合银行是银行业中佼佼者，其业务覆盖金融业、医院、学校和个人，提供储蓄和各种按揭服务。可以从本站点其他部分了解更多的信息。另外本站点提供在线业务，你可以在本站点浏览你的帐户细节；如果还没有帐户，可通过本站点在线申请；你还可以通过本站点提供的功能计算银行利息和外币兑换率");
        out.println("<p><b><font size=\"3\"><a href=\"Home_page.htm\">请单击链接继续。</a></font></b></p>");
		out.println("你是第"+counter+"个访问者");
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
