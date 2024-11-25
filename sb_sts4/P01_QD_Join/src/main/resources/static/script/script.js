$(function () {
	$("button").click(()=>{
		let uid = $("#uid").val();
		let upw = $("#upw").val();
		let repw = $("#repw").val();
		let uname = $("#uname").val();
		
		if(uid == null || uid.trim() == "") {
			alert("내용을 입력해주세요.");
			$("#uid").focus();
		} else if(upw == null || upw.trim() == "") {
			alert("내용을 입력해주세요.");
			$("#upw").focus();
		} else if(repw == null || repw.trim() == "") {
			alert("내용을 입력해주세요.");
			$("#repw").focus();
		} else if(uname == null || uname.trim() == "") {
			alert("내용을 입력해주세요.");
			$("#uname").focus();
		} else {
			alert("입력이 완료되었습니다.");
		}
		
	});
});