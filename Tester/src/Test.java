public class Test{
    public static void main(String []args){
        CalcArea recShape = new Rectangle(2.7,4.8);
        CalcArea cirShape = new Circle(5.0);
        System.out.println("三角形的面积为："+recShape.getArea());
        System.out.println("圆的面积为："+cirShape.getArea());
    }
}