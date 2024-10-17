let sbmBtnDom = document.querySelector("#sbmBtn");
sbmBtnDom.addEventListener("click", () => {
  // 상품코드 정규표현식 패턴
  const gCodePtn = /^(?=.*[A-z])(?=.*\d)[A-z\d#_-]{5,8}$/;
  const goodsCode = document.querySelector("#goodsCode").value;

  // 상품명 정규표현식 패턴
  const gNamePtn = /^[ㄱ-ㅎㅏ-ㅣ가-힣A-z\d# ]{2,}$/;
  let goodsName = document.querySelector("#goodsName").value;
  goodsName = goodsName.trim();

  // 담당자 이름 정규표현식 패턴
  const mgrNamePtn = /^[ㄱ-ㅎㅏ-ㅣ가-힣]{2,5}$/;
  let managerName = document.querySelector("#managerName").value;

  // 검수확인 체크
  let chkToF = document.querySelector("#confirmChk").checked;

  if (!gCodePtn.test(goodsCode)) {
    let msg =
      "상품코드는 5~8글자로 영어 " +
      "1글자 이상, 숫자 1글자 이상, " +
      "#, _, - 만 가능합니다.";
    alert(msg);
    document.querySelector("#goodsCode").focus();
  } else if (!gNamePtn.test(goodsName)) {
    let msg =
      "상품명은 2글자 이상으로 한글과 " +
      "영어, 숫자 및 특수기호 #과 공백만 " +
      "가능합니다.";
    alert(msg);
    document.querySelector("#goodsName").focus();
  } else if (!mgrNamePtn.test(managerName)) {
    let msg = "담당자이름은 2~5글자로 한글만 가능합니다.";
    alert(msg);
    document.querySelector("#managerName").focus();
  } else if (!chkToF) {
    let msg = "상품 검수확인을 체크해주세요.";
    alert(msg);
    document.querySelector("#confirmChk").focus();
    document.querySelector("#confirmChk").style.outline = "1px solid #000";
  } else {
    alert("OK");
  }
});
