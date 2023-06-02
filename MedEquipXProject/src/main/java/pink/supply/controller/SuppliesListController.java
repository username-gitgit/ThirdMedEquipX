package pink.supply.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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

}
