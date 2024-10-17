// Start 버튼 시작
let clrInterval1;
let clrInterval2;
let clrInterval3;
const btnStartDom = document.querySelector("#btnStart");
btnStartDom.addEventListener("click", () => {
  clrInterval1 = setInterval(() => {
    let rndNum = fnRnd();
    let inputDom = document.querySelectorAll("#tblLayout input");
    inputDom[0].value = rndNum;
  }, 100);
  clrInterval2 = setInterval(() => {
    let rndNum = fnRnd();
    let inputDom = document.querySelectorAll("#tblLayout input");
    inputDom[1].value = rndNum;
  }, 100);
  clrInterval3 = setInterval(() => {
    let rndNum = fnRnd();
    let inputDom = document.querySelectorAll("#tblLayout input");
    inputDom[2].value = rndNum;
  }, 100);
});

// Reset 버튼 시작
const btnResetDom = document.querySelector("#btnReset");
btnResetDom.addEventListener("click", () => {
  location.reload();
});

// Go! 버튼 시작
let numAry = [0, 0, 0];
const numPrnDom = document.querySelectorAll(".numPrn");

const btnGoDom = document.querySelectorAll(".btnGo");
btnGoDom[0].addEventListener("click", () => {
  clearInterval(clrInterval1);

  let insNum;
  while (true) {
    insNum = fnRnd();
    if (numAry[1] != 0) {
      if (numAry[1] == insNum) continue;
    }
    if (numAry[2] != 0) {
      if (numAry[2] == insNum) continue;
    }
    console.log("insNum : " + insNum);
    break;
  }
  numAry[0] = insNum;
  numPrnDom[0].value = insNum;
});
btnGoDom[1].addEventListener("click", () => {
  clearInterval(clrInterval2);

  let insNum;
  while (true) {
    insNum = fnRnd();
    if (numAry[0] != 0) {
      if (numAry[0] == insNum) continue;
    }
    if (numAry[2] != 0) {
      if (numAry[2] == insNum) continue;
    }
    console.log("insNum : " + insNum);
    break;
  }
  numAry[1] = insNum;
  numPrnDom[1].value = insNum;
});
btnGoDom[2].addEventListener("click", () => {
  clearInterval(clrInterval3);

  let insNum;
  while (true) {
    insNum = fnRnd();
    if (numAry[0] != 0) {
      if (numAry[0] == insNum) continue;
    }
    if (numAry[1] != 0) {
      if (numAry[1] == insNum) continue;
    }
    console.log("insNum : " + insNum);
    break;
  }
  numAry[2] = insNum;
  numPrnDom[2].value = insNum;
});

// 난수 생성 함수
function fnRnd() {
  let rndNum = Math.floor(3 * Math.random() + 1);
  return rndNum;
}
