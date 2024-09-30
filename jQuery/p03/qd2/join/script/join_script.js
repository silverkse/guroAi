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
  } else if (email.trim() == "") {
    alert("이메일을 입력해주세요.");
    document.querySelector("#emailBox").focus();
  } else if (domain.trim() == "") {
    alert("이메일 입력해주세요.");
    document.querySelector("#domainBox").focus();
  } else {
    location.href = "/joinResult.html";
  }

}
