package pink.supply.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pink.supply.mapper.ItemDetailsMapper;
import pink.supply.mapper.SuppliesListMapper;
import pink.supply.model.ReleasedVO;
import pink.supply.model.SuppliesListVO;

@Service
public class SuppliesListServiceImpl implements SuppliesListService {

	@Autowired
	SuppliesListMapper supplyMap;
	
	
	SuppliesListVO suppliesListVO = new SuppliesListVO();
	ReleasedVO releasedVO = new ReleasedVO();
	
	@Override
	public ArrayList<SuppliesListVO> callSupplyList(SuppliesListVO supList) {
		return supplyMap.callSupplyList(supList);
	}

	
	@Override
	@Transactional
	public void ForwardingDept(SuppliesListVO supList, ReleasedVO relList) {
		supplyMap.ForwardingList(relList);
		supplyMap.ForwardingDept(supList);
	}

	

}
