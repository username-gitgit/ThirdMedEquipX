package pink.supply.service;

import pink.supply.model.AttachVO;
import pink.supply.model.ItemDetailsVO;

public interface ItemDetailsService {
	
	public ItemDetailsVO getItemDetailsByName(String name);
	public void toggleVisible(ItemDetailsVO vData);
	public ItemDetailsVO callImage(ItemDetailsVO imageCall);

}