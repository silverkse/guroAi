const inputDom = document.querySelector("#inputBtn");
let arr;
inputDom.addEventListener("click", () => {
  arr = [];
  let i = 0;
  while (true) {
    let inputNum = parseFloat(prompt(`${i + 1}번째 숫자 입력`));
    if ((inputNum == 999) || isNaN(inputNum)) {
      break;
    } 
    arr[i] = inputNum;
    i++;
  }
  fnArr(arr);
});

function fnArr (arr) {
  document.querySelector("#arr").innerText = arr.toString();
};

const medianBtnDom = document.querySelector("#medianBtn");
medianBtnDom.addEventListener("click", () => {
  let sum = 0;
  let median = 0;
  arr.sort((a, b) => a - b);

  if(arr.length % 2 == 0) {
    sum = arr[arr.length / 2 - 1] + arr[arr.length / 2];
    median = sum / 2;
  } else {
    median = sortArr[Math.floor(arr.length / 2)];
  }
  document.querySelector("#median").innerText = median.toFixed(1);
});