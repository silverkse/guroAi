$(function () {
  function slideShow() {
    $("div#slideFrame a:first").fadeOut(1000, function () {
      $(this).insertAfter("div#slideFrame a:last");
    });
    $("div#slideFrame a:eq(1)").fadeIn(1000);
  }

  setInterval(slideShow, 3000);


  // ------------------------------------------------------------ //


  // let currentIndex = 0;
  // const slideCount = $("#slideFrame img").length;

  // $("#slideFrame > a").hide();
  // $("#slideFrame > a").eq(currentIndex).show();

  // function moveSlider() {
  //   $("#slideFrame > a").eq(currentIndex).fadeOut(1000);
  //   currentIndex++;

  //   if (currentIndex >= slideCount) {
  //     currentIndex = 0;
  //   }

  //   $("#slideFrame > a").eq(currentIndex).fadeIn(1000);
  // }

  // setInterval(moveSlider, 3000);


  // ------------------------------------------------------------ //


  // let showIndex = 0;
  // const imgCount = $("#slideFrame img").length;

  // $("#slideFrame a").hide();
  // $("#slideFrame a").eq(showIndex).show();

  // function fnUsualSlide() {
  //   $("#slideFrame a").eq(showIndex).fadeOut(1000);
  //   showIndex++;

  //   if(showIndex >= imgCount) {
  //     showIndex = 0;
  //   }

  //   $("#slideFrame a").eq(showIndex).fadeIn(1000);
  // }

  // setInterval(fnUsualSlide, 3000);
});
