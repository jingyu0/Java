public class Circle implements CalcArea{
    double radius;
    Circle(double radius){
        this.radius=radius;
    }

    public double getArea() {
        // TODO Auto-generated method stub
        return Math.PI*radius*radius;
    }

}