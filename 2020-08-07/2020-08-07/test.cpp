//public class Main {
//	public static void main(String[] args) {
//		ArrayList<String> l1 = new ArrayList<String>();
//		ArrayList<Integer> l2 = new ArrayList<Integer>();
//		l1.add("1");
//		l2.add(1);
//		System.out.println(l1.get(0).getClass());
//		System.out.println(l2.get(0).getClass());
//		System.out.println(l1.getClass() == l2.getClass());
//	}
//}

//public class Main {
//	public static void main(String[] args) {
//		int i = 0;
//		int res = 1;
//		while (true) {
//			try {
//				res += res / (i++);
//				System.out.println("No exception");
//			}
//			catch (Exception e) {
//				System.out.println("Zero exception");
//			}
//			finally {
//				System.out.print("In finally clause");
//				System.out.println(i);
//				if (i == 2) break;
//			}
//		}
//	}
//}



public static void main(String[] args) {
	try {
		test();
	}
	catch (Exception e) {
		e.printStackTrace();
	}
}

public static void test() throws Exception{
	try {
		throw new Exception("lalalala");
	}
	catch (RuntimeException e){
		e.printStackTrace();
	}
	finally {
		System.out.println("finally");
	}
}

//�����finally
//
//java.lang.Exception: lalalala
//
//at helloworld.exception.FinallyTeach.test(FinallyTeach.java:15)
//
//at helloworld.exception.FinallyTeach.main(FinallyTeach.java:7)

//���ۣ����ս���:
//�����쳣�Ƿ񱻲���finally�Ĵ���һ���ᱻִ�С�
//finally���ʺϴ���ͷ���Դ����������Ĵ���