package pink.supply.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import pink.supply.model.MemberVO;
import pink.supply.service.SignUpService;

@Controller
public class SignUpController {
	
	private static final Logger logger = LoggerFactory.getLogger(SignUpController.class);
	
	@Autowired
	private BCryptPasswordEncoder bpassencode;

	
	@Autowired
	SignUpService signServ;
	
	@GetMapping("SignUp")
	public String signUpPage() {
		return "SignUp";
	}
	
	@PostMapping("SignUp")
	public String sendSignUp(@Valid MemberVO member, BindingResult bindingResult, Model model) {
		String clearPw;
		String encodePw;
		if (bindingResult.hasErrors()) {
	        // 에러 메시지 추출
	        List<ObjectError> errors = bindingResult.getAllErrors();
	        List<String> errorMessages = new ArrayList<>();
	        for (ObjectError error : errors) {
	            errorMessages.add(error.getDefaultMessage());
	        }
	        model.addAttribute("errors", errorMessages);
	        return "signup"; // 에러가 발생했을 때 회원가입 페이지로 이동
	    }
		clearPw = member.getPassword();
		encodePw = bpassencode.encode(clearPw);
		member.setPassword(encodePw);
		signServ.logisticsJoin(member);
		logger.info("Welcome signup! member is {}.", member);
		return "redirect:/";
		
	}

}
