package mybean.maths;
import mybean.maths.CounterBean;
public class CountPeople {
	boolean isCome=false;
	public long getCount(CounterBean countB){
		if (isCome==false){
		   countB.Counter();
		   isCome=true;
		}
		return countB.getCounter();
	}
}
