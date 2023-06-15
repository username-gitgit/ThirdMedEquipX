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
	
		
	@GetMapping("itemDetails/{name}") //Annotation for mapping HTTP GET requests onto specific handler methods, a shortcut for @RequestMapping(method = RequestMethod.GET)
	public String itemDetails(@PathVariable("name") String name, Model model, ItemDetailsVO imageCall) {
	    ItemDetailsVO itemDetails = itemServ.getItemDetailsByName(name); // Retrieve the item details using the itemName
	    ItemDetailsVO detailImage = itemServ.callImage(imageCall);
	    
	    model.addAttribute("itemDetails", itemDetails); // Add the item details to the model to be used in the view
	    model.addAttribute("callImage", itemServ.callImage(imageCall));
	    logger.info("itemDetails = {}", name);
	    logger.info("detailImage = {}", detailImage);
	    return "itemDetails";
	}
	
	@PostMapping("itemDetails/{name}/toggleVisible") //Changing a visible column's value in a database
	public String toggleVisible(@PathVariable("name") String name, ItemDetailsVO vData) {
		logger.info("itemDetails = {}", vData);
		itemServ.toggleVisible(vData); // to update the item details in the "database". //데이터 베이스 내의 visible 칼럼을 업데이트함
		return "redirect:/itemDetails/" + vData.getName(); // the user is redirected to the updated item details page after updating the visibility status of the item.
	}

}

//원래 코드
/*@GetMapping("itemDetails/updateVisible")
public String toggleVisible(ItemDetailsVO vData) {
	logger.info("update porc = {}", vData);
	itemServ.toggleVisible(vData);
	return "redirect:/dashboard";
}*/