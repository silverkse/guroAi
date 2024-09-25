const dom = document.querySelector("input");
dom.addEventListener("keypress", function (event) {

  // input의 value 가져오기
  let url = dom.value;

  // envent = JS의 BOM(브라우저 객체 모델)
  // let code = event.keyCode;
  let codeTxt = event.key;

  // event.keyCode에서는 엔터 13 반환
  // event.key에서는 엔터 “Enter”로 문자열이 반환 됨
  if (code == 13) {
  // if (codeTxt == "Enter") {
    // console.log("codeTxt check : " + codeTxt);

    console.log("code : " + code);
    // console.log("url : " + url);
    // location.href=url;
  }
})