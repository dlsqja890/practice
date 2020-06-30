package sist.com.web;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class Fileupdown {

	
	@RequestMapping(value="fileupload.do" , method=org.springframework.web.bind.annotation.RequestMethod.POST)
	public String upload(MultipartFile uploadfile , MultipartHttpServletRequest request, Object obj){
		
		
		
		String fileTag= "file";
		String filePath="C:\\Users\\XNOTE\\Pictures\\imsi";
		String fileName=uploadfile.getOriginalFilename();
		
		try {
			uploadfile.transferTo(new File(filePath, fileName));
		} catch (Exception e) {
			System.out.println("업로드 오류");
			// TODO: handle exception
		}
		System.out.println("UPLOAD [파일]호출");
		System.out.println("파일이름 = "+uploadfile.getOriginalFilename());
		System.out.println("파일크기 = "+uploadfile.getSize());
		
		return "filetest/FIleupdown" ;
	}
}
