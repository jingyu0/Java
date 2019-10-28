package mybean.maths;
import java.util.ArrayList;
public class GoodsList {
	//声明bean的属性，类型为商品对象的数组列表
	ArrayList<Goods> goodsL=new ArrayList<Goods>();
	public ArrayList<Goods> getGoodL() {
		return goodsL;
	}
	public void setGoodL(ArrayList<Goods> goodsL) {
		this.goodsL = goodsL;
	}
	public GoodsList(){//构造函数，建立10本书的商品对象数组列表
	     for(int i=0;i<10;i++){
	    	 Goods goodsTemp=new Goods();
	    	 goodsTemp.setGoods_id(String.valueOf(i+1));
	    	 goodsTemp.setGoods_name("Java语言编程技术"+String.valueOf(i+1));
	    	 goodsTemp.setGoods_price(68+i);
			goodsL.add(goodsTemp);
	     }
	}
}
