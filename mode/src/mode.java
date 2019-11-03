//众数
//
//给出N个1到30000间无序数正整数，其中1≤N≤10000，同一个正整数可能会出现多次，
// 出现次数最多的整数称为众数。求出它的众数及它出现的次数。

import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
public class mode {

    public static void main(String[] args) throws IOException {
        // 读取input.txt中的数据
        // 需要注意读取的数据是带有换行符的，需要处理
        FileReader fr = new FileReader("F:/MyFile/code/input.txt");
        int ch = 0;
        String str = null;
        char[] cbuf = new char[1024];
        while((ch = fr.read(cbuf))!=-1){
            str = new String(cbuf,0,ch);
        }
        //System.out.println(str);
        // 打印一下所取数据
        // System.getProperty("line.separator")表示换行符
        String str2 = str.replaceAll(System.getProperty("line.separator"), "");
        // 将字符串中的空格" "去掉
        char[] str3 = str2.toCharArray();
        // 将字符串转化为char数组
        int[] a = new int[(str3.length)-1];
        // 因为原数据第一行是元素个数n故在此需要舍弃
        for(int i=0;i<a.length;i++){
            a[i] =  Character.getNumericValue(str3[i+1]);
            // 利用char的包装类中Character的方法将char型转化为int型
            //System.out.println(a[i]);
            // 打印一下
        }
        // 再建立一个数组，用来存放每个数出现的次数
        int[] count = new int[a.length];
        for(int i = 0;i<a.length;i++){
            for(int j = 0;j<a.length;j++){
                if(a[i]==a[j]){
                    count[i]++;
                }
            }
        }
        // 在获得的count[]数组中获取最大值
        int max = 0;
        // 众数出现次数
        int s = 0;
        // 众数
        for(int i =0;i<a.length;i++){
            if(max<=count[i]){
                max=count[i];
                s=a[i];
            }
        }
        // 将结果输出到output.txt
        FileWriter fw = new FileWriter("F:/MyFile/code/input.txt");
        fw.write(max+"");
        fw.write(System.getProperty("line.separator"));
        fw.write(s+"");
        fw.close();
        fr.close();
        // 关闭资源
        // 将结果打印在控制台
        System.out.println(max);
        System.out.println(s);
    }
}
