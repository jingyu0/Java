<HTML>
<BODY BGCOLOR="#FFFFFF">
<%@page contentType= "text/html;charset=GBK"%>
<%@page import="java.util.*,java.sql.*,java.text.*,java.sql.Date"%>
<jsp:useBean id="db" class="bean.ConnDB" scope="session"/>
<!-flag��ʶ�������Ϣ�Ƿ������ݿⱣ�����Ϣƥ�䣬0-��ƥ�䣬1-ƥ��>
<%! int flag=0;%>		
<%	
	//���������txtAcNo��ȡ������ʺ�
	String actNumber=(String)request.getParameter("txtAcNo");
	//���������txtPwd��ȡ���������
	String password=(String)request.getParameter("txtPwd");
	actNumber=actNumber.trim();
	password=password.trim();
try	
{		
	//�������ݿ⣬���ʺ�Ϊ�ؼ��ֲ�ѯ�û�������ʺ��������Ƿ����
	//AccountNo�е�һ��
	String strQuery="select * from LoginInfo where AccountNo='"+actNumber+"'";
	ResultSet rs=db.executeQuery(strQuery);
	String pwd;
	while(rs.next())
	{
		pwd=(String)rs.getString("password");
		pwd=pwd.trim();
		//�������Ҳһ����������flag=1����ʾ��¼�ɹ�
		if( (pwd.equals(password))&& (pwd.length()!=0))
		{
			flag=1;
			break;
		}
	}
	rs.close();
	db.close();
}
catch(Exception e){System.err.print(e);}
//�����¼�ɹ�������ת����������ҳ��
if (flag==1)
{
%>
	<jsp:forward page="person_bank.jsp" />
<%
}
%>
<!-����Ĵ����ڵ�¼���ɹ�ʱ��ִ�У�������ͼ8-4ҳ��>
<center>
<p><font  color="#FF0000">��ĵ�¼��Ϣ����
<a href="javaScript:history.back();">����</A>
</center>
</BODY>
</HTML>

