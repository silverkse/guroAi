// 아이디 중복확인 팝업 시작 
// let dupChkPop;

// const dupChkDom = document.querySelector("#dupChkBtn");
// let scrWid = screen.width;
// let scrHei = screen.height;
// let popWid = 400;
// let popHei = 300;
// let leftPos = (scrWid-popWid) / 2;
// let topPos = (scrHei-popHei) / 2;
// dupChkDom.addEventListener("click", function() {
//   let uri = "T_idDupChk.html";
//   let alias = "";
//   let spec = "width="+popWid+"px, ";
//   spec += "height="+popHei+"px, ";
//   spec += "left="+ leftPos +"px, ";
//   spec += "top="+ topPos +"px";
//   dupChkPop = window.open(uri, alias, spec);
// });

// function popClose() {
//   window.close();
// }

// function idSend() {
//   let userid = document.querySelector("#chkID").value;
//   opener.document.querySelector("#userid").value = userid;
//   window.close();
// }
// 아이디 중복확인 팝업 끝

// 비밀번호 일관성 검사 시작
function fnPwChk() {
  let pw = document.querySelector("#userpw").value;
  let pw_Re = document.querySelector("#userpw_Re").value;
  let outputTxt = "";
  if(pw == pw_Re) {
    // 일치 출력
    outputTxt = "일치";
  } else {
    // 불일치 출력
    outputTxt = "불일치";
  }
  document.querySelector("#pwTxt").innerText = outputTxt;
}
// 비밀번호 일관성 검사 끝

// 이메일 도메인 적용 시작
function fnEmailDomain() {
  let mailDomain = document.querySelector("#emailDomain").value;
  document.querySelector("#userEmail_2").value = mailDomain;
}
// 이메일 도메인 적용 끝

// 입력양식 유효성 검사
$(function() {
  $("#joinSbmBtn").click(function() {
    let userid = $("#userid").val().trim();
    let userpw = $("#userpw").val().trim();
    let userEmail_1 = $("#userEmail_1").val().trim();
    let userEmail_2 = $("#userEmail_2").val().trim();

    if (userid == "") {
      alert("아이디는 필수 입력입니다.");
      $("#dupChkBtn").focus();
    } else if (userpw == "") {
      $("#pwTxt").text("비밀번호 필수 입력");
      $("#userpw").focus();
    } else if (userEmail_1 == "") {
      alert("이메일은 필수 입력입니다.");
      $("#userEmail_1").focus();
    } else if (userEmail_2 == "") {
      alert("이메일은 필수 입력입니다.");
      $("#userEmail_2").focus();
    } else {
      location.href = "T_joinResult.html";
      // alert("OK");
    }

  });
  
  // 처음으로 돌아가기
  $("button#goFirst").click(function() {
    location.href = "T_joinAgreement.html";
  });

});

