package Bean;

public class Payment {
	private int payment_id;
	private int transcation_id;
	private double total_amount;
	private String card_num;
	private String expairy_date;
	private String payment_date;
	private String cvv;
	private int cus_id;
	private String name;
	
	
	
	public String getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}
	public int getTranscation_id() {
		return transcation_id;
	}
	public void setTranscation_id(int transcation_id) {
		this.transcation_id = transcation_id;
	}
	public double getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(double totalAmount) {
		this.total_amount = totalAmount;
	}
	public String getCard_num() {
		return card_num;
	}
	public void setCard_num(String card_num) {
		this.card_num = card_num;
	}
	public String getExpairy_date() {
		return expairy_date;
	}
	public void setExpairy_date(String expairy_date) {
		this.expairy_date = expairy_date;
	}
	public String getCvv() {
		return cvv;
	}
	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	public int getCus_id() {
		return cus_id;
	}
	public void setCus_id(int cus_id) {
		this.cus_id = cus_id;
	}
	@Override
	public String toString() {
		return "Payment [payment_id=" + payment_id + ", transcation_id=" + transcation_id + ", total_amount="
				+ total_amount + ", card_num=" + card_num + ", expairy_date=" + expairy_date + ", payment_date="
				+ payment_date + ", cvv=" + cvv + ", cus_id=" + cus_id + ", name=" + name + "]";
	}
	
}
