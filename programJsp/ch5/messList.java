package mybean.maths;
import java.util.ArrayList;
class chString{
	public String handleString(String s){
		String str=s;
		try{
			byte b[]=str.getBytes("ISO-8859-1");
		    str=new String(b);
		}
		catch(Exception ee){}		
		return str;
	}
}
class message{
	String title=null;
	String author=null;
	String mess=null;
	long num;
	chString chstr=new chString();
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = chstr.handleString(title);
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author=chstr.handleString(author);
	}
	public String getMess() {
		return mess;
	}
	public void setMess(String mess) {
		this.mess =chstr.handleString(mess);
	}
	public long getNum() {
		return num;
	}
	public void setNum(long num) {
		this.num = num;
	}
}
public class messList {
    ArrayList<message> messL=null;    
    long number;
	public messList(){
    	messL=new ArrayList<message>();
    	number=0;
    }
	synchronized public void add(String author,String title,
			String mess){
			if(!("".equals(author)||"".equals(title)
				||"".equals(mess))){
	    	number++;
	    	message mtemp=new message();
	    	mtemp.setAuthor(author);
	    	mtemp.setMess(mess);
	    	mtemp.setTitle(title);
	    	mtemp.setNum(number);
	    	messL.add(mtemp);
		}
    }
	public StringBuffer getMessSet(){
		StringBuffer strWatch=new StringBuffer();
		for(message me:messL){
			strWatch.append("<br>");
			strWatch.append("No:"+me.getNum());
			strWatch.append("<br>标题：");
			strWatch.append(me.getTitle());
			strWatch.append("<br>姓名：");
			strWatch.append(me.getAuthor());
			strWatch.append("<br>内容：<br>");
			strWatch.append(me.getMess()+"<br>");
		}
		return strWatch;
	}
}
