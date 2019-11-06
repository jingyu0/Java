/*//法一：众数一定是出现次数大于n/2的元素，所以当对数组进行排列后，取其中间值，就是众数。
package com.company;
public class Mode {
    public int majorityElement(int[] nums) {
        int n = nums.length;
        for(int i = 0 ;i< n;i++)
        {
            for(int j=0 ;j < n ;j++)
            {
                if(nums[i] > nums[j])
                {
                    int temp = nums[i];
                    nums[i] = nums[j];
                    nums[j] = temp;
                }
            }
        }
        return nums[n/2];
    }
}*/

//法二：利用哈希表的映射，映射数组中的数字以及它们出现的次数，当众数出现时，返回这个数字
package com.company;
public class Mode {
    public int majorityElement(int[] nums) {
        Map<Integer,Integer> map = new HashMap<Integer,Integer>();
        int n = nums.length;
        for(int num : nums)   //统计每个元素出现的次数
        {
            Integer count = map.get(num);
            if(count == null)
                count =1;
            else
                count++;
            map.put(num,count);
            if(map.get(num) > n/2)
                return num;
        }
        return 0;
    }
}


