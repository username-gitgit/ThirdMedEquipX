package pink.supply.service;

import java.util.ArrayList;

import pink.supply.model.ItemDetailsVO;

public interface ItemDetailsService {
	
	public ArrayList<ItemDetailsVO> callItemDetails(ItemDetailsVO itemDetails);

	public ItemDetailsVO getItemDetailsByName(String itemName);
	
}
