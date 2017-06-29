/**
 * Created by lanou3g on 17/6/16.
 */
$(document).ready(function () {

        $("#phoneCode").on("click",function () {
            var $phone=$(".phone").val();
            var  reg=/^1\d{10}$/;
            if (!reg.test($phone)){
                $(".phone").attr("value","");
            }
        });

});