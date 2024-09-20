let domRes = document.querySelector("button#res");
domRes.addEventListener("click", bmiCalc);

let domCSS = document.querySelector("button#resCSS");
domCSS.addEventListener("click", resCSS);

function bmiCalc() {
  let kg = document.querySelector("#kg").value;
  let cm = document.querySelector("#cm").value;
  cm = cm / 100;
  let bmi = kg / (cm * cm);
  bmi = bmi.toFixed(1);

  document.querySelector("#res1 span").innerText = bmi;

  let txt = "표준체중";
  if (bmi < 20.0) {
    txt = "저체중";
  } else if (bmi >= 25.0) {
    txt = "과체중";
  }
  document.querySelector("#res2").innerText = `${txt}입니다.`;
}

function resCSS() {
  bmiCalc();
  let selectSpan = document.querySelector("#res1 span").style;
  selectSpan.color = "#f00";
  selectSpan.fontSize = "18px";
  selectSpan.textDecoration = "underline";

  let selectP = document.querySelector("#res3");
  selectP.innerText = "(지수계산 결과에 빨간색과 밑줄 적용)";
  selectP.style.fontSize = "14px";
  selectP.style.marginTop = "10px";
}
