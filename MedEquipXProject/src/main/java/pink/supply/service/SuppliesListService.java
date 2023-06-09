package pink.supply.service;

import java.util.ArrayList;

import pink.supply.model.ReleasedVO;
import pink.supply.model.SuppliesListVO;

public interface SuppliesListService {
	
	public ArrayList<SuppliesListVO> callSupplyList(SuppliesListVO supList);
	public void ForwardingDept(SuppliesListVO supList, ReleasedVO relList);

}
