//实现一个student类
public class Student {
    String school;
    int studentNumber;
    String gender;
    String birthdate;
    String name;
    int score;
    void setName(){
        System.out.println("姓名："+name);
    }
    void setScore(){
        System.out.println("成绩："+score);
    }

    public  static void main (String[] args){
        Undergraduate under1 = new Undergraduate();
        under1.school="西安财大";
        under1.studentNumber=170000;
        under1.gender="三年级";
        under1.birthdate= "1999.12.15";
        under1.name="JingYu Sun";
        under1.score=99;
        under1.department="信息专业";
        under1.major="软件工程";
        under1.setName();
        System.out.println("生日："+under1.birthdate);
        System.out.println("年级："+under1.gender);
        System.out.println("学校："+under1.school);
        System.out.println("学号："+under1.studentNumber);
        under1.setScore();
        under1.setDepartment();
        under1.setMajor();
    }
}

class Undergraduate extends Student {
    String department;
    String major;
    void setDepartment(){
        System.out.println("系别："+department);
    }
    void setMajor(){
        System.out.println("专业："+major);
    }
}
