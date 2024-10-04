$(function () {
  $("h2").css("border", "3px solid #08f")
        .parent("div")
        .prepend("div")
        .css({
          "border": "3px solid #08f",
          "padding": "10px",
          "color": "#08f"
        })
        .children("h2")
        .siblings()
        .css("color", "#f00");
});