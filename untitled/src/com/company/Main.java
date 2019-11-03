//明明的随机数
//
//明明想在学校中请一些同学一起做一项问卷调查，为了实验的客观性，他先用计算机生成了N个1到1000之间的随机整数（N≤100），
// 对于其中重复的数字，只保留一个，把其余相同的数去掉，不同的数对应着不同的学生的学号。然后再把这些数从小到大排序，
// 按照排好的顺序去找同学做调查。请你协助明明完成“去重”与“排序”的工作。
package com.company;
import java.util.Iterator;

import java.util.Scanner;

import java.util.TreeSet;

public class Main {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int num = scan.nextInt();

        TreeSet<Integer>tSet = new TreeSet<Integer>();
        while(num != 0){
            //Set去重并排序
            tSet.add(scan.nextInt());
            num--;
        }
        Iterator<Integer> it = tSet.iterator();
        while(it.hasNext()){
            //迭代器遍历
            System.out.println(it.next());
        }
    }
}
