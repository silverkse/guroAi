package pack.ex;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import pack.dto.DataBean;

public class FUO {
		
	public boolean mtdUpload(HttpServletRequest req, DataBean dataBean) {

		boolean chk = false;
		String saveFolder = "D:\\git_workSpace\\guroAi\\jsp\\p10_QD_Store\\src\\main\\webapp\\fileStorage";

		int maxSize = 10 * 1024 * 1024; // 최대 업로드 허용
		String encType = "UTF-8";

		String goodsName = "";
		int price = 0;
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

			goodsName = multiReq.getParameter("goodsName");
			price = Integer.parseInt(multiReq.getParameter("price"));
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

			System.out.println("goodsName : " + goodsName);
			System.out.println("price : " + price);
			System.out.println("content : " + content);
			System.out.println("originalFile : " + originalFile);
			System.out.println("uploadFile : " + uploadFile);
			System.out.println("fileType : " + fileType);
			System.out.println("fileSize : " + fileSize);
			
			dataBean.setGoodsName(goodsName);
			dataBean.setGoodsDesc(content);
			dataBean.setPrice(price);
			dataBean.setOriginalFile(originalFile);
			dataBean.setUploadFile(uploadFile);
			dataBean.setFileType(fileType);
			dataBean.setFileSize(fileSize);
			
			chk = true;
		} catch (IOException e) {
			System.out.print(e.getMessage());
		}

		return chk;
	}
	
}
