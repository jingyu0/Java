<HTML>
<%@page contentType= "text/html;charset=GBK"%>
<HEAD>
<title>���߽ɷ�</title>
</HEAD>
<table border="0" width="100%">
	<tr>    
	<td width="100%" height="40"> </td> 
	</tr>
	<tr>    
	<td width="100%"> <p align="center"><b><font size="5" color="#FF9900">���߽ɷѽ���</font></b></td> 
	</tr>
	<tr>    
	<td width="100%" height="40"> </td> 
	</tr>
</table>
<HR color="#FF9900" size="5">
<%@page import="java.util.*,java.sql.*,java.text.*,java.sql.Date"%>
<jsp:useBean id="db" class="bean.ConnDB" scope="session"/>
<% 	//�ӻỰ�л���ʺ�
        request.setCharacterEncoding("GBK");
        String fromNo=(String)session.getAttribute("txtAcNo");
        String businessType=request.getParameter("businessType");
        String userID=request.getParameter("userID");

          String toNo="";
        
 
        float amount= 0;
        boolean isValid=false;
        boolean needPay=false;//�Ƿ���Ҫ�ɷ�
        boolean isEnough=false;
try
{
	//��ѯpayInfo����ȡӦ�ɷѽ��ͶԴ��շ�ҵ��λ�������ʺ�
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
        
        if(needPay)//��Ҫ�ɷ�
        {//��ѯת���ʽ��ʻ��Ƿ����
	strQuery1="select * from AccountInfo where AccountNo='"+toNo+"'";
	rs1=db.executeQuery(strQuery1);
	while(rs1.next())
	{
                isValid=true;
 		break;
	}
	
	//��ѯ�û��ʻ��ʽ��Ƿ��㹻
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
	out.println("<center>Ŀǰ�㲻��Ҫ���ɺ���Ϊ"+userID+"��"+businessType);
	out.println("<A href=\"javascript:history.back()\">����</A></center>");
}
else
{
if(!isValid) 
{
	out.println("<center>�ɷ���Ϣ����ת���ʽ��ʺŲ�����!");
        out.println("<A href=\"javascript:history.back()\">����</A></center>");
}
else if(!isEnough)
{
	 out.println("<center>����ʻ��ʽ𲻹��ɷ�!");
         out.println("<A href=\"javascript:history.back()\">����</A></center>");
}
else if (isValid||isEnough)
{
try
{
        int row1=db.executeUpdate("update AccountInfo set balance=balance-"+amount+" where AccountNo='"+fromNo+"'");
        int row2=db.executeUpdate("update AccountInfo set balance=balance+"+amount+" where AccountNo='"+toNo+"'");
	int row=db.executeUpdate("delete payInfo where userID='"+userID+"' and businessType='"+businessType+"'");
        //��õ�ǰ����
        GregorianCalendar now=new GregorianCalendar();
        int year=now.get(Calendar.YEAR);
	int month=(now.get(Calendar.MONTH)+1);
	int day=now.get(Calendar.DAY_OF_MONTH);
	String monthStr=month>9?""+month:"0"+month;
	String dayStr=day>9?""+day:"0"+day;
	String nowStr=year+"-"+monthStr+"-"+dayStr; 
         

        //��ý�����ˮ��
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
        //���ڱ��ʻ������ۿ��¼�Ǽǵ����ݿ��TransCounterInfo��
        PreparedStatement pstmt=db.prepareStatement("INSERT INTO TransCounterInfo values(?,?,?,?,?)");
        pstmt.setString(1,fromTransID);
        pstmt.setString(2,fromNo);      
        pstmt.setString(3,nowStr);       
        pstmt.setFloat(4,amount);
        pstmt.setFloat(5,0);
	int row3=pstmt.executeUpdate();

        //��ý�����ˮ��
        tempID+=1;
        strTempID=String.valueOf(tempID);
        String toTransID="T";
        for (int i=0;i<9-strTempID.length();i++)
        toTransID+="0";
        toTransID+=strTempID;
        
        //����ת���ʽ��ʻ�����ת���ʽ��¼�Ǽǵ����ݿ��TransCounterInfo��
        pstmt=db.prepareStatement("INSERT INTO TransCounterInfo values(?,?,?,?,?)");
        pstmt.setString(1,toTransID);
        pstmt.setString(2,toNo);      
        pstmt.setString(3,nowStr);       
        pstmt.setFloat(4,0);
        pstmt.setFloat(5,amount);
	int row4=pstmt.executeUpdate();
	db.close();
        
	out.println("<center>����"+userID+"��"+businessType+"�Ѿ����壡");
        out.println("<p><A href=\"javascript:history.back()\">����</A></center>");
 
}
catch (Exception e){}
}
}
%>
</body>
</html>
</BODY>
</HTML>























