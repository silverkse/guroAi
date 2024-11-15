$(()=>{
	
//	다운로드 시작
	$("#downloadBtn").click(()=>{
		let fName = $("#upFileName").val();
		location.href="/download.jsp?fName="+fName;
	});
	
//	파일삭제 시작
	$("#removeBtn").click(()=>{
		let fName = $("#upFileName").val();
		location.href="/fileRemove.jsp?fName="+fName;
	});
//	파일삭제 끝
	
});