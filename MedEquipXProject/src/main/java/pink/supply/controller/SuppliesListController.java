package pink.supply.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import pink.supply.model.ReleasedVO;
import pink.supply.model.SuppliesListVO;
import pink.supply.service.SuppliesListService;

@Controller
public class SuppliesListController {
	
	private static final Logger logger = LoggerFactory.getLogger(SuppliesListController.class);

	
	@Autowired
	SuppliesListService supplyServ;
	
	@GetMapping("dashboard")
	public String dashboardPage(SuppliesListVO supList, Model model) {
		model.addAttribute("listCall", supplyServ.callSupplyList(supList));
		return "dashboard";
	}
	
	@GetMapping("releasedItem")
	public String releasedItem() {
		return "releasedItem";
	}
	
	@PostMapping("releasedItem")
	public String ForwardingDept(SuppliesListVO supList, ReleasedVO relList) {
		supplyServ.ForwardingDept(supList, relList);
		logger.info("call update data is ={}", supList);
		logger.info("call update data is ={}", relList);
		return "dashboard";
		
	}

	
	
	
	
	
	
	
	
	
	
	
}
