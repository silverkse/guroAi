// 첫 번째 라디오 버튼을 클릭했을 때 작업
//  => 센티(cm) 입력 표시
// 대상 선정(document.querySelector("라디오버튼"))
// const Dom변수 = 대상 선정;
// Dom변수.addEventListener("click", 함수);
// 함수에는 span#insTxt 의 텍스트를 변경하는 작업
// => cm → inch 선택일 경우 "센티미터 입력" 출력
// => inch → cm 선택일 경우 "인치 입력" 출력
// let rdoDom = document.querySelectorAll("input[type=radio");
// rdoDom[0].addEventListener("click", 함수);

// 두 번째 라디오 버튼을 클릭했을 때 작업
// => "인치(inch) 입력" 표시
// 대상 선정(document.querySelector("라디오버튼"))
// const Dom변수 = 대상 선정;
// Dom변수.addEventListener("click", 함수);
// 함수에는 span#insTxt 의 텍스트를 변경하는 작업
// => cm → inch 선택일 경우 "센티미터 입력" 출력
// => inch → cm 선택일 경우 "인치 입력" 출력
// let rdoDom = document.querySelectorAll("input[type=radio");
// 변수 재활용
// rdoDom[1].addEventListener("click", 함수);


let btnDom = document.querySelector("button");
btnDom.addEventListener("click", () => {

  let rdoDom = document.querySelectorAll("input[type=radio]");
  rdoDom.forEach((e, i) => {

    let convType = "";

    if (e.checked) {
      convType = e.value;
      console.log(convType);
      let insData = document.querySelector("#insData").value;
      let res = 0;
      let txt = "";
      
      switch (convType) {
        case "c2i":
          res = insData / 2.54, 1;
          res = res.toFixed(1);
          txt = `${insData} cm = ${res} inch`;
          break;
        case "i2c":
          res = insData * 2.54;
          res = res.toFixed(1);
          txt = `${insData} inch = ${res} cm`;
          break;
        }
          
        document.querySelector("#resArea").innerText = txt;
    }

  });

});