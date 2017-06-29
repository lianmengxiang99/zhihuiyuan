$(document).ready(function () {
    $(".close").click(function(){
        history.go(-1);
    });
    var mySwiper = new Swiper('.swiper-container',{
        // loop:true,
        slidesPerView :3.5,
        // centeredSlides : true,
    });
});