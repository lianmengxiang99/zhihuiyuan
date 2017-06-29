$(document).ready(function () {
    $(".header a").click(function(){
        history.go(-1);
    });
    drop();
});
function drop() {
    var bool=false;
    var i=0;
    $(".container>li>div>p:last-child>img").each(function () {
        $(this).click(function () {
            bool=!bool;
            console.log(bool);
            if(bool){
                i++;
                $(this).attr({"src":"../../img/mengxiang/dzan1@3x.png"});
                $(this).nextUntil("zan").get(0).innerHTML="点赞"+i;
            }else{
                i--;
                $(this).attr({"src":"../../img/mengxiang/dzan.png"});
                $(this).nextUntil("zan").get(0).innerHTML="点赞"+i;
            }
        })
    })
};