$(function(){
	
//	상품 수정 시작
	$("div#btnArea>button").click(()=>{
		
		// 상품번호 유효성 검사
		let numParam = $("#numParam").val().trim();
		// 수정할 상품가격 유효성 검사
		let priceParam = $("#priceParam").val().trim();
		
		if(numParam == '') {
			alert('상품번호를 입력해주세요.');
			$("numParam").focus();
		}else if(isNaN(numParam)) {
			alert("숫자만 입력해주세요.");
			$("numParam").focus();
		}else if(priceParam == '') {
			alert('상품가격을 입력해주세요.');
			$("priceParam").focus();
		}else if(isNaN(numParam)) {
			alert("숫자만 입력해주세요.");
			$("priceParam").focus();
		} else {
			let url = "updateProc.jsp?numParam="+numParam;
			url += "&priceParam="+priceParam;
			location.href=url;
		}
		
	});
//	상품 수정 끝

//	상품 삭제 시작
	$("span.delIcon").click(function(){
		let numParam = $(this).next("input[type=hidden]").val();
//		alert("val : " + val);
		
		let chk = confirm(numParam + " 번 상품을 삭제하시겠습니까?");
		if(chk) {
			location.href="deleteProc.jsp?numParam="+numParam;			
		} else {
			alert("사용자가 취소하였습니다.");
		}
	});
//	상품 삭제 끝

});