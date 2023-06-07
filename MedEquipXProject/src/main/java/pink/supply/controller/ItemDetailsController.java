package pink.supply.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import pink.supply.model.ItemDetailsVO;
import pink.supply.service.ItemDetailsService;

@Controller
public class ItemDetailsController {
	
	private static final Logger logger = LoggerFactory.getLogger(ItemDetailsController.class);
	
	@Autowired
	ItemDetailsService itemServ;
	
	@GetMapping("itemDetails")
	public String itemDetails(ItemDetailsVO itDetails, Model model) {
		model.addAttribute("itemCall", itemServ.callItemDetails(itDetails));
		return "itemDetails";
	}
}