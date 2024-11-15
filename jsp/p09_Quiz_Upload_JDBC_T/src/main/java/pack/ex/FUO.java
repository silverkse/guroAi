package pack.ex;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class FUO {
	
	public String[] rtnData = new String[6];
	
	public boolean mtdUpload(HttpServletRequest req) {

		boolean chk = false;
		String saveFolder = "D:\\git_workSpace\\guroAi\\jsp\\p09_Quiz_Upload_JDBC_T\\src\\main\\webapp\\fileStorage";

		int maxSize = 10 * 1024 * 1024; // 최대 업로드 허용
		String encType = "UTF-8";

		String subject = "";
		String content = "";

		String originalFile = ""; // 원본 파일명
		String uploadFile = ""; // 업로드된 파일명
		String fileType = "";

		int fileSize = 0; // 파일 크기(=용량)
		String fSize = "";

		try {
			MultipartRequest multiReq = new MultipartRequest(
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
			fileType = multiReq.getContentType("fileName");
			// 업로드 파일 종류

			// 파일 크기 산출
			File file = multiReq.getFile("fileName");
			fileSize = (int) file.length();
			fSize = String.valueOf(fileSize);

			System.out.println("subject : " + subject);
			System.out.println("content : " + content);
			System.out.println("originalFile : " + originalFile);
			System.out.println("uploadFile : " + uploadFile);
			System.out.println("fileType : " + fileType);
			System.out.println("fileSize : " + fileSize);
			
			rtnData[0] = subject;
			rtnData[1] = content;
			rtnData[2] = originalFile;
			rtnData[3] = uploadFile;
			rtnData[4] = fileType;
			rtnData[5] = fSize;
			
			chk = true;
		} catch (IOException e) {
			System.out.print(e.getMessage());
		}

		return chk;
	}
}
