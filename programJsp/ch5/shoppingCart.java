package mybean.maths;
import java.util.*;
import java.io.*;
public class shoppingCart implements Serializable{
	Hashtable<String, Integer> myGoods=new Hashtable<String, Integer>();
	public shoppingCart(){}//���캯��
	//ֻ��ؼ��ֺ������������۸����Ϣ��GoodList�еõ�
	public void addGoods(String goods_id,int goods_count ){
		//��Ʒ���빺�ﳵ����Ʒ�������ۼӣ������½���
		if(myGoods.containsKey(goods_id)){
			int iTemp=((Integer)myGoods.get(goods_id)).intValue();
			iTemp=iTemp+goods_count;
			myGoods.put(goods_id,new Integer(iTemp));
		}
		else{
			myGoods.put(goods_id, new Integer(goods_count));
		}
	}
	public boolean minusGoods(String goods_id,int goods_count){
		//��Ʒ�ӹ��ﳵ���ó�
		if(myGoods.containsKey(goods_id)){
			//���ڸ���Ʒ���������
			int iTemp=((Integer)myGoods.get(goods_id)).intValue();
			iTemp=iTemp-goods_count;
			if(iTemp<=0){
				deleteGoods(goods_id);
			}
			else{
				myGoods.put(goods_id, new Integer(iTemp));
			}
			return true;
		}
		else{//�����ڸ���Ʒ
			return false;
		}			
	}
	public boolean deleteGoods(String goods_id){
		//ɾ�����ﳵ�е�һ����Ʒ
		if(myGoods.remove(goods_id)==null){
			return false;
		}
		else{
			return true;
		}
	}
	public Hashtable<String,Integer> listMyGoods(){	 
		//�õ����ﳵ�����е���Ʒ
	  return myGoods;
	}
}
