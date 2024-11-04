package pkg;

// DTO(Data Transfer Object)
// 자료 전송 객체
// Bean

public class DataProc {
	private String userName;
	private String uid;
	private String upw;
	public String getUserName() {
		return "1. " + userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUid() {
		return "2. " + uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUpw() {
		return "3. " + upw;
	}
	public void setUpw(String upw) {
		this.upw = upw;
	}
	
//	setter
//	public void setUserName(String userName) {
//		this.userName = userName;
//	}
	
//	getter
//	public String getUserName() {
//		return userName;
//	}
	
// 하지만 위와 같이 하나하나 만들지 않을 것
//	 => alt + s + r -> alt + a -> alt + r로 작업하면 세터와 게터가 생성됨
	
	

}
