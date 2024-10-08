// const rdochk = document.querySelectorAll("#rdoArea input[type=radio]");
// rdochk.forEach((e, i) => {
//   if(e.checked) {
//     let rdoId = e.id;
//     let value;
//     let lengthType;
//     let reverseType;
//     let inputText;
//     if (rdoId == "cmToInch") {
//       value = 0.394;
//       lengthType = "cm";
//       reverseType = "inch";
//       inputText = "센티(cm)미터 입력";
//     } else if (rdoId == "inchToCm"){
//       value = 2.54;
//       lengthType = "inch";
//       reverseType = "cm";
//       inputText = "인치(inch) 입력";
//     }

//     let covText = ``
//     document.querySelector("#inputArea span").innerText = inputText;

//   }

// });

const rdoDom = document.querySelector("#rdoArea input[type=radio]");
rdoDom.addEventListener("click", () => {
  this.id
});

const btnDom = document.querySelector("#inputArea button");
btnDom.addEventListener("click", () => {
  let id = document.querySelector("#rdoArea input[type=radio]:checked").id;
  let x = (id == "cmToInch") ? 0.394 : 2.54;
  let y = (id == "cmToInch") ? "cm" : "inch";
  let txt = (id == "cmToInch") ? "센티(cm)미터 입력" : "인치(inch) 입력";
  let z = (y == "cm") ? "inch" : "cm";

  document.querySelector("#inputArea span").innerText = txt;

  let inputVal = document.querySelector("#inputArea input").value;

  let resText = `${inputVal + " " + y} = ${inputVal * x + " " + z}`;
  document.querySelector("#resArea").innerText = resText;
});