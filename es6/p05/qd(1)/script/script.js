let items = new Map();

const registBtnDom = document.querySelector("#btnArea button");
registBtnDom.addEventListener("click", () => {
  let itemName = document.querySelector("#itemInputArea input").value;
  let itemCnt = document.querySelector("#cntInputArea input").value;

  let chkReg = confirm("상품을 등록하시겠습니까?");
  if (chkReg) {
    items.set(itemName, itemCnt);

    const newRow = document.createElement("tr");
    newRow.innerHTML = `
    <td>${items.size}</td>
    <td>${itemName}</td>
    <td>${itemCnt}</td>
    <td class="delBtn"> &times; </td>
    `;
    document.querySelector("#listTbl tr:first-child").after(newRow);

    newRow.querySelector(".delBtn").addEventListener("click", () => {
      newRow.remove();
    });

    updateRowNum();
  }


});

function updateRowNum() {
  document.querySelectorAll("#listTbl tr").forEach((row, idx) => {
    row.querySelector("td:first-child").textContent = idx;
  });
}

