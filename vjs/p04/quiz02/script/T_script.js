const dom = document.querySelector("button");
dom.addEventListener("click", function () {
  let goods = document.querySelector("#goods").value;
  let price = document.querySelector("#price").value;
  let cnt = document.querySelector("#cnt").value;
  let res = goods + " " + cnt + "개 ";
  res += (price * cnt) + " 원";

  document.querySelector("#res").innerText = res;
});

