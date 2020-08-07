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

//输出：finally
//
//java.lang.Exception: lalalala
//
//at helloworld.exception.FinallyTeach.test(FinallyTeach.java:15)
//
//at helloworld.exception.FinallyTeach.main(FinallyTeach.java:7)

//结论：最终结论:
//无论异常是否被捕获，finally的代码一定会被执行。
//finally里适合存放释放资源、后续处理的代码