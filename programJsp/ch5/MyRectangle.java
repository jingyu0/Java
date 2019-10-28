package mybean.maths;
import java.io.*;
public class  MyRectangle
{
	double length;
	double width;
	double area;
	public MyRectangle(){
		//构造函数
		length=0;
		width=0;
	}
	public void setLength(double length){
		//设置长
		this.length=length;
	}
	public double getLength(){
		//得到长
		return length;
	}
	public void setWidth(double width){
		//设置宽
		this.width=width;
	}
	public double getWidth(){
		//得到宽
		return width;
	}
	public double getArea(){
		//求矩形面积
		double faceArea=length*width;
		return faceArea;
	}
s}
