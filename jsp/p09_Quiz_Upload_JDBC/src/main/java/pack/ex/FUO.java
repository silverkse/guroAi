package pack.ex;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class FUO {
	private String subject = "";
	private String content = "";
	
	private String originalFile = "";
	private String uploadFile = "";
	
	private int fileSize = 0;
	
	private MultipartRequest multiReq = null;
	
	public boolean mtdUpload(HttpServletRequest req) {
		
		boolean chk = false;
		String saveFolder = "D:\\git_workSpace\\guroAi\\jsp\\p09_Quiz_Upload_JDBC\\src\\main\\webapp\\fileStorage";
		
		int maxSize = 5*1024*1024;
		String encType = "UTF-8";
		
		
		try {
			multiReq = new MultipartRequest(
						req,
						saveFolder,
						maxSize,
						encType,
						new DefaultFileRenamePolicy()
					);
			subject = multiReq.getParameter("subject");
			content = multiReq.getParameter("content");
			
			originalFile = multiReq.getOriginalFileName("fileName");
			// 원본 파일명
			uploadFile = multiReq.getFilesystemName("fileName");
			// 업로드 후 저장된 파일명
			
			// 파일 크기 산출
			File file = multiReq.getFile("fileName");
			fileSize = (int)file.length();
			
			System.out.println("subject : " + subject);
			System.out.println("content : " + content);
			System.out.println("originalFile : " + originalFile);
			System.out.println("uploadFile : " + uploadFile);
			System.out.println("fileSize : " + fileSize);
			
			chk = true;
			
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		
		
		return chk;
	}
	
	public MultipartRequest mtdSendData() {
		
		return multiReq;
	}
	
}
