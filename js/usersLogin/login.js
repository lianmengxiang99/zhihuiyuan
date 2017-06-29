/**
 * Created by lanou3g on 17/6/15.
 */
$(document).ready(function () {
    $(".tab>div:nth-child(1)").on("click",function () {
        $(this).addClass("color");
        $(".tab>div:nth-child(3)").removeClass("color");
        $(".table").animate({
            "marginLeft":"0%"
        },300);



    });
    $(".tab>div:nth-child(3)").on("click",function () {
        $(this).addClass("color");
        $(".tab>div:nth-child(1)").removeClass("color");
        $(".table").animate({
            "marginLeft":"-100%"
        },300);
    });
    $(".forget").click(function(){
         window.location.href = "../../html/Rita/forgPassPerson.html";

    });
    $(".newUsers").click(function(){
         window.location.href = "../../html/register/register.html";

    });


    $("p.submit1").on("click",function(){
        var a = $("input.account_text").val();
        var b = $(".password_text").val();
      
        $.ajax({
            type:"POST",
            data:{"phonenumber":a,"password":b},
            url:"../../php/login/login.php",
            dataType:"json",
            success:function(data){
               if(data==1){
                    window.location.href = "../../html/Rita/home.html";
               }else{
                    alert("用户不存在或密码错误");
               }
            }
        });
        
    });

        
        
})
