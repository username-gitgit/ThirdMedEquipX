package pink.supply.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import pink.supply.model.AttachVO;
import pink.supply.service.UploadService;

@Controller
public class UploadController {
	
	@Autowired
    private UploadService upLoloadServ;
	
	 @PostMapping("/uploadForm")
	    public String uploadForm(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) {
		 
		 UUID uuid = UUID.randomUUID();

	        try {
	            // 파일 저장
	            String fileName = file.getOriginalFilename();
	            // 로컬 디렉토리 경로 설정
	            String filePath = "C:\\Users\\GR\\git\\MedEquipXProject\\MedEquipXProject\\src\\main\\webapp\\resources\\assets\\img\\product\\" + fileName;
	            File localFile = new File(filePath);
	            file.transferTo(localFile);
	            
	            // 데이터 저장
	            AttachVO attach = new AttachVO();
	            attach.setUuid(uuid.toString());
	            attach.setFilename(fileName);
	            attach.setUploadpath(filePath);
	            upLoloadServ.imgInsert(attach);

	            redirectAttributes.addFlashAttribute("message", "파일 업로드 성공");
	        } catch (IOException e) {
	            e.printStackTrace();
	            redirectAttributes.addFlashAttribute("message", "파일 업로드 실패");
	        }

	        return "redirect:/";
	    }
	

}