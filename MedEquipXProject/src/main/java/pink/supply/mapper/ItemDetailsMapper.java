package pink.supply.mapper;

import java.util.ArrayList;

import pink.supply.model.ItemDetailsVO;

public interface ItemDetailsMapper {
	
	public ArrayList<ItemDetailsVO> callItemDetails(ItemDetailsVO itemDetails);
	
}
