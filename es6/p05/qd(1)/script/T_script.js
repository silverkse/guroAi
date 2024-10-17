let regBtnDom = document.querySelector("#regBtn");
let prnTag = "";
let cnt = 1;
const goodsMap = new Map([]);
let revMap;
regBtnDom.addEventListener("click", () => {
  prnTag = "";
  let chkToF = confirm("상품을 등록하시겠습니까?");
  // ToF = True or False
  if (chkToF) {
    // 상품 등록
    let goodsKey = document.querySelector("#goodsName").value;
    let amountValue = document.querySelector("#amount").value;
    goodsMap.set(goodsKey, amountValue);

    document.querySelector("#goodsName").value = "";
    document.querySelector("#amount").value = "";

    let list = goodsMap.entries();
    // revMap = new Map([...list].reverse());
    // let list = Array.from(goodsMap.entries()).reverse();

    // let revList = revMap.entries();
    list.forEach((prop, idx) => {
      console.log(prop[0]);
      console.log(prop[1]);
      // console.log(idx);
      prnTag += `<div class="dFlex listColumn">
            <span>${idx + 1}</span>
            <span>${prop[0].toString()}</span>
            <span>${prop[1].toString()}</span>
            <span data-key="${prop[0]}" class="delIcon">&times;</span>
          </div>`;
    });

    document.querySelector("#listPrn").innerHTML = prnTag;

    // 제품 삭제
    const delDom = document.querySelectorAll("span.delIcon");
    delDom.forEach((e, i) => {
      e.addEventListener("click", () => {
        let key = e.getAttribute("data-key");
        console.log(key + ", " + i);

        list = goodsMap.entries();

        list.forEach((prop, idx) => {
          console.log(prop[0]);
          console.log(prop[1]);
          // console.log(idx);
          prnTag += `<div class="dFlex listColumn">
            <span>${idx + 1}</span>
            <span>${prop[0].toString()}</span>
            <span>${prop[1].toString()}</span>
            <span data-key="${prop[0]}" class="delIcon">&times;</span>
          </div>`;
        });

      });
    });
  } else {
    alert(`사용자가 취소하였습니다.`);
  }
});
