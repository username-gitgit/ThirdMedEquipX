package pink.supply.model;

public class ReleasedVO {
	
	private String department;
	private String name;
	private String specifications;
	private String change_date;
	private int quantity;
	private String memo;
	
	
	

	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getSpecifications() {
		return specifications;
	}
	public void setSpecifications(String specifications) {
		this.specifications = specifications;
	}
	public String getChange_date() {
		return change_date;
	}
	public void setChange_date(String change_date) {
		this.change_date = change_date;
	}

	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	
	@Override
	public String toString() {
		return "ReleasedVO [department=" + department + ", name=" + name + ", specifications=" + specifications
				+ ", change_date=" + change_date + ", quantity=" + quantity + ", memo=" + memo + "]";
	}
	
	

}
