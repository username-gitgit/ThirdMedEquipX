package pink.supply.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import pink.supply.model.MemberVO;
import pink.supply.service.LoginService;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	LoginService logServ;
	
	@Autowired
	private BCryptPasswordEncoder bpassencode;
	
	
	@GetMapping("LogIn")
	public String LogInPage() {
		return "LogIn";
	}
	
	
	@PostMapping("logisticsIn")
	public String logisticsIn(MemberVO member, HttpSession session, Model model) {
		String clearPw;
		String encodePw;
		MemberVO memData = logServ.logisticsIn(member);
		if(member != null) {
			clearPw = member.getPassword();
			logger.info("clearPw is {}.", clearPw);
			encodePw = memData.getPassword();
			logger.info("encodePw is {}.", encodePw);
			if (true == bpassencode.matches(clearPw, encodePw)) {
				memData.setPassword("");				
                session.setAttribute("member", memData);
                model.addAttribute("getName", memData);
                logger.info("memData is {}.", memData);
				return "redirect:/dashboard";
            } else {//비번 틀렷을때
                return "/LogIn";
            }
        } else {// 일치하는 아이디가 존재하지 않을 시
        	return "/LogIn";
        }
	}
	
	//로그인상태 만들기
	//안전재고, 일정재고이하로 떨어지면 표시 - 하긴했는데 여유되면 더 수정하기

	

}
