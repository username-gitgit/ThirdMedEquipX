package pink.supply.model;


import javax.validation.constraints.NotEmpty;

public class MemberVO {
	
	private String id;
	@NotEmpty(message = "이메일을 입력해주세요.")
	private String email;
	@NotEmpty
	private String password;
	@NotEmpty(message = "이름을 입력해주세요.")
	private String name;

	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", email=" + email + ", password=" + password + ", name=" + name + "]";
	}
	

	
	

	
	
	

}
