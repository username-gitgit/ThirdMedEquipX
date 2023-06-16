package pink.supply.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import pink.supply.model.ItemDetailsVO;
import pink.supply.service.ItemDetailsService;

@Controller
public class ItemDetailsController {
 
	private static final Logger logger = LoggerFactory.getLogger(ItemDetailsController.class);

	@Autowired
	ItemDetailsService itemServ;
	
	//Retrieving data
	@GetMapping("itemDetails/{name}") //Annotation for mapping HTTP GET requests onto specific handler methods a shortcut for @RequestMapping(method = RequestMethod.GET)	
	public String itemDetails(@PathVariable("name") String name, Model model, ItemDetailsVO imageCall) {
	    
	    ItemDetailsVO itemDetails = itemServ.getItemDetailsByName(name); // Retrieve the item details using the itemName
	    model.addAttribute("callImage", itemServ.callImage(imageCall));
	    model.addAttribute("itemDetails", itemDetails); // Add the item details to the model to be used in the view
	    logger.info("itemDetails = {}", name);
	    return "itemDetails";
	}
	
	@PostMapping("itemDetails/{name}/toggleVisible") //Changing a visible column's value in a database
	public String toggleVisible(@PathVariable("name") String name, ItemDetailsVO vData) {
		logger.info("itemDetails = {}", vData);
		itemServ.toggleVisible(vData); // to update the item details in the "database". //데이터 베이스 내의 visible 칼럼을 업데이트함
		return "redirect:/dashboard";
		//return "redirect:/itemDetails/" + vData.getName(); // the user is redirected to the updated item details page after updating the visibility status of the item.
	}

}

//원래 코드
/*@GetMapping("itemDetails/updateVisible")
public String toggleVisible(ItemDetailsVO vData) {
	logger.info("update porc = {}", vData);
	itemServ.toggleVisible(vData);
	return "redirect:/dashboard";
}*/

//visible 칼럼이 Y이면 N으로 바꾸고, visible 칼럼의 값이 N이면 Y로 바꿈
/*		if (itemDetails.isCurrentlyVisible()) { //The isVisible method in the ItemDetailsVO class returns true if the visibility status is 'Y' and false if it is 'N'. 
	itemDetails.setCurrentlyVisible(false); //called to set the visibility status of the item to 'N' (not visible).
} else {
	itemDetails.setCurrentlyVisible(true);
}*/


/* Original Code */ 

/*@GetMapping("itemDetails/{name}") //Annotation for mapping HTTP GET requests onto specific handler methods a shortcut for @RequestMapping(method = RequestMethod.GET)	
public String itemDetails(@PathVariable("name") String name, Model model) {
    
    ItemDetailsVO itemDetails = itemServ.getItemDetailsByName(name); // Retrieve the item details using the itemName
    
    model.addAttribute("itemDetails", itemDetails); // Add the item details to the model to be used in the view
    logger.info("itemDetails = {}", name);
    return "itemDetails";
}*/

/* Tried Encoding % in URL */
/*@GetMapping("itemDetails/{name}")// Annotation for mapping HTTP GET requests onto specific handler methods a shortcut for @RequestMapping(method = RequestMethod.GET)
public String itemDetails(@PathVariable("name") String encodedName, Model model) throws UnsupportedEncodingException {// @PathVariable: retrieving the value of the template variables and assign their value to a method variable
    
	String decodedName = URLDecoder.decode(encodedName, StandardCharsets.UTF_8.name());
	
    model.addAttribute("itemDetails", itemServ.getItemDetailsByName(decodedName)); // Add the item details to the model to be used in the view 
    logger.info("itemDetails = {}", decodedName);
    return "itemDetails";
}
*/
/*	
@GetMapping("/users/{encodedName}")
public String getUser(@PathVariable String encodedName) throws UnsupportedEncodingException {
    String decodedName = URLDecoder.decode(encodedName, StandardCharsets.UTF_8.name());
    // Further code logic
}
*/

/*@GetMapping("itemDetails/{name}")
public String itemDetails(@PathVariable("name") String name, Model model) {
    String encodedName = name;
	try {
		encodedName = URLDecoder.decode(name, "utf-8");
	} catch (UnsupportedEncodingException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    ItemDetailsVO itemDetails = itemServ.getItemDetailsByName(encodedName);
    model.addAttribute("itemDetails", itemDetails);
    logger.info("itemDetails = {}", encodedName);
    return "itemDetails";
}
*/
/*	@GetMapping("itemDetails/{name}")
	public String itemDetails(@PathVariable("name") String name, Model model) {
	    String encodedName = name.replace("%", "%25");
	    ItemDetailsVO itemDetails = itemServ.getItemDetailsByName(encodedName);
	    model.addAttribute("itemDetails", itemDetails);
	    logger.info("itemDetails = {}", encodedName);
	    return "itemDetails";
	}*/
/*	@GetMapping("itemDetails/{name}")
	public String itemDetails(@PathVariable("name") String encodedName, Model model) {
	    String decodedName = encodedName.replaceAll("%(?![0-9a-fA-F]{2})", "%25");
	    ItemDetailsVO itemDetails = itemServ.getItemDetailsByName(decodedName);
	    model.addAttribute("itemDetails", itemDetails);
	    logger.info("itemDetails = {}", decodedName);
	    return "itemDetails";
	}
}	*/