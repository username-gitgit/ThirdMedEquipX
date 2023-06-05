package pink.supply.service;

import java.util.ArrayList;

import pink.supply.model.OrderHistoryVO;

public interface OrderHistoryService {
	
	public ArrayList<OrderHistoryVO> callOrderHistory(OrderHistoryVO ordHistory);
	
}
