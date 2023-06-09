package pink.supply.model;

public class ItemDetailsVO {
	
	private String name; //물품명
	private String category; //분류
	private String specifications; //규격
	private String change_date; //마지막 변경일
	private String in_charge; //수정한 관리자
	private int stock; //현재고
	private double turnover_rate; //1개월 평균 회전
	private char visible; //사용중지(Y/N)
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
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
	public double getTurnover_rate() {
		return turnover_rate;
	}
	public void setTurnover_rate(double turnover_rate) {
		this.turnover_rate = turnover_rate;
	}
	public char getVisible() {
		return visible;
	}
	public void setVisible(char visible) {
		this.visible = visible;
	}
	@Override
	public String toString() {
		return "ItemDetailsVO [name=" + name + ", specifications=" + specifications + ", category=" + category 
				+ ", change_date=" + change_date + ", in_charge=" + in_charge + ", stock=" + stock 
				+ ", turnover_rate=" + turnover_rate + ", visible="+ visible + "]";
	}
	
}