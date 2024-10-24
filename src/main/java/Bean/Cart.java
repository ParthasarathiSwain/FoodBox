package Bean;

public class Cart {
	private int cart_id;	
	private double cart_Amount;
	private double cart_price;
	private int cart_qty;
	private int cus_id;
	private int item_id;
	private int hotel_id;
	private String item_name;
	private String item_image;
	
	public String getItem_image() {
		return item_image;
	}
	public void setItem_image(String item_image) {
		this.item_image = item_image;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public double getCart_Amount() {
		return cart_Amount;
	}
	public void setCart_Amount(double cart_Amount) {
		this.cart_Amount = cart_Amount;
	}
	public double getCart_price() {
		return cart_price;
	}
	public void setCart_price(double cart_price) {
		this.cart_price = cart_price;
	}
	public int getCart_qty() {
		return cart_qty;
	}
	public void setCart_qty(int cart_qty) {
		this.cart_qty = cart_qty;
	}
	public int getCus_id() {
		return cus_id;
	}
	public void setCus_id(int cus_id) {
		this.cus_id = cus_id;
	}
	public int getItem_id() {
		return item_id;
	}
	public void setItem_id(int item_id) {
		this.item_id = item_id;
	}
	public int getHotel_id() {
		return hotel_id;
	}
	public void setHotel_id(int hotel_id) {
		this.hotel_id = hotel_id;
	}
	@Override
	public String toString() {
		return "Cart [cart_id=" + cart_id + ", cart_Amount=" + cart_Amount + ", cart_price=" + cart_price
				+ ", cart_qty=" + cart_qty + ", cus_id=" + cus_id + ", item_id=" + item_id + ", hotel_id=" + hotel_id
				+ ", item_name=" + item_name + ", item_image=" + item_image + "]";
	}
	
	
}
