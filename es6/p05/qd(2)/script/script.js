// 상품등록 버튼
function submit() {
  if(!(fnItemCode())) {
    alert("상품코드는 5~8글자로 영어 1글자 이상, 숫자 1글자 이상, #, _, - 만 가능합니다.");
  }else if(!(fnItemName())) {
    alert("상품명은 2글자 이상으로 한글과 영어, 숫자 및 특수기호 #만 가능합니다.");
  }else if(!(fnManagerName())) {
    alert("담당자이름은 2~5글자로 한글만 가능합니다.");
  }else if(!(fnItemChk())) {
    alert("상품 검수확인을 체크해주세요.");
  } else {
    alert("상품 등록이 완료되었습니다.");
    window.location.reload();
  }
  
};

// 상품코드 유효성검사
function fnItemCode() {
  let itemCode = document.querySelector("#itemCode").value;
  const itemCodeReg = /^(?=.*[A-z])(?=.*\d)[A-z\d#_-]{5,8}$/;
  return itemCodeReg.test(itemCode);
}

// 상품이름 유효성검사
function fnItemName() {
  let itemName = document.querySelector("#itemName").value;
  const itemNameReg = /^[ㄱ-ㅎㅏ-ㅣ가-힣A-z\d#]{2,}$/;
  return itemNameReg.test(itemName);
}

// 담당자이름 유효성검사
function fnManagerName() {
  let managerName = document.querySelector("#managerName").value;
  const managerNameReg = /^[ㄱ-ㅎㅏ-ㅣ가-힣]{2,5}$/;
  return managerNameReg.test(managerName);
}

// 검수확인 체크 유효성검사
function fnItemChk() {
  let itemChk = document.querySelector("#itemChk").checked;
  return itemChk;
}

