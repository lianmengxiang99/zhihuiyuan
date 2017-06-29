$(document).ready(function () {
    $(".close").click(function(){
        history.go(-1);
    });
    $("footer").on("click",function(){
    	window.location.href="takePastimeEnroll.html";
    })
});