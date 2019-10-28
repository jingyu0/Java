import java.io.*;
public class Student
{
	String name=null;
	long number;
	String sex=null;
	double height,weight;
	public String getNames(){
		return name;
	}
	public void setName(String s){
		name=s;
	}
	public long getNumber(){
		return number;
	}
	public void setNumber(long num){
		number=num;
	}
	public String getSex(){
		return sex;
	}
	public void setSex(String s){
		sex=s;
	}
	public double getHeight(){
		return height;
	}
	public void setHeight(double height){
		this.height=height;
	}
	public double getWeight(){
		return weight;
	}
	public void setWeight(double weight){
		this.weight=weight;
	}
}
