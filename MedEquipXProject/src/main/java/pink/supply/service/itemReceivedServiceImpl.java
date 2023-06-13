package pink.supply.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pink.supply.mapper.SuppliesListMapper;
import pink.supply.mapper.itemReceivedMapper;
import pink.supply.model.SuppliesListVO;

@Service
public class itemReceivedServiceImpl implements itemReceivedService {

	@Autowired
	itemReceivedMapper itemReceivedMap;
	
	

	@Override
	public void callitemReceivedList(SuppliesListVO itemReceived) {
		// TODO Auto-generated method stub
		itemReceivedMap.callitemReceivedList(itemReceived);
	}
	

}
