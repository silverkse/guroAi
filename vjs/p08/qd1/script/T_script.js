function fnComma() {
  let num = document.querySelector("#num").value;
  let res = parseInt(num).toLocaleString();
  document.querySelector("#num").value = res;

}
let dom = document.querySelector("button");
dom.addEventListener("click", fnComma);