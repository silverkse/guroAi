package com.upload.svc;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Service
public class UploadService {
	
	// 파일 업로드
	public List<String> mtdUpload(
			MultipartHttpServletRequest multiReq
			) {
		
		// 텍스트 데이터 처리
		String writer = multiReq.getParameter("writer");
		System.out.println("writer : " + writer);
		
		
		// 파일 (데이터) 처리
		// getFile 메서드로 파일만 추출한다. 파일의 크기, 원본 파일 명, 업로드 파일 명 등을 처리할 수 있다
		MultipartFile multipartFile = multiReq.getFile("fName");
		// 원본파일명
		String upFile = multipartFile.getOriginalFilename();
		
		List<String> list = new ArrayList<>();
		
		try {
			
			if (!upFile.equals("")) {
				String oriName = "";
				String sysName = "";
				
				String realPath = "D:\\spring/uploadDir/";
				
				File folder = new File(realPath);
				if(folder.isDirectory() == false) {
					folder.mkdirs();
				}
				
				oriName = upFile;
				sysName = System.currentTimeMillis() +					// System.currentTimeMillis() => 1970.1.1. 00:00:00.000 을 1로 함
						oriName.substring(oriName.lastIndexOf("."));
						// currentTimeMillis() : 절대시간
						// oriName.substring(oriName.lastIndexOf(".")) -> lastIndexOf(".") = 문장의 오른쪽 끝부터 마침표까지 잘라냄 sample.jpg의 경우 .jpg 추출 됨
						// => 확장자
						// 그러므로 저장되는 파일명은 "절대시간.확장자" 형식이 된다
						// 이렇게하면 파일 명이 중복되지 않게 저장할 수 있다.
				
				long fSize = multipartFile.getSize();
				
				File file = new File(realPath + sysName);
				multipartFile.transferTo(file);
				
				list.add(oriName);
				list.add(sysName);
				list.add(Long.toString(fSize));
				list.add(realPath);
				
				System.out.println("원본파일명 : " + oriName);
				System.out.println("업로드파일명 : " + sysName);
				System.out.println("파일크기 : " + fSize);
				System.out.println("저장경로 : " + realPath);
			}
			
		} catch (IOException e) {
			System.out.println("IOE : " + e.getMessage());
		}
		return list;
	}
	
}
