
public class main {

	/**
	 * @param args
	 */
	public main(String[] args) {
		// TODO Auto-generated method stub
		ArrayStack<Integer> stack= new ArrayStack<Integer>();
		
		for(int i=0;i<5;i++){
			stack.push(i);
			System.out.println(stack);
		}
		stack.pop();
		System.out.println(stack);
	}
}
