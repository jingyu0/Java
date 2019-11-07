/*import java.util.ArrayList;
public class K_int {
    public ArrayList<Integer> GetLeastNumbers_Solution(int [] input, int k) {
        ArrayList<Integer> kArray = new ArrayList<Integer>();
        if (k > input.length || k == 0) {
            return kArray;
        }
        for(int i = 0;i < k; i++) {
            kArray.add(input[i]);
        }
        kArray.sort(null);
        /*for (int i = 0;i < k; i++) {
            System.out.print(kArray.get(i));
        }
        System.out.println();*/
      /*  for (int i = k; i < input.length; i++) {
            if (kArray.get(kArray.size() - 1) > input[i]) {
                kArray.remove(kArray.size() - 1);
                kArray.add(input[i]);
                kArray.sort(null);
            }
        }
        return kArray;
    }
}
*/

package com.example.test;

        import java.util.ArrayList;
        import java.util.Comparator;
        import java.util.Iterator;
        import java.util.PriorityQueue;
        import java.util.function.Function;
        import java.util.function.ToDoubleFunction;
        import java.util.function.ToIntFunction;
        import java.util.function.ToLongFunction;

public class Solution {
    public ArrayList<Integer> GetLeastNumbers_Solution(int [] input, int k) {
        ArrayList<Integer> kArray = new ArrayList<Integer>();
        //如果想要得到的k个数目比n还大，返回k空的ArrayList
        if (k > input.length || k == 0) {
            return kArray;
        }
        class InternalComparator implements Comparator<Integer>{

            public int compare(Integer arg0, Integer arg1) {
                // TODO Auto-generated method stub
                if (arg0.intValue() < arg1.intValue()) {
                    return 1;
                } else if (arg0.intValue() == arg1.intValue()) {
                    return 0;
                }
                return -1;
            }
        }
        InternalComparator paramComparator = new InternalComparator();
        PriorityQueue<Integer> pq = new PriorityQueue<Integer>(paramComparator);
        //添加k个数
        for(int i = 0;i < k; i++) {
            pq.add(input[i]);
        }
//        for (Iterator<Integer> i = pq.iterator(); i.hasNext(); ) {
//            System.out.println(i.next());
//        }
//        System.out.println();
        //删除并新添加
        for (int i = k; i < input.length; i++) {
            if (input[i] < pq.element()) {
                pq.remove();
                pq.add(input[i]);
            }
        }
        kArray.addAll(pq);
        kArray.sort(null);
        return kArray;
    }
    public static void main(String []args) {
        int input[] = {4,5,1,6,2,7,3,8};
        ArrayList<Integer> kArray = new Solution().GetLeastNumbers_Solution(input, 4);
        if (kArray.size() != 4) {
            return;
        }
        for (int i = 0;i < 4; i++) {
            System.out.print(kArray.get(i));
        }
        System.out.println();
    }
}
