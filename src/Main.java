

import java.util.Random;

public class Main {

   
	private static double testQueue(Queue<Integer> q, int opCount){

        long startTime = System.nanoTime();

        Random random = new Random();
        for(int i = 0 ; i < opCount ; i ++)
            q.enqueue(random.nextInt(Integer.MAX_VALUE));
        for(int i = 0 ; i < opCount ; i ++)
            q.dequeue();

        long endTime = System.nanoTime();

        return (endTime - startTime) / 1000000000.0;
    }

    public static void main(String[] args) {
    	 int opCount = 100000;
    	 
    	 //数组队列
    	 //优点：get和set方法调用容易
    	 //缺点：插入与删除的时间空间开销小
    	 //适用于频繁查询与获取数据
    	 ArrayQueue<Integer> arrayQueue = new ArrayQueue<Integer>();
         double time1 = testQueue(arrayQueue, opCount);
         System.out.println("ArrayQueue, time: " + time1 + " s");

         //循环队列
         LoopQueue<Integer> loopQueue = new LoopQueue<Integer>();
         double time2 = testQueue(loopQueue, opCount);
         System.out.println("LoopQueue, time: " + time2 + " s");

         //双向链表--有效率的实现双向遍历
         //优点：插入与删除的开销小
         //缺点：定位查找难
         //适用于频繁的增加与删除数据
         LinkedListQueue<Integer> linkedListQueue = new LinkedListQueue<Integer>();
         double time3 = testQueue(linkedListQueue, opCount);
         System.out.println("LinkedListQueue, time: " + time3 + " s");
    }
}