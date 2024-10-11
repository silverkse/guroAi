const btnDom = document.querySelector("#btnArea button");
btnDom.addEventListener("click", () => {
  let scoreDom = document.querySelectorAll("label>input");
  let scoreList = [];
  let sum = 0;
  for (let i = 0; i< scoreDom.length; i++) {
    scoreList[i] = parseInt(scoreDom[i].value);
    sum += scoreList[i];
  }
  avr = sum / scoreList.length;
  maxScore = Math.max(...scoreList);

  document.querySelector("#resArea p:first-child").innerText = `1. 응시자 평균 : ${avr.toFixed(1)}`;
  document.querySelector("#resArea p:nth-child(2)").innerText = `2. 성적 우수자 : ${maxScore}`;
  document.querySelector("#resArea p:last-child").innerText = `3. 석차 : ${scoreList.sort().reverse()}`;
  
});