function fnConvert() {
  let cm = document.querySelector("#cm").value;
  let res = cm / 2.54;
  res = res.toFixed(1);
  document.querySelector("#res").innerText = cm + " cm = " + res + " inch";
}