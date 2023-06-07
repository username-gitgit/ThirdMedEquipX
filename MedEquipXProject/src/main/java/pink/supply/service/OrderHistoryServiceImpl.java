package pink.supply.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pink.supply.mapper.OrderHistoryMapper;
import pink.supply.model.OrderHistoryVO;

//mark the class as a service provider
@Service
public class OrderHistoryServiceImpl implements OrderHistoryService{

	@Autowired
	OrderHistoryMapper orderMap;
	
	public ArrayList<OrderHistoryVO> callOrderHistory(OrderHistoryVO ordHistory){
		return orderMap.callOrderHistory(ordHistory);
	}
	
}