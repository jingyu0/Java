import java.sql.*;
import bean.*;
public class  TestDB
{

           public static void main(String[] args)throws Exception{
    		String sql="select * from reqnum";
		ResultSet rs=new ConnDB().executeQuery(sql);
		if(rs.next()){
			System.out.println(rs.getInt(1));
                                   }


}
}
