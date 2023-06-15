package pink.supply.service;

import pink.supply.model.AttachVO;
import pink.supply.model.SuppliesListVO;

public interface UploadService {
	
	public void imgInsert(AttachVO attach);
	public void itemInsert(SuppliesListVO addSupply);

}
