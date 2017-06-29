$(document).ready(function () {
    $("header a").click(function(){
        history.go(-1);
    });
    $(".shops").click(function(){
    	window.location.href="takePastimeShopsName.html";
    })
});