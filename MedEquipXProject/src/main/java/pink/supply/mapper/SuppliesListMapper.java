package pink.supply.mapper;

import java.util.ArrayList;

import pink.supply.model.SuppliesListVO;

public interface SuppliesListMapper {
	
	public ArrayList<SuppliesListVO> callSupplyList(SuppliesListVO supList);

}
