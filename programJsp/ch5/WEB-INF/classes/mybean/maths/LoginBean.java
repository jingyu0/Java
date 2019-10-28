package mybean.maths;
import java.io.*;
public class LoginBean
{
	private String loginName=null;
	private String password=null;
	public void LoginBean(){
	}
	public void setLoginName(String s){
		loginName=s;
	}
	public String getLoginName(){
		return loginName;
	}
	public void setPassword(String s){
		password=s;
	}
	public String getPassword(){
		return password;
	}
	public boolean check(){
		if("yang".equals(loginName)&& "yang".equals(password))
     		return true;
		else
			return false;
	}
    /*public static void main(String[] args) 
	{
		LoginBean stu=new LoginBean();
		stu.setLoginName("yang");
		stu.setPassword("yang");
		System.out.println(stu.check());
	}*/
}