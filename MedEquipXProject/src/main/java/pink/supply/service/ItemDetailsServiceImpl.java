package pink.supply.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pink.supply.mapper.ItemDetailsMapper;
import pink.supply.model.ItemDetailsVO;

@Service
public class ItemDetailsServiceImpl implements ItemDetailsService{
	
	@Autowired
	ItemDetailsMapper itemMap;
	
	public ArrayList<ItemDetailsVO> callItemDetails(ItemDetailsVO itDetails){
		return itemMap.callItemDetails(itDetails);
	}

}