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
	    model.addAttribute("itemDetails", itemDetails); // Add the item details to the model to be used in the view
	    model.addAttribute("callImage", itemServ.callImage(imageCall));
	    logger.info("itemDetails = {}", name);
	    return "itemDetails";
	}
	
	//for itemDetails.jsp 사용 중지 버튼 클릭 visible: Yes -> No 
	@PostMapping("itemDetails/{name}/toggleVisible") //Changing a visible column's value in a database
	public String toggleVisible(@PathVariable("name") String name, ItemDetailsVO vData) {
		logger.info("itemDetails = {}", vData);
		itemServ.toggleVisible(vData); // to update the item details in the "database". //데이터 베이스 내의 visible 칼럼을 업데이트함
		return "redirect:/dashboard";
		//return "redirect:/itemDetails/" + vData.getName(); // the user is redirected to the updated item details page after updating the visibility status of the item.
	}
	
	//for stopUsing.jsp 재사용 버튼 클릭 visible: No -> Yes
	@PostMapping("stopUsing/{name}/toggleVisibleYes") //Changing a visible column's value in a database
	public String toggleVisibleYes(@PathVariable("name") String name, ItemDetailsVO vData) {
		logger.info("itemDetails = {}", vData);
		itemServ.toggleVisibleYes(vData);
		return "redirect:/stopUsing";
	}
}


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