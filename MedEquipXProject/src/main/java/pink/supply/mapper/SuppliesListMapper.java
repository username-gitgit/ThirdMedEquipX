package pink.supply.mapper;

import java.util.ArrayList;

import pink.supply.model.ReleasedVO;
import pink.supply.model.SuppliesListVO;

public interface SuppliesListMapper {
	
	public ArrayList<SuppliesListVO> callSupplyList(SuppliesListVO supList);
	public void ForwardingDept(SuppliesListVO supList, ReleasedVO relList);
	public void ForwardingList(ReleasedVO relList);
	public void ForwardingDept(SuppliesListVO supList);
	public SuppliesListVO callDataByQR(String name);
	public void updateItem(SuppliesListVO supList);

}
