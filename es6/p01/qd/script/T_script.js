let boxAmount = 0;    // 1박스에 포장할 수 있는 수량
const btnDom = document.querySelector("button#resBtn");
btnDom.addEventListener("click", function () {
  let rdoDom = document.querySelectorAll("input[type=radio]");
  // radio버튼 컬렉션(Collection)
  rdoDom.forEach(function(e, i) {
    // 컬렉션을 순환할 때 사용(e: element, i: index)
    if (rdoDom[i].checked) {
      console.log(i + ": " + e.value);
      boxAmount = e.value;
    }
  });
  
  // let rdoData1 = rdoDom[0].checked;
  // let rdoData2 = rdoDom[1].checked;
  // let rdoData3 = rdoDom[2].checked;
  // console.log(`rdoData : ${rdoData1}`);
  // console.log(`rdoData : ${rdoData2}`);
  // console.log(`rdoData : ${rdoData3}`);

  let boxName = "";
  switch (boxAmount) {
    case "8":
      boxName = "대과";
      break;
    case "11":
      boxName = "중과";
      break;
    case "15":
      boxName = "소과";
      break;
  }
  
  let fruitCnt = document.querySelector("#fruitCnt").value;
  let boxCnt = Math.floor(fruitCnt/boxAmount);
  // console.log("boxCnt : " + parseInt(boxCnt));
  // console.log("boxCnt : " + Math.floor(boxCnt));

  let fruitRemain = fruitCnt % boxAmount;
  // console.log("fruitRemain : " + fruitRemain);

  let resBox = `${boxName} ${boxCnt}`;
  document.querySelector("#resBox").innerText = resBox;
  document.querySelector("#resRemain").innerText = fruitRemain;


});