//第k小整数
//现有n个正整数，n≤10000，要求出这n个正整数中的第k个最小整数
// （相同大小的整数只计算一次），k≤1000，正整数均小于30000。

public class k_integer {
    public static ArrayList<Integer> getLeastNumbers(int[] nums, int k) {
        ArrayList<Integer> list = new ArrayList<Integer>();
        int lens = nums.length;
        if (nums == null || lens == 0 || k > lens || k <= 0) {
            return list;
        }

        TreeSet<Integer> kSet = new TreeSet<Integer>();
        for (int i = 0; i < lens; i++) {
            if (kSet.size() < k) {
                kSet.add(nums[i]);
            } else if (nums[i] < kSet.last()) {
                kSet.remove(kSet.last());
                kSet.add(nums[i]);
            }
        }

        Iterator<Integer> iterator = kSet.iterator();
        while (iterator.hasNext()) {
            list.add(iterator.next());
        }
        return list;
    }
}
