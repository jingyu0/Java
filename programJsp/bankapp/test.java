import java.sql.*;
class  test
{
	public static void main(String[] args) 
	{
	try
	{
	
	String str1,str2,str3,str4;

	str2="A00001";
	
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection conn2=DriverManager.getConnection("jdbc:odbc:bank");
	Statement stmt2=conn2.createStatement();
	String strQuery2="select * from AccountInfo where accountNo='"+str2+"'";
	String transID;
	
	ResultSet rs2=stmt2.executeQuery(strQuery2);
	while(rs2.next())
	{
		transID=rs2.getString("accountType");
		System.out.println(transID);
	}
	
	}catch(Exception e){System.out.println(e);}
	}
}
