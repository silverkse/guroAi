const btnDom = document.querySelector("button");
let insVal;   //입력 숫자
let res = ` `;
let resVal;   // 배수
btnDom.addEventListener("click", function() {
  insVal = document.querySelector("#insVal").value;
  let i = 2;
  for (; i <= insVal; i++) {
    if (insVal % i == 0) {
      break;
    }
  }
  res = `${insVal}은(는) ${i}의 배수입니다`;
  document.querySelector("#res").innerText = res;
  // document.querySelector("#resInsVal").innerText = insVal;
  // document.querySelector("#resVal").innerText = i;
});