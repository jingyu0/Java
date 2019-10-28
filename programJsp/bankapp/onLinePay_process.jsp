<HTML>
<%@page contentType= "text/html;charset=GBK"%>
<HEAD>
<title>在线缴费</title>
</HEAD>
<table border="0" width="100%">
	<tr>    
	<td width="100%" height="40"> </td> 
	</tr>
	<tr>    
	<td width="100%"> <p align="center"><b><font size="5" color="#FF9900">在线缴费界面</font></b></td> 
	</tr>
	<tr>    
	<td width="100%" height="40"> </td> 
	</tr>
</table>
<HR color="#FF9900" size="5">
<%@page import="java.util.*,java.sql.*,java.text.*,java.sql.Date"%>
<jsp:useBean id="db" class="bean.ConnDB" scope="session"/>
<% 	//从会话中获得帐号
        request.setCharacterEncoding("GBK");
        String fromNo=(String)session.getAttribute("txtAcNo");
        String businessType=request.getParameter("businessType");
        String userID=request.getParameter("userID");

          String toNo="";
        
 
        float amount= 0;
        boolean isValid=false;
        boolean needPay=false;//是否需要缴费
        boolean isEnough=false;
try
{
	//查询payInfo，获取应缴费金额和对代收费业务单位的银行帐号
	String strQuery1="select * from payInfo where userID='"+userID+"' and businessType='"+businessType+"'";
	ResultSet rs1=db.executeQuery(strQuery1);
	while(rs1.next())
	{
		toNo=(String)rs1.getString("toAccountNo");
                toNo=toNo.trim();
                needPay=true;
                amount=rs1.getFloat("fee");
               break;
	}
        
        if(needPay)//需要缴费
        {//查询转入资金帐户是否存在
	strQuery1="select * from AccountInfo where AccountNo='"+toNo+"'";
	rs1=db.executeQuery(strQuery1);
	while(rs1.next())
	{
                isValid=true;
 		break;
	}
	
	//查询用户帐户资金是否足够
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
}
catch(Exception e){System.err.print(e+"error1");}
if(!needPay) 
{
	out.println("<center>目前你不需要缴纳号码为"+userID+"的"+businessType);
	out.println("<A href=\"javascript:history.back()\">返回</A></center>");
}
else
{
if(!isValid) 
{
	out.println("<center>缴费信息出错！转入资金帐号不存在!");
        out.println("<A href=\"javascript:history.back()\">返回</A></center>");
}
else if(!isEnough)
{
	 out.println("<center>你的帐户资金不够缴费!");
         out.println("<A href=\"javascript:history.back()\">返回</A></center>");
}
else if (isValid||isEnough)
{
try
{
        int row1=db.executeUpdate("update AccountInfo set balance=balance-"+amount+" where AccountNo='"+fromNo+"'");
        int row2=db.executeUpdate("update AccountInfo set balance=balance+"+amount+" where AccountNo='"+toNo+"'");
	int row=db.executeUpdate("delete payInfo where userID='"+userID+"' and businessType='"+businessType+"'");
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
        rs1.close();
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
	int row3=pstmt.executeUpdate();

        //获得交易流水号
        tempID+=1;
        strTempID=String.valueOf(tempID);
        String toTransID="T";
        for (int i=0;i<9-strTempID.length();i++)
        toTransID+="0";
        toTransID+=strTempID;
        
        //对于转入资金帐户，将转入资金记录登记到数据库表TransCounterInfo中
        pstmt=db.prepareStatement("INSERT INTO TransCounterInfo values(?,?,?,?,?)");
        pstmt.setString(1,toTransID);
        pstmt.setString(2,toNo);      
        pstmt.setString(3,nowStr);       
        pstmt.setFloat(4,0);
        pstmt.setFloat(5,amount);
	int row4=pstmt.executeUpdate();
	db.close();
        
	out.println("<center>号码"+userID+"的"+businessType+"已经缴清！");
        out.println("<p><A href=\"javascript:history.back()\">返回</A></center>");
 
}
catch (Exception e){}
}
}
%>
</body>
</html>
</BODY>
</HTML>























