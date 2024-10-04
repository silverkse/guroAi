$(function() {

  // 판매가격 천단위 쉽표 및 "원" 텍스트 추가
  // document.querySelector("span.price")
  $("span.price").each(function() {
    // console.log($(this).text());
    let price = parseInt($(this).text());
    // console.log(price.toLocaleString() + "원");
    let priceConvert = price.toLocaleString() + "원";
    $(this).text(priceConvert);
  });   // jQuery의 선택자 순환용 메서드

  //  모달 레이어 팝업 시작
  $("div.goodsItem").click(function() {

    // 이미지 작업
    let imgSrc = $(this).find("img").attr("src");
    // alert("imgSrc : " + imgSrc);
    $("img#popImg").attr("src", imgSrc);

    // 텍스트 작업(상품 종류 및 상품명)
    let goodsType = $(this).find("h5").text();
    $("h5#popGoodsType").text(goodsType);
    let goodsName = $(this).find("h6").text();
    $("h6#popGoodsName").text(goodsName);
    let price = $(this).find("span.price").text();
    $("span#popGoodsPrice").text(price);
    
    $("div#layerBG").show();
  });


  // 레이어 팝업 종료
  $("span#closeIcon").click(function () {
    $("div#layerBG").hide();
  });

});