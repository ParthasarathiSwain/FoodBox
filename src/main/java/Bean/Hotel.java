package Bean;

public class Hotel {
	private int hotel_id;
	private String hotel_name;
	private String hotel_description;
	private String hotel_address;
	private String hotel_regi_date;
	private String hotel_image;
	private int id;
	private int city_id;
	private String city_name;
	public int getHotel_id() {
		return hotel_id;
	}
	public void setHotel_id(int hotel_id) {
		this.hotel_id = hotel_id;
	}
	public String getHotel_name() {
		return hotel_name;
	}
	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}
	public String getHotel_description() {
		return hotel_description;
	}
	public void setHotel_description(String hotel_description) {
		this.hotel_description = hotel_description;
	}
	public String getHotel_address() {
		return hotel_address;
	}
	public void setHotel_address(String hotel_address) {
		this.hotel_address = hotel_address;
	}
	public String getHotel_regi_date() {
		return hotel_regi_date;
	}
	public void setHotel_regi_date(String hotel_regi_date) {
		this.hotel_regi_date = hotel_regi_date;
	}
	public String getHotel_image() {
		return hotel_image;
	}
	public void setHotel_image(String hotel_image) {
		this.hotel_image = hotel_image;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCity_id() {
		return city_id;
	}
	public void setCity_id(int city_id) {
		this.city_id = city_id;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	@Override
	public String toString() {
		return "Hotel [hotel_id=" + hotel_id + ", hotel_name=" + hotel_name + ", hotel_description=" + hotel_description
				+ ", hotel_address=" + hotel_address + ", hotel_regi_date=" + hotel_regi_date + ", hotel_image="
				+ hotel_image + ", id=" + id + ", city_id=" + city_id + ", city_name=" + city_name + "]";
	
	}
	
	
	
	
	
}
