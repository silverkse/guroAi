/*
let btnDom = document.querySelector("button");
btnDom.addEventListener("click", () => {
	let formDom = document.querySelector("#frm01");
	formDom.setAttribute("action", "/receive.jsp");
	formDom.submit();
});
*/

$(function() {
	$("button").click(function(){
		 $("form").attr("action", "/receive.jsp").submit();
	});
});