let firstDom = document.querySelector("#main div:first-child");
firstDom.addEventListener("click", function () {
  document.querySelector("div#bgLayer").style.display = "block";
});
// display: none;           요소를 제거
// 아래 스타일은 요소를 표시하는 방법들
// display: block;          요소를 블록레벨요소로 지정함
// display: inline;         요소를 인라인요소로 지정함
// display: inline-block;   요소를 인라인블록레벨 형식으로 지정함

let closeDom = document.querySelector("div#bgLayer span#closeMark");
closeDom.addEventListener("click", function () {
  document.querySelector("div#bgLayer").style.display = "none";
});


let lastDom = document.querySelector("#main div:last-child");
lastDom.addEventListener("click", function () {
  alert("작업중입니다!");
});