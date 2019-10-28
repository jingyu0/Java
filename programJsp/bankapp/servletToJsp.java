import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
public class  servletToJsp extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException 
	{
		try
		{
		counter++;
		request.setAttribute("servletName","servletToJsp");
//		getServletConfig().getServletContext().getRequestDispatcher("Welcome.jsp").forward(request,response);
		
		request.getRequestDispatcher("Welcome.jsp").forward(request,response);
		}catch(Exception ex){ex.printStackTrace();}

	}
}
