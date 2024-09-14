function fnRes(){
  let num1 = document.querySelector("#num1").value;
  alert(typeof num1);
  // 졸업자 수
  let num2 = document.querySelector("#num2").value;
  alert("덧셈결과 : " + (parseInt(num1) + parseInt(num2)));
  // 취업자 수

  let res = (num2 / num1) * 100;
  res = res.toFixed(1);
  document.querySelector("#res").innerText = res + "%";
}