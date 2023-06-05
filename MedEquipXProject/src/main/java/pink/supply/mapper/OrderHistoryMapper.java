package pink.supply.mapper;

import java.util.ArrayList;

import pink.supply.model.OrderHistoryVO;

public interface OrderHistoryMapper {
	
	public ArrayList<OrderHistoryVO> callOrderHistory(OrderHistoryVO ordHistory);
	
}