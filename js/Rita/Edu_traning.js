 var mySwiper = new Swiper('.swiper-container',{
        scrollbar:'.swiper-scrollbar',
        scrollbarHide : false,
        scrollbarDraggable : true ,
        scrollbarSnapOnRelease : true ,
        onSlideChangeStart: function(swiper){
            if(swiper.activeIndex == 0){
               $(".tab>p:first-of-type").css("color","#ff6600");
                $(".tab>p:last-of-type").css("color","#1a1a1a");
            }else{
                $(".tab>p:first-of-type").css("color","#1a1a1a");
                $(".tab>p:last-of-type").css("color","#ff6600");
            }
        }
    });