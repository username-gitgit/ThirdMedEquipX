package pink.supply.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import pink.supply.model.ItemDetailsVO;
import pink.supply.service.ItemDetailsService;

@Controller
public class ItemDetailsController {
	
	private static final Logger logger = LoggerFactory.getLogger(ItemDetailsController.class);
	
	@Autowired
	ItemDetailsService itemServ;
	
	@GetMapping("itemDetails/{name}")
	public String itemDetails(@PathVariable("name") String name, Model model) {
	    // Retrieve the item details using the itemName
	    ItemDetailsVO itemDetails = itemServ.getItemDetailsByName(name);
	    
	    // Add the item details to the model to be used in the view
	    model.addAttribute("itemDetails", itemDetails);
	    logger.info("itemDetails = {}", name);
	    return "itemDetails";
	}
	
	//Annotation for mapping HTTP GET requests onto specific handler methods
	//a shortcut for @RequestMapping(method = RequestMethod.GET)
/*	@GetMapping("/itemDetails")
	public String itemDetailsPage(ItemDetailsVO itemDetails, Model model) {
		model.addAttribute("itemCall", itemServ.callItemDetails(itemDetails));
		return "/itemDetails";
	}*/
}


/*	@GetMapping("itemDetails/{itemName}")
public String itemDetailsPage(@PathVariable("itemName") String itemName, Model model) {
    // Retrieve the item details using the itemName
    ItemDetailsVO itemDetails = itemServ.getItemDetailsByName(itemName);
    
    // Add the item details to the model to be used in the view
    model.addAttribute("itemDetails", itemDetails);
    
    return "itemDetails";
}

 상품 상세 
	@GetMapping("/itemDetails/{name}")
public String itemDetailsPage(@PathVariable("name") String name, Model model) {
	
	logger.info("itemDetailsGET()..........");
	
	model.addAttribute("itemDetails", itemServ.callItemDetails(itemDetails));
	
	return "/itemDetails";
}*/
