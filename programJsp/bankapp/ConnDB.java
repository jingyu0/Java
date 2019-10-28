import java.sql.*;
public class  ConnDB
{
	String strDBDriver="sun.jdbc.odbc.JdbcOdbcDriver";
	String strConn="jdbc:odbc:bank";
	Connection conn=null;
	ResultSet rs=null;
	public ConnDB()
	{
		try{
		Class.forName(strDBDriver);
		}
		catch(java.lang.ClassNotFoundException e){
			System.err.println(e.getMessage());
		}
	}

	public ResultSet executeQuery(String sql)
	{
		try{
		conn=DriverManager.getConnection(strConn);
		Statement stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		}
		catch(SQLException e){
			System.err.println(e.getMessage());
		}
		return rs;
	}

	public int executeUpdate(String sql)
	{
		int row=0;
		try{
		conn=DriverManager.getConnection(strConn);
		Statement stmt=conn.createStatement();
		row=stmt.executeUpdate(sql);
		}
		catch(SQLException e){
			System.err.println(e.getMessage());
		}
		return row;
	}
	public PreparedStatement prepareStatement(String sql)
	{
		PreparedStatement pstmt=null;
		try{
		conn=DriverManager.getConnection(strConn);
		pstmt=conn.prepareStatement(sql);
		}
		catch(SQLException e){System.err.println(e.getMessage());}

		return pstmt;
	}
		
	public void close()
	{
		if (conn!=null)
		{
			try{
				conn.close();
			}
			catch(SQLException e){
			System.err.println(e.getMessage());
			}
		}
	}
}
