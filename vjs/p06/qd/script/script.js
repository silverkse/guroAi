document.querySelector("button").addEventListener("click", calc);

function calc() {
  const ary = [];
  ary[0] = document.querySelector("#index1").value;
  ary[1] = document.querySelector("#index2").value;
  ary[2] = document.querySelector("#index3").value;
  ary[3] = document.querySelector("#index4").value;
  // for (i = 0; i < 4; i++) {
  //   ary[i] = document.querySelector("#index" + i+1).value;
  // }
  console.log("입력한 배열 : " + ary.toString());
  let sum = 0;
  for (i = 0; i < ary.length; i++) {
    sum += parseInt(ary[i]);
  }
  console.log("합계 : " + sum);

  let avg = sum / ary.length;
  avg = avg.toFixed(1);
  console.log("평균 : " + avg);

  ary.sort(function(x, y) {return x-y});
  console.log("오름차순 정렬 : " + ary.toString());

  ary.sort(function(x, y) {return y-x});
  console.log("내림차순 정렬 : " + ary.toString());
}