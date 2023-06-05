package pink.supply.model;

public class AttachVO {
	
	private String uuid;
	private String uploadpath;
	private String filename;
	
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
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	@Override
	public String toString() {
		return "AttachVO [uuid=" + uuid + ", uploadpath=" + uploadpath + ", filename=" + filename + "]";
	}
	
	

}
