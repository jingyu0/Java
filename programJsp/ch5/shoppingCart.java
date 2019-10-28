package mybean.maths;
import java.util.*;
import java.io.*;
public class shoppingCart implements Serializable{
	Hashtable<String, Integer> myGoods=new Hashtable<String, Integer>();
	public shoppingCart(){}//构造函数
	//只存关键字和数量，其它价格等信息从GoodList中得到
	public void addGoods(String goods_id,int goods_count ){
		//商品放入购物车，商品存在则累加，否则新建。
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
		//商品从购物车中拿出
		if(myGoods.containsKey(goods_id)){
			//存在该商品，则减数量
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
		else{//不存在该商品
			return false;
		}			
	}
	public boolean deleteGoods(String goods_id){
		//删除购物车中的一件商品
		if(myGoods.remove(goods_id)==null){
			return false;
		}
		else{
			return true;
		}
	}
	public Hashtable<String,Integer> listMyGoods(){	 
		//得到购物车中所有的商品
	  return myGoods;
	}
}
