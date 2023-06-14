package pink.supply.model;

import java.util.List;

public class AttachVO {
	
	private String uuid;
	private String uploadpath;
	private String name;
	
	private List<ItemDetailsVO> detailVo;
	
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
	public List<ItemDetailsVO> getDetailVo() {
		return detailVo;
	}
	public void setDetailVo(List<ItemDetailsVO> detailVo) {
		this.detailVo = detailVo;
	}
	@Override
	public String toString() {
		return "AttachVO [uuid=" + uuid + ", uploadpath=" + uploadpath + ", name=" + name + ", detailVo=" + detailVo
				+ "]";
	}
	
	

}
