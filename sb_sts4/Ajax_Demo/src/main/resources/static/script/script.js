const xhttp = new XMLHttpRequest(); // Ajax를 위한 비동기 통신 설정

function loadDoc_1() {
	xhttp.onload = function() {
		$("div#area1").html(this.responseText);
	}
	xhttp.open("GET", "doc_1.txt");
	xhttp.send();
}

function loadDoc_2() {
	xhttp.onload = function() {
		$("div#area2").html(this.responseText);
	}
	xhttp.open("GET", "doc_2.txt");
	xhttp.send();
}

function fnAjaxReq() {
	
	const xmlHttpReq = new XMLHttpRequest();
	xmlHttpReq.onload = function() {
		const jsonObj = JSON.parse(this.responseText);
		let res = "<ul>";
		res += "<li>이름 : " + jsonObj["name"] + "</li>";
		res += "<li>나이 : " + jsonObj["age"] + "</li>";
		res += "</ul>";
		document.getElementById("res").innerHTML = res;
	}
	
	xmlHttpReq.open("GET", "/jsonReq");
	xmlHttpReq.send();
	
}