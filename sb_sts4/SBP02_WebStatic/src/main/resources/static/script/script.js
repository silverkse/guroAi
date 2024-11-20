//const goSubDom = document.querySelector("span#goSubMain");
//goSubDom.addEventListener("click", () => {
//	location.href="/sub/subMain.html";
//});
//
//const goMainDom = document.querySelector("span#goMain");
//goMainDom.addEventListener("click", () => {
//	alert("ok");
//	location.href="/";
//});

// addEventListener는 처음 한 개만 정상 인식한다


$(function () {
	// 서브 => 메인
	$("#goMain").click(()=>{
		location.href="/";
	});
	
	// 메인 => 서브
	$("#goSubMain").click(()=>{
		location.href="/sub/subMain.html";
	});
	
});