import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
public class  Welcome extends HttpServlet
{
	static int counter;
	public void  init()
	{
   try
        {
           BufferedReader in=new BufferedReader(new FileReader("counter.txt"));
           String s=in.readLine();
           if (s!=null)
           {
               counter=Integer.parseInt(s);
           }
           else
               counter=0;
        }
        catch(IOException e){}

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
            PrintWriter out=new PrintWriter(new FileOutputStream("counter.txt"),true);
            out.println(counter);
            System.out.println(counter);
        }
        catch(IOException e){}
    }

}
