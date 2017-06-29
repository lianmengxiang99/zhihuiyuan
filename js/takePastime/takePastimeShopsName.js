$(document).ready(function () {
    $(".close").click(function () {
        history.go(-1);
    });
    var mySwiper = new Swiper('.swiper-container',{
        pagination : '.swiper-pagination',
        loop:true,
        paginationElement : 'li',
        autoplay: 1000,//可选选项，自动滑动
         });
});
