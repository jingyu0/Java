
public class Tester {
    static    CalcArea[] shapes = { new Circle(1.0), new Rectangle(3.0, 4.0), new Circle(8.0) };
    public static void main(String[] args) {
        System.out.println("total area = " + sumArea(shapes));
    }
    public static double sumArea(  CalcArea[] shapes) {
        double sum = 0;
        for(CalcArea c:shapes) {
            sum=sum+c.getArea();
        }
        return sum;
    }
}
