$(function() {
	$("button#restart").click(function() {
		$("form")[0].reset();
		$("div#res").html("");
		$("input").focus();
	});
});