import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
public class  Counter extends HttpServlet
{
	static int counter=0;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException 
	{
		try
		{
		counter++;
		request.setAttribute("counter",String.valueOf(counter));

		request.getRequestDispatcher("Welcome.jsp").forward(request,response);
		}catch(Exception ex){ex.printStackTrace();}

	}
}
