package Bean;

public class Order {
	private int order_id;
	private double order_Amount;
	private int invoice_num;
	private int qty;
	private int payment_id;
	private int cus_id;
	private int item_id;
	private String address;
	private String pincode;
	private String item_name;
	private String name;
	private String date;
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
	public String getName() {
		return name;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public double getOrder_Amount() {
		return order_Amount;
	}
	public void setOrder_Amount(double order_Amount) {
		this.order_Amount = order_Amount;
	}
	public int getInvoice_num() {
		return invoice_num;
	}
	public void setInvoice_num(int invoice_num) {
		this.invoice_num = invoice_num;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public int getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	@Override
	public String toString() {
		return "Order [order_id=" + order_id + ", order_Amount=" + order_Amount + ", invoice_num=" + invoice_num
				+ ", qty=" + qty + ", payment_id=" + payment_id + ", cus_id=" + cus_id + ", item_id=" + item_id
				+ ", address=" + address + ", pincode=" + pincode + ", item_name=" + item_name + ", name=" + name
				+ ", date=" + date + ", item_image=" + item_image + "]";
	}
	
	
	
}
