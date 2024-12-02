$(function(){
	
	//파일 다운로드
	$("#fileDownBtn").click(function(){
		
		// 파일 다운을 위한 패턴을 html form 요소에 적용해 사용했다
		let downChk = confirm("다운로드 하시겠습니까?");
		if(downChk) {
			$("#fileMgrForm").attr("action", "/downloadProc").submit();			
		} else {
			alert("사용자가 취소하셨습니다.");
		}
		
	});
	
	//파일 삭제
	$("#fileDelBtn").click(function(){
		
		// 파일 다운을 위한 패턴을 html form 요소에 적용해 사용했다
		let removeChk = confirm("파일을 삭제하시겠습니까?");
		if(removeChk) {
			$("#fileMgrForm").attr("action", "/fileDelProc").submit();			
		} else {
			alert("사용자가 취소하셨습니다.");
		}
		
	});
	
	
});