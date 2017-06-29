$(document).ready(function () {
    $(".move>.table>.container2>.shops:first,.move>.table>.container3>.shops:first").siblings().css({
        "borderTop":"0.15rem solid rgb(239,239,244)"
    });
    $("header div:nth-child(2)").on("click",function () {
        $(this).addClass("color");
        $("header div:nth-child(1)").removeClass("color");
        $(".table").animate({
            marginLeft:"-100%",
        },300);
    });
    $("header div:nth-child(1)").on("click",function () {
        $(this).addClass("color");
        $("header div:nth-child(2)").removeClass("color");
        $(".table").animate({
            marginLeft:"0%",
        },300);
    })
})