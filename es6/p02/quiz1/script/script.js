const btnDom = document.querySelector("#inputBtn button");
btnDom.addEventListener("click", () => {
  let arr = [];
  const inputDom = document.querySelectorAll("label input");
  inputDom.forEach((e, i) => {
    arr[i] = parseInt(e.value);
  });
  let max = Math.max(...arr);
  let min = Math.min(...arr);

  let sum = 0;
  for (let i = min; i <= max; i++) {
    sum += i;
  }

  let resText = `${min}부터 ${max}까지의 누적 합 : ${sum}`;
  document.querySelector("#resArea p").innerText = resText;
});