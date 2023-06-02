package pink.supply.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pink.supply.mapper.SignUpMapper;
import pink.supply.model.MemberVO;

@Service
public class SignUpServiceImpl implements SignUpService {
	
	@Autowired
	SignUpMapper signMap;

	@Override
	public void logisticsJoin(MemberVO member) {
		signMap.logisticsJoin(member);
	}

}
