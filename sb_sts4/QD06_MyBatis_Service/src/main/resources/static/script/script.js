$(function() {
	
	// 지원서 작성으로 이동
	$("#goApply").click(function() {
		location.href="/"
	});
	
	// 상세 보기로 이동
	$("div.dataRow").click(function() {
		let num = $(this).children("p.num").text();
//		alert(num);
		location.href="/descView?num="+num;
	});
	
	// 리스트로 이동
	$("#goList").click(function() {
		location.href="/applyList";
	});
		
	// 지원 내역 수정으로 이동
	$("#goModi").click(function(){
		location.href="/regModi";
	});
});