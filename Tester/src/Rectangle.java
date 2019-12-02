public class Rectangle implements CalcArea{
    double length;
    double width;
    Rectangle(double length,double width){
        this.length=length;
        this.width=width;
    }

    public double getArea() {
        // TODO Auto-generated method stub
        return length*width;
    }
}