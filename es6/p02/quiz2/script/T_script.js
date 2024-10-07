let btnDom = document.querySelector("button");
btnDom.addEventListener("click", () => {

  let rdoDom = document.querySelectorAll("input[type=radio]");
  rdoDom.forEach((e, i) => {

    let convType = "";

    if (e.checked) {
      convType = e.value;
      console.log(convType);
    }
    let insData = document.querySelector("#insData").value;
    let res = 0;
    let txt = "";

    switch (convType) {
      case "c2i":
        res = insData / 2.54, 1;
        res = res.toFixed(1);
        txt = `${insData} cm = ${res} inch`;
        break;
        case "i2c":
          res = insData * 2.54;
          res = res.toFixed(1);
          txt = `${insData} inch = ${res} cm`;
        break;
    }

    document.querySelector("#resArea").innerText = txt;

  });

});