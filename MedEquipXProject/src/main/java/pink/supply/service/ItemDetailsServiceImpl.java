package pink.supply.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pink.supply.mapper.ItemDetailsMapper;
import pink.supply.model.AttachVO;
import pink.supply.model.ItemDetailsVO;

//This class will implement the 'ItemDetailsServiceImpl' interface.
@Service
public class ItemDetailsServiceImpl implements ItemDetailsService{
	
	@Autowired // automatic dependency injection 필요한 의존 객체의 “타입"에 해당하는 빈을 찾아 주입한다.
	ItemDetailsMapper itemMap;
	
	// helping to check whether the developer what to override the correct method in the parent class or interface. 
	// typically used when we want to change the default behavior of a basic service implementation in a product or in another module.
	@Override
	public ItemDetailsVO getItemDetailsByName(String name) {
		return itemMap.getItemDetailsByName(name);
	}

	@Override
	public void toggleVisible(ItemDetailsVO vData) {
		itemMap.toggleVisible(vData);
		
	}

	@Override
	public ItemDetailsVO callImage(ItemDetailsVO imageCall) {
		// TODO Auto-generated method stub
		return itemMap.callImage(imageCall);
	}
	
}