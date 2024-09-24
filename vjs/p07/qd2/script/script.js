const ary = ["사과", "딸기", "수박", "고구마", "토마토", "귤", "옥수수",
  "감자",
  "복숭아",
  "포도",
];

ary.reverse();


document.querySelector("main#galleryBBS").innerHTML = "";
for(let i = 0; i < ary.length; i++ ){
  document.querySelector("main#galleryBBS").innerHTML += `<div class="box"><h4>${ary[i]}</h4><span>${ary.length-i}</span></div>`;
}