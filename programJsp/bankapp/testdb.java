import java.sql.Date;
import java.sql.*;
import java.util.*;
import java.text.DateFormat;
class testdb 
{
	public static void main(String[] args) 
	{
		String ownerName="¡ıΩ°øµ";
String idNo="10219845673237";
String branch="…Ó€⁄";
String accountType="¥¢–Ó’ ªß";
String address="…Ó€⁄∫Ï¡Î÷–¬∑1012∫≈C◊˘13¬•34A";
String phone="82130867";
String mail="liujk@nonexisted.com.cn";
int row=0;
ConnDB mydb=new ConnDB();
try	
{	int reqNum=0;	
	ResultSet rs=mydb.executeQuery("select * from reqNum");
	while(rs.next())
	{
		reqNum=rs.getInt("reqnum");
	}
  	mydb.executeUpdate("UPDATE reqNum set reqnum=reqnum+1");
	rs.close();
        PreparedStatement  stmt=mydb.prepareStatement("INSERT INTO  AccountReq VALUES(?,?,?,?,?,?,?,?)");
	stmt.setInt(1,reqNum);
	stmt.setString(2,ownerName);
	stmt.setString(3,idNo);
	stmt.setString(4,branch);
	stmt.setString(5,accountType);
	stmt.setString(6,address);
	stmt.setString(7,phone);
	stmt.setString(8, mail);
	//row=stmt.executeUpdate();
	System.out.println(row);
	mydb.close();
}
catch(Exception e){System.err.print(e);}
	}
}
