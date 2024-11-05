package pkg.mem;

public class LoginBean {
	
	private String uidReal = "sample";
	private String upwReal = "1234";
	private String uid;		// 입력된 ID
	private String upw;		// 입력된 PW
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUpw() {
		return upw;
	}
	public void setUpw(String upw) {
		this.upw = upw;
	}
	
	public boolean chkAccount() {
		boolean passChk = false;
		if(uid.equals(uidReal)&&upw.equals(upwReal)) {
			passChk = true;
		}
		return passChk;
	}
	
	
}
