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
			//�ڱ�ĸ����ֶβ�������
			stmt.setString(1,"A00001");
			stmt.setString(2,"Mike");
			stmt.setInt(3,10000);
			stmt.setString(4,"�����ʻ�");
			stmt.setString(5,"����");
			stmt.setString(6,"110108197685432");
			stmt.setString(7,"�����к�����·1011��");
			stmt.setString(8,"82133846");
			stmt.setString(9,"mike@nonexisted.com.cn");
			//ִ���޸�
			int rows=stmt.executeUpdate();	
			System.out.println(rows+" row(s) affected");	
			db.close();	 
		}
		catch(Exception e){System.out.print(e);}	
	}
}



