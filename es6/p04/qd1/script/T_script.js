const btnDom = document.querySelector("#resBtn");
btnDom.addEventListener("click", () => {
  const txtBoxCol = document.querySelectorAll("input[type=text]");

  let sum = 0;  // 총점
  let cnt = 0;
  let avg = 0;  // 평균
  let max = 0;  // 성적 우수자

  const scoreAry = [];  // 성적처리용 배열
  txtBoxCol.forEach((e, i) => {

    if (!isNaN(e.value)) {
      // isNaN(5) => false 반환
      // isNaN('결') => true 반환
      scoreAry.push(e.value);
      sum += parseInt(e.value);
    }
  });
  console
  const newAry = scoreAry.filter(chkFn);
  function chkFn(value) {
    return !isNaN(value);
  }
  console.log(newAry.toString())

  // cnt = scoreAry.length;
  // avg = sum/cnt;  // 평균 산출
  // console.log(avg.toFixed(1));
  // max = Math.max(...scoreAry);
  // console.log(max);
  // scoreAry.sort((a, b) => b-a);
  // console.log(scoreAry.join(", "));

  // scoreAry.sort(function (a, b) {
  //   return b-a;
  // });


});