package pkg.sample;

public class Main {

	public static void main(String[] args) {
		
		long startTM = System.currentTimeMillis();
		
		long sum = 0;
		for (int i=1; i<=2000000000; i++) {
			sum += i;
		}
		System.out.println("누적결과(sum) : " + sum);
		long endTM = System.currentTimeMillis();
		
		System.out.println("성능 테스트 결과 : " + (endTM - startTM) + " ms");
		
	}

}
