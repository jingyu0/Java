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
		out.println("<title> 联合银行-欢迎页面</title></head>");
		out.println("<body bgproperties=\"fixed\">");
		out.println("<table border=\"0\" width=\"100%\">");
		out.println("<tr>");
		out.println("<td width=\"18%\">");
		out.println("<img  src=\"bank2.gif\" align=\"middle\" width=\"150\" height=\"142\">");
		out.println("</td>");
		out.println("<td width=\"82%\" valign=\"middle\">");
		out.println("<b><font size=\"6\"><MARQUEE>欢迎光临联合银行</MARQUEE></font></b>");
		out.println("</td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("联合银行欢迎您的光临！联合银行是银行业中佼佼者，其业务覆盖金融业、医院、学校和个人，提供储蓄和各种按揭服务。可以从本站点其他部分了解更多的信息。另外本站点提供在线业务，你可以在本网站浏览你的帐户细节；如果还没有帐户，可通过本网站在线申请；你还可以通过本网络站提供的功能计算银行利息和外币兑换率");
		out.println("<p><b><font size=\"3\"><a href=\"Home_page.html\">请单击链接继续。</a></font></b></br>");
		out.println("该网页已经被访问 <b>"+String.valueOf(counter)+" </b>次！"+"\n");
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
