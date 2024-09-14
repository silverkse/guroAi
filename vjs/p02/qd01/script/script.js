function fnRate() {
  let gradu = document.querySelector("#graduates").value;
  let employed = document.querySelector("#employed").value;
  let res = (employed / gradu) * 100;
  
  document.querySelector("#rate").innerText = res.toFixed(1) + "%";
}