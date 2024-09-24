const dom = document.querySelector("tbody#tblRes");
let txt = "";
for (let i = 1; i < 10; i++) {
  txt += "<tr>";
  for (let j = 2; j < 10; j++) {
    txt += `<td>${j} * ${i} = ${j * i}</td>`;
  }
  txt += "</tr>";
}
dom.innerHTML = txt;