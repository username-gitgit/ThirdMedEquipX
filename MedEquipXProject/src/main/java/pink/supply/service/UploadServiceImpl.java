package pink.supply.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pink.supply.mapper.UploadMapper;
import pink.supply.model.AttachVO;
import pink.supply.model.SuppliesListVO;

@Service
public class UploadServiceImpl implements UploadService {
	
	@Autowired
	UploadMapper upLoadMap;

	@Override
	public void imgInsert(AttachVO attach) {
		upLoadMap.imgInsert(attach);
	}

	@Override
	public void itemInsert(SuppliesListVO addSupply) {
		upLoadMap.itemInsert(addSupply);
	}

}
