/**
 * Created by lanou3g on 17/6/14.
 */
$(document).ready(function () {
//移动端适应
    var screenWith = document.documentElement.clientWidth;
    var fonsize = parseInt(screenWith /750 * 100) + "px";
    $("html,body").css({
        "fontSize": fonsize
    })
    console.log($("body").css("fontSize"));
//当窗口大小发生改变的时候改变字体大小
    $(window).resize(function (e) {
        var screenWith = document.documentElement.clientWidth;
        var fonsize = parseInt(screenWith / 750 * 100) + "px";
        $("html,body").css({
            "fontSize": fonsize
        })
    })
});
