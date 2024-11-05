package pkg.mem;

public class LoginBean {
	
	private String uid;
	private String upw;
	private String chkID = "sample";
	private String chkPW = "1234";

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
	
	public boolean mtdLoginChk() {
		if(uid.equals(chkID) && upw.equals(chkPW)) {
			return true;
		} else {
			return false;
		}
	}
}
