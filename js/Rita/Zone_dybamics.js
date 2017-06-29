var mySwiper = new Swiper('.swiper-container',{
        scrollbar:'.swiper-scrollbar',
        scrollbarHide : false,
        scrollbarDraggable : true ,
        scrollbarSnapOnRelease : true,
        onSlideChangeStart: function(swiper){
            if(swiper.activeIndex == 0){
                $(".tab>p:first-of-type").css("color","#ff6600");
                $(".tab>p:first-of-type").siblings().css("color","#1a1a1a");
            }else if(swiper.activeIndex == 1){
                $(".tab>p:nth-of-type(2)").css("color","#ff6600");
                $(".tab>p:nth-of-type(2)").siblings().css("color","#1a1a1a");
            }else if(swiper.activeIndex == 2){
                $(".tab>p:nth-of-type(3)").css("color","#ff6600");
                $(".tab>p:nth-of-type(3)").siblings().css("color","#1a1a1a");
            }else if(swiper.activeIndex == 3){
                $(".tab>p:nth-of-type(4)").css("color","#ff6600");
                $(".tab>p:nth-of-type(4)").siblings().css("color","#1a1a1a");
            }
        }
    });