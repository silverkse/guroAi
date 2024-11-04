package pkg;

public class DataPrn {
	private String data;

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}
	
	public void mtd() {
		System.out.println("수신 데이터 : " + data);
	}
}
