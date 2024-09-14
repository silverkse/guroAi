function func1() {
  let data1 = document.querySelector("#ref").innerText;
  document.querySelector("#output").innerText = data1;
}
function func2() {
  func1();
  document.querySelector("#output").style.border = "3px solid #f80";
  document.querySelector("#output").style.fontWeight = "bold";
  document.querySelector("#output").style.fontSize = "30px";
}