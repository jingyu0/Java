package mybean.maths;
import java.util.ArrayList;
public class GoodsList {
	//����bean�����ԣ�����Ϊ��Ʒ����������б�
	ArrayList<Goods> goodsL=new ArrayList<Goods>();
	public ArrayList<Goods> getGoodL() {
		return goodsL;
	}
	public void setGoodL(ArrayList<Goods> goodsL) {
		this.goodsL = goodsL;
	}
	public GoodsList(){//���캯��������10�������Ʒ���������б�
	     for(int i=0;i<10;i++){
	    	 Goods goodsTemp=new Goods();
	    	 goodsTemp.setGoods_id(String.valueOf(i+1));
	    	 goodsTemp.setGoods_name("Java���Ա�̼���"+String.valueOf(i+1));
	    	 goodsTemp.setGoods_price(68+i);
			goodsL.add(goodsTemp);
	     }
	}
}
