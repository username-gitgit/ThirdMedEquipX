package pink.supply.service;

import java.util.ArrayList;

import pink.supply.model.ItemDetailsVO;

public interface ItemDetailsService {
	
	public ItemDetailsVO getItemDetailsByName(String name);
	
	//public ArrayList<ItemDetailsVO> callItemDetails(ItemDetailsVO itemDetails);
	
}
