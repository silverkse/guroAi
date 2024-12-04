$(function(){
	
	// 입력으로 이동
	$("#insBtn").click(function(){
		location.href="/resIns";
	});
	
	// 평균 석차 목록으로 이동
	$("#avgListBtn").click(function(){
		location.href="/avgList";
	});
	
	// 성적 리스트로 이동
	$("#listBtn").click(function(){
		location.href="/";
	})
	
	// 상세 내용보기로 이동
	$("div#wrap.list div.dataRow").click(function(){
		let regNum = $(this).children("span.regNum").text();
//		alert(regNum);
		location.href="/desc?regNum="+regNum;
	});
	
	// 성적 삭제
	$(".delIcon").click(function(){
		let chk = confirm("삭제하시겠습니까?");
		if(chk) {
			let regNum = $(this).siblings(".regNum").text();
			location.href="/delete?regNum=" + regNum;
		} else {
			alert("사용자가 취소했습니다.");
		}
	});
	
});