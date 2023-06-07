package pink.supply.mapper;

import java.util.ArrayList;

import pink.supply.model.OrderHistoryVO;

//interface: an abstract type used to declare a behavior that classes must implement.
public interface OrderHistoryMapper {
	
	public ArrayList<OrderHistoryVO> callOrderHistory(OrderHistoryVO ordHistory);
	
}