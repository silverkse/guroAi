function fnCalc() {
  let product = document.querySelector("#products").value;
  let price = document.querySelector("#price").value;
  let count = document.querySelector("#count").value;
  let pay = price * count;

  // let res = product + " " + count + "개 " + (price * count) + " 원"
  let res = `${product} ${count}개 ${pay} 원`;
  document.querySelector("#res").innerText = res;
  // alert(res);
}