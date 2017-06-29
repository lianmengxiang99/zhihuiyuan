$(document).ready(function () {
    var swiper1 = new Swiper('#swiperFirst', {
        pagination: '.swiper-pagination',
        slidesPerView: 7,
        paginationClickable: true,
        spaceBetween: 2,
        // scrollbar:'.swiper-scrollbar' ,
        // scrollbarHide:false,
    });
    //点击切换显示内容
    $("#clothesClass div").click(function(){
        $(this).addClass("active").siblings().removeClass("active");
        var index=$(this).index();
        $(".washClothesListName ul").eq(index).show().siblings().hide();

    });
    function show(){
    var count=0;
    var ttPrice=0;
    $("ul li").click(function () { 
         count++;
        $price=$(this).find('.washDiscount').find("span").text();
        ttPrice+=Number($price);
        totalPrice=parseFloat(ttPrice).toFixed(1);
        $("#totalNnm").text(count);
        $('.footerNumber').text(count);
        $("#totalPrice").text(totalPrice);
        if (!count==0){
        $('#footerOk').css('background',"#ff6600").attr('disabled',"false");
        $("#footerOk").on("click",function () {
       window.location.href="washSubmitOrder.html?price="+totalPrice;
    })
           
         }
    });
}
//  将数据插入到dom中去
$(function(){
    $.ajax({
         type:"GET",
         url:"http://localhost/zhihuiyuan/php/washclothes.php",
         dataType:'json',
         success:function(data){
            $.each(data,function(i){
                if (data[i].classfiy=="上衣类") {
                    var srcDir = "../../img/washimgs/"+data[i].img;
                     $wash="<li><img src="+srcDir+" /><p>"+data[i].clothname+"</p><span class='washDiscount'>￥<span >"+data[i].discount+"</span></span><span class='washPrice'>￥<span>"+data[i].pirce+"</span></span></li>";
                     $("#topClothes").append($wash);
                     show();

                    var srcDir="";
                }else if (data[i].classfiy=="裙子类") {
                    var srcDir = "../../img/washimgs/"+data[i].img;
                     $wash="<li><img src="+srcDir+" /><p>"+data[i].clothname+"</p><span class='washDiscount'>￥<span>"+data[i].discount+"</span></span><span class='washPrice'>￥<span>"+data[i].pirce+"</span></span></li>";
                     $("#skirt").append($wash);
                     show();
                    var srcDir="";
                }else if (data[i].classfiy=="裤子") {
                    var srcDir = "../../img/washimgs/"+data[i].img;
                      $wash="<li><img src="+srcDir+" /><p>"+data[i].clothname+"</p><span class='washDiscount'>￥<span>"+data[i].discount+"</span></span><span class='washPrice'>￥<span>"+data[i].pirce+"</span></span></li>";
                     $("#trousers").append($wash);
                     show();
                    var srcDir="";
                }else if (data[i].classfiy=="小件类") {
                    var srcDir = "../../img/washimgs/"+data[i].img;        
                      $wash="<li><img src="+srcDir+" /><p>"+data[i].clothname+"</p><span class='washDiscount'>￥<span>"+data[i].discount+"</span></span><span class='washPrice'>￥<span>"+data[i].pirce+"</span></span></li>";
                     $("#smallclothes").append($wash);
                     show();
                    var srcDir="";
                }else if (data[i].classfiy=="皮衣类") {
                    var srcDir = "../../img/washimgs/"+data[i].img;
                      $wash="<li><img src="+srcDir+" /><p>"+data[i].clothname+"</p><span class='washDiscount'>￥<span>"+data[i].discount+"</span></span><span class='washPrice'>￥<span>"+data[i].pirce+"</span></span></li>";
                     $("#leather").append($wash);
                     show();
                    var srcDir="";
                }else if (data[i].classfiy=="特殊类") {
                    var srcDir = "../../img/washimgs/"+data[i].img;
                      $wash="<li><img src="+srcDir+" /><p>"+data[i].clothname+"</p><span class='washDiscount'>￥<span>"+data[i].discount+"</span></span><span class='washPrice'>￥<span>"+data[i].pirce+"</span></span></li>";
                     $("#special").append($wash);
                    var srcDir="";
                }else if (data[i].classfiy=="卧位类") {
                    var srcDir = "../../img/washimgs/"+data[i].img;
                      $wash="<li><img src="+srcDir+" /><p>"+data[i].clothname+"</p><span class='washDiscount'>￥<span>"+data[i].discount+"</span></span><span class='washPrice'>￥<span>"+data[i].pirce+"</span></span></li>";
                     $("#clinostatism").append($wash);
                     show();
                    var srcDir="";
                }else if (data[i].classfiy=="家居类") {
                    var srcDir = "../../img/washimgs/"+data[i].img;
                      $wash="<li><img src="+srcDir+" /><p>"+data[i].clothname+"</p><span class='washDiscount'>￥<span>"+data[i].discount+"</span></span><span class='washPrice'>￥<span>"+data[i].pirce+"</span></span></li>";
                     $("#homeClothes").append($wash);
                     show();
                    var srcDir="";
                }else if (data[i].classfiy=="外套类") {
                    var srcDir = "../../img/washimgs/"+data[i].img;
                      $wash="<li><img src="+srcDir+" /><p>"+data[i].clothname+"</p><span class='washDiscount'>￥<span>"+data[i].discount+"</span></span><span class='washPrice'>￥<span>"+data[i].pirce+"</span></span></li>";
                     $("#overcoat").append($wash);
                     show();
                    var srcDir="";
                }
            })
         }
    })
})

});