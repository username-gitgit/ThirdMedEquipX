package pink.supply.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import pink.supply.model.AttachVO;
import pink.supply.model.ItemDetailsVO;
import pink.supply.service.ItemDetailsService;

@Controller
public class ItemDetailsController {
	
	private static final Logger logger = LoggerFactory.getLogger(ItemDetailsController.class);
	
	@Autowired
	ItemDetailsService itemServ;
	
	//Annotation for mapping HTTP GET requests onto specific handler methods
	//a shortcut for @RequestMapping(method = RequestMethod.GET)	
	@GetMapping("itemDetails/{name}")
	public String itemDetails(@PathVariable("name") String name, Model model, ItemDetailsVO imageCall) {
	    // Retrieve the item details using the itemName
	    ItemDetailsVO itemDetails = itemServ.getItemDetailsByName(name);
	    ItemDetailsVO detailImage = itemServ.callImage(imageCall);
	    // Add the item details to the model to be used in the view
	    model.addAttribute("itemDetails", itemDetails);
	    model.addAttribute("callImage", itemServ.callImage(imageCall));
	    logger.info("itemDetails = {}", name);
	    logger.info("detailImage = {}", detailImage);
	    return "itemDetails";
	}
	
	
	
	@GetMapping("itemDetails/updateVisible")
	public String toggleVisible(ItemDetailsVO vData) {
		logger.info("update porc = {}", vData);
		itemServ.toggleVisible(vData);
		return "redirect:/dashboard";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}