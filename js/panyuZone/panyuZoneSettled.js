$(document).ready(function () {
    $("header a").click(function(){
        history.go(-1);
    });
    //匹配手机正则表达式
    $(".container2 li:nth-child(2)>div").on("click",function () {
        var reg=/^1[3,5,7,8]\d{9}/;
        var number=$(".container2 li:nth-child(2)>input").get(0);
        var numberValue=number.value;
        if(reg.test(numberValue)){
            alert("验证码发送成功");
        }else  if(numberValue==0){
            alert("你输入的内容不能为空!");
        }else{
            alert("你的手机号不存在,请重新输入...");
        }
    });
});
