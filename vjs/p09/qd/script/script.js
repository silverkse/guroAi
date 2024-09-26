let openFlag;

function fnIdChk() {
  let scrWid = screen.width; // 모니터의 폭
  let scrHei = screen.height; // 모니터의 높이
  let popWid = 320; // 윈도우 팝업창 폭
  let popHei = 220; // 윈도우 팝업창 높이
  let leftPos = (scrWid - popWid) / 2; // (scWid/2 - popWid/2;)
  let topPos = (scrHei - popHei) / 2; // (scHei/2 - popHei/2;)

  let url = "../winPopup.html";
  let popName = "아이디 중복확인";
  let attr = "";
  attr += "width=" + popWid + "px, ";
  attr += "height=" + popHei + "px, ";
  attr += "left=" + leftPos + "px, ";
  attr += "top=" + topPos + "px";

  openFlag = window.open(url, popName, attr);

  // openFlag.document.querySelector("#cInput").value = document.querySelector("#id").value;
}

function fnChkPw() {
  let pw = document.querySelector("#pw").value;
  let chkPw = document.querySelector("#chkPw").value;
  const pwDom = document.querySelector("#chkMsg");
  pwDom.style.color = "#aaa";
  if (pw != chkPw) {
    pwDom.innerText = "불일치";
    pwDom.style.color = "#f00";
  } else {
    pwDom.innerText = "일치";
  }
}

function fnSelectDomain() {
  let domain =
    document.querySelector("#domain").options[
      document.querySelector("#domain").selectedIndex
    ].value;
  document.querySelector("#domainBox").value = domain;
  if (domain == "") {
    document.querySelector("#domainBox").focus();
  }
}

function fnRegChk() {
  let id = document.querySelector("#id").value;
  let pw = document.querySelector("#pw").value;
  let chkPw = document.querySelector("#chkPw").value;
  let email = document.querySelector("#emailBox").value;
  let domain = document.querySelector("#domainBox").value;
  
  if (id.trim() == "") {
    alert("아이디를 입력해주세요.");
    document.querySelector("#id").focus();
  } else if (pw.trim() == "") {
    alert("비밀번호를 입력해주세요.");
    document.querySelector("#pw").focus();
  } else if (chkPw.trim() == "") {
    alert("비밀번호를 입력해주세요.");
    document.querySelector("#chkPw").focus();
  } else if (pw != chkPw) {
    alert("비밀번호를 확인해주세요.");
  } else if (email.trim() == "") {
    alert("이메일을 입력해주세요.");
    document.querySelector("#emailBox").focus();
  } else if (domain.trim() == "") {
    alert("이메일 입력해주세요.");
    document.querySelector("#domainBox").focus();
  } else {
    let idBollean = fnIdRegChk();
    let pwBollean = fnPwRegChk();
    let emailBollean = fnEmailRegChk();
    if (idBollean && pwBollean && emailBollean) {
      alert("회원가입이 완료되었습니다.");
    } else {
      alert("다시 시도해 주십시오.");
    }
  }

}

function fnIdRegChk() {
  let idReg = /[^a-zA-Z0-9]/;

  let id = document.querySelector("#id").value;

  let chkIdRes = idReg.test(id.trim());
  if (id.trim().length < 6) {
    alert("ID는 6~20글자로 입력해주세요.");
  } else if (chkIdRes) {
    alert("ID에는 영어 대/소문자, 숫자만 사용 가능합니다.");
  } else {
    return true;
  }
  return false;
}

function fnPwRegChk() {
  let pwReg = /[^a-zA-Z0-9_@]/;
  let pw = document.querySelector("#pw").value;

  let chkPwRes = pwReg.test(pw.trim());
  if (pw.trim().length < 6) {
    alert("PW는 6~20글자로 입력해주세요.");
  } else if (chkPwRes) {
    alert("PW는 영어 대/소문자, 숫자, _, @만 가능합니다.");
  } else {
    return true;
  }
  return false;
}

function fnEmailRegChk() {
  let email = document.querySelector("#emailBox").value;
  let domain = document.querySelector("#domainBox").value;
  email = email.trim();
  domain = domain.trim();
  if (email == "" || domain == "") {
    alert("이메일에는 공백을 사용할 수 없습니다.");
  } else {
    return true;
  }
  return false;
}
