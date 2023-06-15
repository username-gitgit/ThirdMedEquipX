package pink.supply.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pink.supply.mapper.StopUsingMapper;
import pink.supply.model.StopUsingVO;

@Service
public class StopUsingServiceImpl implements StopUsingService {
	
	@Autowired 
	StopUsingMapper stopMap;
	
	public ArrayList<StopUsingVO> callStopUsing(StopUsingVO stpUsing){
		return stopMap.callStopUsing(stpUsing);
	}

}