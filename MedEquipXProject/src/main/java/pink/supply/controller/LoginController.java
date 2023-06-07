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
	
	
	@PostMapping("logisticsIn") //손볼 예정 - 관리자 매니저 분리
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
				model.addAttribute("getName", memData);
                session.setAttribute("member", memData);
				return "home";
            } else {//비번 틀렷을때
                return "/login";
            }
        } else {// 일치하는 아이디가 존재하지 않을 시
        	return "/login";
        }
	}
	
	//로그인상태 만들기
	//안전재고, 일정재고이하로 떨어지면 표시

	

}
