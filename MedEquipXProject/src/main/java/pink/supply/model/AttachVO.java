package pink.supply.model;

public class AttachVO {
	
	private String uuid;
	private String uploadpath;
	private String name;
	
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getUploadpath() {
		return uploadpath;
	}
	public void setUploadpath(String uploadpath) {
		this.uploadpath = uploadpath;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "AttachVO [uuid=" + uuid + ", uploadpath=" + uploadpath + ", name=" + name + "]";
	}
	
	

}
