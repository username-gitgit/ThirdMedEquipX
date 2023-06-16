package pink.supply.mapper;

import pink.supply.model.AttachVO;
import pink.supply.model.SuppliesListVO;

public interface UploadMapper {
	
	public void imgInsert(AttachVO attach);
	public void itemInsert(SuppliesListVO addSupply);

}