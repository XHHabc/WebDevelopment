package model;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class Cart {

	//购物车集合
	private HashMap<Goods, Integer> good;
	
	//购物车金额
	private double totalPrice;
	
    public Cart() {
		// TODO Auto-generated constructor stub
    	good=new HashMap<Goods,Integer>();
    	totalPrice=0.0;
	}
	public HashMap<Goods, Integer> getGoods() {
		return good;
	}

	public void setGoods(HashMap<Goods, Integer> goods) {
		this.good = goods;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	//添加商品到购物车
	public boolean addGoodCart(Goods goods,int number) {
		if(good.containsKey(goods)) {
			good.put(goods, good.get(goods)+number);
		}else {
			good.put(goods, number);
		}
		TotalCartPrice();//重新计算购物车总金额
		return true;
	}
	//删除商品
	public boolean removeGoodCart(Goods goods) {
		good.remove(goods);
		TotalCartPrice();//重新计算购物车总金额
		return true;
	}
	//统计购物车总金额
	public double TotalCartPrice() {
		double sum=0.0;
		Set<Goods> keys=good.keySet();//获得键的集合
		Iterator<Goods> it=keys.iterator();//获得迭代器对象
		while (it.hasNext()) {
			Goods i=it.next();
			sum+=i.getPrice()*good.get(i);		
		}
		this.setTotalPrice(sum);//设置购物车的总金额
		return this.getTotalPrice();
	}
}
