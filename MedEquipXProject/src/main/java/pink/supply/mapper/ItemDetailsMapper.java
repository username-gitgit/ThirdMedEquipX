package pink.supply.mapper;

import pink.supply.model.ItemDetailsVO;

public interface ItemDetailsMapper {
	
	public ItemDetailsVO getItemDetailsByName(String name);
	public void toggleVisible(ItemDetailsVO vData);
	
}