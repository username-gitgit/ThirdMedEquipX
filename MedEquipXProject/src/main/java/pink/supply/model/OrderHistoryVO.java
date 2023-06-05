package pink.supply.model;

public class OrderHistoryVO {
	
	private String name;
	private String specifications;
	private String department;
	private int quantity;
	private String change_date;
	private String in_charge;
	private String memo;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSpecifications() {
		return specifications;
	}
	public void setSpecifications(String specifications) {
		this.specifications = specifications;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getChange_date() {
		return change_date;
	}
	public void setChange_date(String change_date) {
		this.change_date = change_date;
	}
	public String getIn_charge() {
		return in_charge;
	}
	public void setIn_charge(String in_charge) {
		this.in_charge = in_charge;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	
	public String toStirng() {
		return "OrderHistoryVO [name=" + name + ", specifications=" + specifications + ", department=" + department + 
				", quantity=" + quantity + ", change_date=" + change_date + ", in_charge=" + in_charge + ", memo=" + memo + "]";
	}
	
	
}
