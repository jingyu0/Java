import java.sql.*;
import java.io.*;
class Insert1 
{	
	public static void main(String[] args) 	
	{	  
		try		
		{		   
			ConnDB db=new ConnDB();	
			PreparedStatement stmt=db.prepareStatement("INSERT INTO AccountInfo VALUES(?,?,?,?,?,?,?,?,?)");	
			//在表的各个字段插入数据
			stmt.setString(1,"A00001");
			stmt.setString(2,"Mike");
			stmt.setInt(3,10000);
			stmt.setString(4,"储蓄帐户");
			stmt.setString(5,"深圳");
			stmt.setString(6,"110108197685432");
			stmt.setString(7,"深圳市红岭中路1011号");
			stmt.setString(8,"82133846");
			stmt.setString(9,"mike@nonexisted.com.cn");
			//执行修改
			int rows=stmt.executeUpdate();	
			System.out.println(rows+" row(s) affected");	
			db.close();	 
		}
		catch(Exception e){System.out.print(e);}	
	}
}



