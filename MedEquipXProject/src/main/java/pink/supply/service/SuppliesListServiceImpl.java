package pink.supply.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pink.supply.mapper.SuppliesListMapper;
import pink.supply.model.SuppliesListVO;

@Service
public class SuppliesListServiceImpl implements SuppliesListService {

	@Autowired
	SuppliesListMapper supplyMap;
	
	@Override
	public ArrayList<SuppliesListVO> callSupplyList(SuppliesListVO supList) {
		return supplyMap.callSupplyList(supList);
	}
	

}
