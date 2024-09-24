document.querySelector("button#fnBtn").addEventListener("click", function () {
  const dom = document.querySelector("#number");
  let number = parseInt(dom.value);
  dom.value = number.toLocaleString();
});