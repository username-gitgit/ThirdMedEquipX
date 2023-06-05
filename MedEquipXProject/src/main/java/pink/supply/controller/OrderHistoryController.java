package pink.supply.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pink.supply.model.OrderHistoryVO;
import pink.supply.service.OrderHistoryService;

@Controller
public class OrderHistoryController {
	
	private static final Logger logger = LoggerFactory.getLogger(OrderHistoryController.class);
	
	@Autowired
	OrderHistoryService orderServ;
	
	@GetMapping("/orderHistory")
	public String orderhistory(OrderHistoryVO ordHistory, Model model) {
		model.addAttribute("historyCall", orderServ.callOrderHistory(ordHistory));
		return "/orderHistory";
	}

}
