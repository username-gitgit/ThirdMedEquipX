package pink.supply.mapper;

import java.util.ArrayList;

import pink.supply.model.ItemDetailsVO;

public interface ItemDetailsMapper {
	
	public ItemDetailsVO getItemDetailsByName(String name);
//	public ArrayList<ItemDetailsVO> getItemDetailsByName(String name);
//	public ArrayList<ItemDetailsVO> callItemDetails(ItemDetailsVO itemDetails);
	
}
