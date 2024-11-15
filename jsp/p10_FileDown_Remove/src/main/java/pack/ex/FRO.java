package pack.ex;

import java.io.File;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

public class FRO {
	
	private static final String SAVEFOLDER = "D:\\git_workSpace\\guroAi\\jsp\\p10_FileDown_Remove\\src\\main\\webapp\\fileStorage";
	
	// 파일 삭제 시작
	public boolean mtdFileRemove(HttpServletRequest req) {
		
		boolean remChk = false;
		
		try {
			req.setCharacterEncoding("UTF-8");
			String fName = SAVEFOLDER + "/" + req.getParameter("fName");
			
			File objFile = new File(fName);
			
			if(objFile.exists())
				remChk = objFile.delete();
			
		} catch (UnsupportedEncodingException e) {
			System.out.println(e.getMessage());
		}
		
		return remChk;
	}
	
}
