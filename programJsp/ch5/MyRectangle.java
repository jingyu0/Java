package mybean.maths;
import java.io.*;
public class  MyRectangle
{
	double length;
	double width;
	double area;
	public MyRectangle(){
		//���캯��
		length=0;
		width=0;
	}
	public void setLength(double length){
		//���ó�
		this.length=length;
	}
	public double getLength(){
		//�õ���
		return length;
	}
	public void setWidth(double width){
		//���ÿ�
		this.width=width;
	}
	public double getWidth(){
		//�õ���
		return width;
	}
	public double getArea(){
		//��������
		double faceArea=length*width;
		return faceArea;
	}
s}
