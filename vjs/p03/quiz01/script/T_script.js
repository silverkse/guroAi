// JS 함수
function fnCalc() {
  // DOM, Document Object Model = 문서 객체 모델
  // doucument를 사용하면 DOM이다.
  // div#wrap, h1, br, ol, li, label, head, body 등 html의 모든 요소를 객체로 만든다.
  // doucument.querySelector("input#centi") => 이렇게 생성한 document 객체 중에 input#centi를 가져와 줘
  let centi = document.querySelector("input#centi").value; // .value; "input#centi"의 value 값을 가져 와 centi라는 변수에 담는다.

  // 프로그래밍 시작
  let res = centi / 2.54;
  res = centi + " cm = " + res.toFixed(1) + " inch"; // .toFixed(1) = 소수점 첫째자리까지만 남기기
  // 프로그래밍 끝

  // 프로그래밍 결과 브라우저 출력
  document.querySelector("div#res>span:last-child").innerText = res;
  // console.log("centi : " + centi);
}
