const btnDom = document.querySelector("#inputArea button");
btnDom.addEventListener("click", () => {
  let id = document.querySelector("#rdoArea input[type=radio]:checked").id;
  let x = (id == "cmToInch") ? 0.394 : 2.54;
  let y = (id == "cmToInch") ? "cm" : "inch";
  let z = (y == "cm") ? "inch" : "cm";

  let inputVal = document.querySelector("#inputArea input").value;

  let resText = `${inputVal + " " + y} = ${inputVal * x + " " + z}`;
  document.querySelector("#resArea").innerText = resText;
});