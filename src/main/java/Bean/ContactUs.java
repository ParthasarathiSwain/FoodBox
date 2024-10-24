package Bean;

public class ContactUs {
  private int contact_id;
  private String full_name;
  private String email;
  private String phone;
  private String message;
  private String status;
public int getContact_id() {
	return contact_id;
}
public void setContact_id(int contact_id) {
	this.contact_id = contact_id;
}
public String getFull_name() {
	return full_name;
}
public void setFull_name(String full_name) {
	this.full_name = full_name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getMessage() {
	return message;
}
public void setMessage(String message) {
	this.message = message;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
@Override
public String toString() {
	return "ContactUs [contact_id=" + contact_id + ", full_name=" + full_name + ", email=" + email + ", phone=" + phone
			+ ", message=" + message + ", status=" + status + "]";
}
  
}
