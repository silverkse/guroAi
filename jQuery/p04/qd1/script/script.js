$(function() {
  // 숫자에 천 단위 구분 쉽표 찍기
  let priceCnt = $("span.price").length;
  for ( let i = 0; i < priceCnt; i++) {
    let price = parseInt($("span.price").eq(i).text());
    $("span.price").eq(i).text(price.toLocaleString());
  }

  // modal 팝업 띄우기
  $("div.items").click(function() {
    let imgSrc = $(this).find("img").attr("src");
    let pDes = $(this).find("p").eq(0).html();
    let pPrice = $(this).find("p").eq(1).html();

    $("div#modalImg img").attr("src", imgSrc);
    $("div#modalContents p").eq(0).html(pDes);
    $("div#modalContents p").eq(1).html(pPrice);
    $("div#modal").css({"display" : "block"});
  });

  // modal 팝업 닫기
  $("div#modalClose").click(function(){
  $("div#modal").css("display", "none");
  });
});