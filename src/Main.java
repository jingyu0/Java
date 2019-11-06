

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
    	 
    	 //�������
    	 //�ŵ㣺get��set������������
    	 //ȱ�㣺������ɾ����ʱ��ռ俪��С
    	 //������Ƶ����ѯ���ȡ����
    	 ArrayQueue<Integer> arrayQueue = new ArrayQueue<Integer>();
         double time1 = testQueue(arrayQueue, opCount);
         System.out.println("ArrayQueue, time: " + time1 + " s");

         //ѭ������
         LoopQueue<Integer> loopQueue = new LoopQueue<Integer>();
         double time2 = testQueue(loopQueue, opCount);
         System.out.println("LoopQueue, time: " + time2 + " s");

         //˫������--��Ч�ʵ�ʵ��˫�����
         //�ŵ㣺������ɾ���Ŀ���С
         //ȱ�㣺��λ������
         //������Ƶ����������ɾ������
         LinkedListQueue<Integer> linkedListQueue = new LinkedListQueue<Integer>();
         double time3 = testQueue(linkedListQueue, opCount);
         System.out.println("LinkedListQueue, time: " + time3 + " s");
    }
}