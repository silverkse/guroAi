package com.upload;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.upload.svc.UploadService;

import jakarta.servlet.http.HttpServletResponse;

@Controller
public class UploadController {
	
	@Autowired
	private UploadService uploadService;
	
	@RequestMapping("/")
	@ResponseBody
	public String root() {
		return "파일 업로드의 이해!";
	}
	
	// 파일 입력양식
	@RequestMapping("/fileForm")
	public String fileForm() {
		return "/fileForm";
	}
	
	// 파일 업로드 실행
	@RequestMapping("/uploadProc")
	public String uploadProc(
			MultipartHttpServletRequest multiReq,
			Model model) {
		
		List<String> list = uploadService.mtdUpload(multiReq);
		model.addAttribute("list", list);
		return "result";
	}
	
	// 파일 다운로드
	@RequestMapping("/downloadProc")
	public void fileDownload(
			@RequestParam("oriName") String oriName,
			@RequestParam("sysName") String sysName,
			HttpServletResponse resp
			) throws IOException {
		
		String realPath = "D:\\spring/uploadDir/";
		
//		System.out.println("여기까진 왔음");
		
		byte[] fileByte = FileUtils.readFileToByteArray(new File(realPath + sysName));
		// build.gradle에서 dependencies 항목에	
//			implementation 'commons-io:commons-io:2.7' 추가 후 Refresh Gradle Project
//			위 과정을 해야만 import org.apache.commons.io.FileUtils; 임포트 해 사용할 수 있다.
		String filename = URLEncoder.encode(oriName, "UTF-8");
		// 파일저장경로에 있는 파일을 다운로드할 때 원본 파일명 적용	
//			다운로드 응답 헤더설정((response header)
		resp.setContentType("application/octet-stream");
		resp.setContentLength(fileByte.length);
		resp.setHeader("Content-Disposition", "attachment; filename="+ filename);
		resp.setHeader("Content-Transfer-Encoding", "binary");
		resp.getOutputStream().write(fileByte);
		resp.getOutputStream().flush();
		resp.getOutputStream().close();
		
	}
	
	
	// 파일 삭제
	@RequestMapping("/fileDelProc")
	public String fileDelete(@RequestParam("sysName") String sysName) {
		
		String realPath = "D:\\spring/uploadDir/";
		File file = new File(realPath + sysName);
		if (file.exists()) {
			file.delete();
		}
		
		return "redirect:/fileForm";
	}
}
