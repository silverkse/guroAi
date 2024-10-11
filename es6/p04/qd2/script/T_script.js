let numAry = [];

const insBtnDom = document.querySelector("#insBtnArea>button");
insBtnDom.addEventListener("click", () => {
  numAry = [];
  // 출력 초기화
  document.querySelector("#prnAry").innerText = "";
  document.querySelector("#prnMedian").innerText = "";

  let num;
  let i = 0;
  while (true) {
    num = prompt(`${++i}번째 숫자 입력`);
    console.log(num);
    if (num == 999 || num == null) break;
    numAry.push(num);
  }

  console.log(numAry.toString());
  document.querySelector("#prnAry").innerText = numAry.toString();
});
// 배열 생성 및 출력 끝

// 메디안(=중앙값, 중위수) 찾기 시작
const findBtnDom = document.querySelector("#medianBtnArea>button");
findBtnDom.addEventListener("click", () => {
  console.log(numAry);
  numAry.sort((a, b) => a - b);
  console.log(numAry);
  let aryLen = numAry.length; // 배열의 요소 개수 = 배열의 크기
  let midIdx = Math.floor(aryLen / 2);
  let median; // 중앙값
  if (aryLen % 2 == 1) {
    // 요소의 개수가 홀수일 때 => 인덱스 가운데 요소의 숫자가 중앙 값
    median = numAry[midIdx];
  } else {
    median = (parseFloat(numAry[midIdx - 1]) + parseFloat(numAry[midIdx])) / 2;
  }
  document.querySelector("#prnMedian").innerText = median.toString();
});
// 메디안(=중앙값, 중위수) 찾기 끝
