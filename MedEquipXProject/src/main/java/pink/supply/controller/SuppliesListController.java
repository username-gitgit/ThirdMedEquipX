package pink.supply.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pink.supply.model.ReleasedVO;
import pink.supply.model.SuppliesListVO;
import pink.supply.service.SuppliesListService;

@Controller
public class SuppliesListController {
	
	private static final Logger logger = LoggerFactory.getLogger(SuppliesListController.class);

	//변경한 관리자 넣기
	
	@Autowired
	SuppliesListService supplyServ;
	
	
	@GetMapping("dashboard")
	public String dashboardPage(SuppliesListVO supList, Model model) {
		ArrayList<SuppliesListVO> supDatas = supplyServ.callSupplyList(supList);
		String name = null;
		int stock = 0;
		int safetyStock = 200;
		
		Optional<SuppliesListVO> result = supDatas.stream()
				.filter(suppliesListVO -> (suppliesListVO.getName().equals("Syringe 3cc") && suppliesListVO.getStock() < safetyStock) ||
										  (suppliesListVO.getName().equals("Dextrose 5pct") && suppliesListVO.getStock() < safetyStock) ||
										  (suppliesListVO.getName().equals("Tridol") && suppliesListVO.getStock() < safetyStock))
				.findAny();

		if (result.isPresent()) {
		    SuppliesListVO suppliesListVO = result.get();
		    name = suppliesListVO.getName();
	    	stock = suppliesListVO.getStock();
	    	int required = safetyStock-stock;
		    model.addAttribute("alertName", name);
		    model.addAttribute("alertStock", stock);
		    model.addAttribute("required", required);
		}else {
			model.addAttribute("OKmsg", "주요품목 재고 이상없음");
		}
		logger.info("call supDatas data is ={}", supDatas);
		model.addAttribute("listCall", supplyServ.callSupplyList(supList));
		return "dashboard";
	}
	
	@GetMapping(value = "dashboard", params = "subcategory")
	public String callDatasByCategory(@RequestParam("subcategory") String subcategory, Model model) {
		logger.info("subcategory data is ={}", subcategory);
		model.addAttribute("getCategory", supplyServ.selctCategory(subcategory));
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
		return "redirect:/dashboard";
		
	}
	
//	@GetMapping("itemReceived")
//	public String itemReceivedPage() {
//		return "itemReceived";
//	}
	
	@GetMapping(value = "itemReceived", params = "name")
	public String callDatasByQR(@RequestParam("name") String name, Model model) {
		SuppliesListVO SuppliesDatas = supplyServ.callDataByQR(name);
		logger.info("SuppliesDatas data is ={}", SuppliesDatas);
		model.addAttribute("getQRDatas", SuppliesDatas);
		return "itemReceived";
	}
	
	@PostMapping("updateItem")
	public String updateItem(SuppliesListVO supList) {
		logger.info("updateItem data is ={}", supList);
		supplyServ.updateItem(supList);
		return "itemReceived";
	}

	@GetMapping("newItem")
	public String addItem() {
		return "newItem";
	}
	
	
	
	
}
