let tag = "";
for (let i = 1; i <= 9; i++) {
  tag += "<tr>";
  for (let j = 2; j <= 9; j++) {
    tag += "<td>" + j + " * " + i + " = " + (i * j) + "</td>";
  }
  tag += "</tr>";
}
const dom = document.querySelector("#tblRes");
dom.innerHTML = tag;