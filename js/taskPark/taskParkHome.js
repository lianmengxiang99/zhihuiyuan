  $(document).ready(function () {

        var swiper1 = new Swiper('#swiperFirst', {
            pagination: '.swiper-pagination',
            slidesPerView: 6,
            paginationClickable: true,
            spaceBetween: 8,
            // scrollbar:'.swiper-scrollbar' ,
            // scrollbarHide:false,
        });
        var swiper2 = new Swiper('#swiperSecond', {
            scrollbar:'.swiper-scrollbar',
            scrollbarHide : false   ,
            scrollbarDraggable : true ,
            scrollbarSnapOnRelease : true ,
            onSlideChangeStart:function(swiper){
                $("#swiperFirst .swiperFirst div").eq(swiper.activeIndex).addClass("active").siblings().removeClass("active");
                // console.log(swiper.activeIndex)
                // console.log($("#swiperSecond ul").css("left"))
            },

        });

        // $(".swiperFirst div").on("click",function () {
        //     // e.preventDefault();
        //     // 获取点击的下标
        //     var index=$(this).index();
        //     // swiper2.swipeTo($(this).index());

        // });

       


    });

