$(function() {
	
	// 입력 페이지 이동
	$("#insBtn").click(function(){
		location.href="/write";
	});
	
	// 성적 리스트 페이지 이동
	$("#listBtn").click(function(){
		location.href="/list";
	});
	
	// 성적 상세보기
	$(".dataRow>span:not(:last-child())").click(function(){
		let num = $(this).siblings("span").eq(0).text();
		location.href="/detail?num="+num;
	});
	
	// 평균석차 페이지 이동
	$("#avgListBtn").click(function(){
		location.href="/avgList";
	});
	
	// 내용 수정
	$("#modBtn").click(function(){
		let num = $(this).next("input[type=hidden]").val();
		location.href="/mod?num="+num;
	});
	
	// 내용 삭제
	$(".delIcon").click(function(){
		let num = $(this).siblings("span").eq(0).text();
		let chk = confirm(num + "번의 모든 내용을 제거하시겠습니까?");
		if(chk) {
	//		alert("num : " + num);
			location.href="/delProc?num=" + num;
		} else {
			alert("사용자가 취소하셨습니다.");
		}
	});
	
});