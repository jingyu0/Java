package mybean.maths;
public class CounterBean {
	long counter=0;
	public long getCounter() {
		return counter;
	}
	synchronized public void  Counter() {
	    this.counter ++;
	}
}
