public class arr<E> {
	
  private E[] data;
  private int size;
  
  //构造函数，传入数组的容量capacity构造Array
  @SuppressWarnings("unchecked")
public arr(int capacity){
	  data = (E[])new Object[capacity];
	  size=0;
  }
  
  //无参构造，默认数组的容量是capacity=10
  public arr(){
	  this(10);
  }
  
  //获取数组的容量
  public int getCapacity(){
	  return data.length;
  }
  
  //获取数组中的元素个数
  public  int getSize(){
	  return size;
  }
  
  //判空
  public boolean is_empty(){
	  return size==0;
  }
  
  //判满
  public boolean is_full(){
	  return size>=10;
  }
  
  //插入元素e到index索引位置
  public void arr_push(int index,E e){
	  if(is_empty()||is_full())
		  throw new IllegalArgumentException("push failed!");
	  
	  if(size==data.length)
		  resize(2*data.length);
	  
	  for(int i=size-1;i>=index;i--)
		  data[i+1]=data[i];
	  
	  data[index]=e;
	  size++;
	  
  }
  private void resize(int i) {
	// TODO Auto-generated method stub
	
}
  
 //向所有元素后添加一个新元素
  public void addLast(E e){
	  arr_push(size,e);
  }
  
  //向所有元素前添加一个新元素
  public void addFirst(E e){
	  arr_push(0,e);
  }
  
  //获取Index索引位置的元素
  public E get(int index){
	  if(is_empty()||is_full())
		  throw new IllegalArgumentException("get failed!");
	  return data[index];
  }
  
  public E getLast(){
	  return get(size-1);
  }
  
  public E getFirst(){
	  return  get(0);
  }

  //修改index索引位置的元素为e
  public void set(int index,E e){
	  if(is_empty()||is_full())
		  throw new IllegalArgumentException("set failed!");
	  data[index]=e;
  }
  
  //查找数组中是否有元素e
  public boolean contains(E e){
	  for(int i=0;i<size;i++){
		  if(data[i].equals(e))
		  return true;
	  }
	  return false;
  }
  
  //查找数组中元素e所在的索引，如果不存在元素e，返回-1
  public int find(E e){
	  for(int i=0;i<size;i++){
		  if(data[i].equals(e))
		  return i;
	  }
	  return -1;
  }
  
  //从数组中删除index位置的元素，返回删除的元素
  public E remove(int index){
	  if(is_empty()||is_full())
		  throw new IllegalArgumentException("remove failed!");
	  
	  E ret=data[index];
	  for(int i=index+1;i<size;i++)
		  data[i-1]=data[i];
	  size--;
	  data[size]=null;
	  
	  if(size==data.length/4 &&data.length/2!=0)
		  resize(data.length/2);
	  return ret;
  }
  
  //从数组中删除第一个元素，返回删除的元素
  public E removeFirst(){
	  return remove(0);
  }
  
  //从数组中删除最后一个元素，返回删除的元素
  public E removeLast(){
	  return remove(size-1);
  }
  
  //从数组只删除元素e
  public void removeElement(E e){
	  int index=find(e);
	  if(index!=-1)
		  remove(index);
  }
  
  public String toString(){
	  StringBuilder res=new StringBuilder();
	  res.append(String.format("Array:size=%d,capacity=%d\n", size,data.length));
	  res.append('[');
	  for(int i=0;i<size;i++){
		  res.append(data[i]);
		  if(i!=size-1)
			  res.append(", ");
	  }
	  res.append(']');
      return res.toString();
  }
  
  //将数组空间的容量变成newCapaCity大小
  @SuppressWarnings({ "unchecked", "unused" })
private void resize1(int newCapacity){
	  
	  E[]newData=(E[])new Object[newCapacity];
	  for(int i=0;i<size;i++)
		  newData[i]=data[i];
	  data = newData;
  }

}

