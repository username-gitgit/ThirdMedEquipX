package pink.supply.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pink.supply.model.OrderHistoryVO;
import pink.supply.service.OrderHistoryService;

//mark the class as the controller.
@Controller
public class OrderHistoryController {
	
	private static final Logger logger = LoggerFactory.getLogger(OrderHistoryController.class);
	
	//의존성 주입 automatic dependency injection
	@Autowired
	OrderHistoryService orderServ;
	
	//Annotation for mapping HTTP GET requests onto specific handler methods
	//a shortcut for @RequestMapping(method = RequestMethod.GET)
	@GetMapping("/orderHistory")
	public String orderHistory(OrderHistoryVO ordHistory, Model model) {
		model.addAttribute("historyCall", orderServ.callOrderHistory(ordHistory));
		return "orderHistory";
	}

}