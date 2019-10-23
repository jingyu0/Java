
public class ArrayStack<E> implements Stack<E> {
	
	private arr<E> array;
	
	public ArrayStack(int capacity){
		array=new arr<E>(capacity);
	}
	
	public ArrayStack(){
		array=new arr<E>();
	}

	@Override
	public int getSize() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean isEmpty() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public E peek() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public E pop() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void push(E e) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	  public String toString(){
		  StringBuilder res=new StringBuilder();
		  res.append("Stack: ");
		  res.append('[');
		  for(int i=0;i<array.getSize();i++){
			  res.append(array.get(i));
			  if(i!=array.getSize()-1)
				  res.append(", ");
		  }
		  res.append("] top");
	      return res.toString();
	  }
	  
	}

