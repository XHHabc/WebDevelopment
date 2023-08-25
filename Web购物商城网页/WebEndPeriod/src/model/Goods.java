package model;

public class Goods {
	private int id; // 商品编号
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	private String name; // 商品名称
	private String city; // 产地
	private int price; // 价格
	private int number; // 库存
	private String picture; // 商品图片
	
	@Override
	public int hashCode() {
		return this.getId()+this.getName().hashCode();
	}
	@Override
	public boolean equals(Object obj) {
		if(this==obj) {
			return true;
		}
		if(obj instanceof Goods) {
			Goods goods=(Goods)obj;
			if(this.getId()==goods.getId()&&this.getName().equals(goods.getName())) {
				return true;
			}else {
				return false;
			}
		}else {
			return false;
		}
	}
	public String toString() {
		return "商品编号："+this.getId()+"，商品名称"+this.getName();
	}
	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Goods(int id, String name, String city, int price, int number, String picture) {
		super();
		this.id = id;
		this.name = name;
		this.city = city;
		this.price = price;
		this.number = number;
		this.picture = picture;
	}
}
