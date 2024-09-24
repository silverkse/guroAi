document.querySelector("img").addEventListener("click", fnModal);
function fnModal() {
  document.querySelector("div#modal").style.display="block";
}

document.querySelector("#modal span").addEventListener("click", cancleModal);
function cancleModal() {
  document.querySelector("div#modal").style.display="none";
}