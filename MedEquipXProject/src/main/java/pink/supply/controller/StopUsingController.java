package pink.supply.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import pink.supply.model.StopUsingVO;
import pink.supply.service.StopUsingService;

public class StopUsingController {
	private static final Logger logger = LoggerFactory.getLogger(StopUsingController.class);
	
	@Autowired
	StopUsingService stopServ;
	
	@GetMapping("stopUsing") //Annotation for mapping HTTP GET requests onto specific handler methods, a shortcut for @RequestMapping(method = RequestMethod.GET)
	public String stopUsing(StopUsingVO stpUsing, Model model) {
		model.addAttribute("usingCall", stopServ.callStopUsing(stpUsing));
		return "stopUsing";
	}
}