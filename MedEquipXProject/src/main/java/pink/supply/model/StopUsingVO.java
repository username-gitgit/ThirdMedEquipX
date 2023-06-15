package pink.supply.model;

public class StopUsingVO {

	private String name;
	private String specifications;
	private String manufacturer;
	private String category;
	private String subcategory;
	private String change_date;
	private String in_charge;
	private int stock;
	//private double turnover_rate;
	private char visible;
	
	//출고 수량
	private int quantity;
	
	
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
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSubcategory() {
		return subcategory;
	}
	public void setSubcategory(String subcategory) {
		this.subcategory = subcategory;
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
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
/*	public double getTurnover_rate() {
		return turnover_rate;
	}
	public void setTurnover_rate(double turnover_rate) {
		this.turnover_rate = turnover_rate;
	}*/
	public char getVisible() {
		return visible;
	}
	public void setVisible(char visible) {
		this.visible = visible;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	//", turnover_rate=" + turnover_rate + 
	@Override
	public String toString() {
		return "SuppliesListVO [name=" + name + ", specifications=" + specifications + ", manufacturer=" + manufacturer
				+ ", category=" + category + ", subcategory=" + subcategory + ", change_date=" + change_date
				+ ", in_charge=" + in_charge + ", stock=" + stock + ", visible="
				+ visible + ", quantity=" + quantity + "]";
	}
}