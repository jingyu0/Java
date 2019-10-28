<HTML>
<%@page contentType= "text/html;charset=GBK"%>
<HEAD>
<title>个人转帐</title>
</HEAD>
<table border="0" width="100%">
	<tr>    
	<td width="100%" height="40"> </td> 
	</tr>
	<tr>    
	<td width="100%"> <p align="center"><b><font size="5" color="#FF9900">个人转帐界面</font></b></td> 
	</tr>
	<tr>    
	<td width="100%" height="40"> </td> 
	</tr>
</table>
<HR color="#FF9900" size="5">
<%@page import="java.util.*,java.sql.*,java.text.*,java.sql.Date"%>
<jsp:useBean id="db" class="bean.ConnDB" scope="session"/>
<% 	//从会话中获得帐号
        String fromNo=(String)session.getAttribute("txtAcNo");
        String toNo=(String)request.getParameter("toNo");
	toNo=toNo.trim();
        String ownername=(String)request.getParameter("ownername");
        ownername=ownername.trim();

        float amount =Float.parseFloat(request.getParameter("amount"));
        boolean isValid=false;
        boolean isEnough=false;
        boolean isSuccessful=false;

try
{
	//查询转入资金帐户是否存在
	String strQuery1="select * from AccountInfo where AccountNo='"+toNo+"'";
	ResultSet rs1=db.executeQuery(strQuery1);
	while(rs1.next())
	{
		String ownernameT=rs1.getString("ownername");
                ownernameT=ownernameT.trim();
                if(ownername.equals(ownernameT)) 
                {
                   isValid=true;
                }
 		break;
	}
	
	//查询本帐户资金是否足够
	strQuery1="select * from AccountInfo where AccountNo='"+fromNo+"'";
	rs1=db.executeQuery(strQuery1);
	while(rs1.next())
	{
                float balance=rs1.getFloat("balance");
                if(balance>=amount) 
                {
                     isEnough=true;
                }
 		break;
	}
	rs1.close();
	db.close();
}
catch(Exception e){System.err.print(e+"error1");}
if(!isValid) out.println("<center>不存在这样的帐户!</center>");
else if(!isEnough) out.println("<center>资金不够!</center>");
else if (isValid||isEnough)
try
{
        int row1=db.executeUpdate("update AccountInfo set balance=balance-"+amount+" where AccountNo='"+fromNo+"'");
        int row2=db.executeUpdate("update AccountInfo set balance=balance+"+amount+" where AccountNo='"+toNo+"'");
        if ((row1>0)&&(row2>0)) isSuccessful=true;
        {
        //获得当前日期
        GregorianCalendar now=new GregorianCalendar();
        int year=now.get(Calendar.YEAR);
	int month=(now.get(Calendar.MONTH)+1);
	int day=now.get(Calendar.DAY_OF_MONTH);
	String monthStr=month>9?""+month:"0"+month;
	String dayStr=day>9?""+day:"0"+day;
	String nowStr=year+"-"+monthStr+"-"+dayStr; 
         

        //获得交易流水号
        String fromTransID="";
        String strQuery1="select * from TransCounterInfo ";
	ResultSet rs1=db.executeQuery(strQuery1);
	while(rs1.next()){ fromTransID=rs1.getString("transID");}
        int tempID=Integer.parseInt(fromTransID.substring(1))+1; 
        String strTempID=String.valueOf(tempID);
        fromTransID="T";
        for (int i=0;i<9-strTempID.length();i++)
        fromTransID+="0";
        fromTransID+=strTempID;
        //对于本帐户，将扣款记录登记到数据库表TransCounterInfo中
        PreparedStatement pstmt=db.prepareStatement("INSERT INTO TransCounterInfo values(?,?,?,?,?)");
        pstmt.setString(1,fromTransID);
        pstmt.setString(2,fromNo);      
        pstmt.setString(3,nowStr);       
        pstmt.setFloat(4,amount);
        pstmt.setFloat(5,0);
	row1=pstmt.executeUpdate();

        //获得交易流水号
        tempID+=1;
        strTempID=String.valueOf(tempID);
        String toTransID="T";
        for (int i=0;i<9-strTempID.length();i++)
        toTransID+="0";
        toTransID+=strTempID;
        
        //对于转入资金帐户，将转入资金记录登记到数据库表TransCounterInfo中
        //pstmt=db.prepareStatement("INSERT INTO TransCounterInfo values(?,?,?,?,?)");
        pstmt.setString(1,toTransID);
        pstmt.setString(2,toNo);      
        pstmt.setString(3,nowStr);       
        pstmt.setFloat(4,0);
        pstmt.setFloat(5,amount);
	row2=pstmt.executeUpdate();

	rs1.close();
	}
	out.println("<center>转帐成功！</center>");
	db.close();
}
catch (Exception e){}
%>

</body>
</html>
</BODY>
</HTML>























