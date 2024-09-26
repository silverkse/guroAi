// 아이디 중복확인 팝업 시작 
let dupChkPop;

const dupChkDom = document.querySelector("#dupChkBtn");
let scrWid = screen.width;
let scrHei = screen.height;
let popWid = 400;
let popHei = 300;
let leftPos = (scrWid-popWid) / 2;
let topPos = (scrHei-popHei) / 2;
dupChkDom.addEventListener("click", function() {
  let uri = "T_idDupChk.html";
  let alias = "";
  let spec = "width="+popWid+"px, ";
  spec += "height="+popHei+"px, ";
  spec += "left="+ leftPos +"px, ";
  spec += "top="+ topPos +"px";
  dupChkPop = window.open(uri, alias, spec);
});

function popClose() {
  window.close();
}

function idSend() {
  let userid = document.querySelector("#chkID").value;
  opener.document.querySelector("#userid").value = userid;
  window.close();
}
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
function fnSbmChk() {
  // 아이디 유효성 검사
  // ID는 6~20글자, 영어 대소문자, 숫자만 가능
  let idRegExp = /[^a-zA-Z0-9]/;
  let userid = document.querySelector("#userid").value;

  // 2. PW 유효성검사
  // PW는 6~20글자, 영어 대/소문자, 숫자, _, @만 가능
  let pwRegExp = /[^a-zA-Z0-9_@]/;
  let userpw = document.querySelector("#userpw").value;
  let userpw_Re = document.querySelector("#userpw_Re").value;

  // 3. 이메일 유효성검사(공백 검사만 적용)
  let email_1 = document.querySelector("#userEmail_1").value;
  let email_2 = document.querySelector("#userEmail_2").value;

  if (idRegExp.test(userid)) {
    alert("ID는 6~20글자, 영어 대/소문자, 숫자만 가능합니다.");
    document.querySelector("#userid").focus();
  } else if (userid.length < 6) {
    alert("ID는 6~20글자, 영어 대/소문자, 숫자만 가능합니다.");
  } else if (pwRegExp.test(userpw)) {
    alert("PW는 6~20글자, 영어 대/소문자, 숫자, _, @만 가능합니다.");
    document.querySelector("#userpw").focus();
  } else if (userpw.length < 6) {
    alert("PW는 6~20글자, 영어 대/소문자, 숫자, _, @만 가능합니다.");
  } else if (userpw != userpw_Re) {
    alert("비밀번호가 일치하지 않습니다.")
    document.querySelector("#userpw_Re").focus();
  }else if (email_1 == "") {
    alert("이메일에는 공백을 사용할 수 없습니다");
    document.querySelector("#userEmail_1").focus();
  } else if (email_2 == "") {
    alert("이메일에는 공백을 사용할 수 없습니다");
    document.querySelector("#userEmail_2").focus();
  } else {
    alert("유효성검사 OK");
  }
}
