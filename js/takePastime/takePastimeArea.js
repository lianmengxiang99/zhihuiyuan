$(document).ready(function () {
    $("header a").click(function(){
        history.go(-1);
    });
    $.ajax({
	type:"GET",
	url:"../../php/mengxiang/takePastime.php",
	dataType:"json",
	success:function(data){
		if(data){
			console.log(data);
			$.each(data,function(i){
			var shopsImgHead="../../img/mengxiang/";
			var lis=("<li class='shops'><div class='shops_left'><img src="+shopsImgHead+data[i].shopsImg+"></div><div class='shops_right'><h2>"+data[i].shopsName+"</h2><p>电话"+data[i].shopsPhone+"</p><p>"+data[i].shopsAddress+"</p><div>预定</div></div></li>");
			$(".container").append(lis);	
			});
		}
		},
	error:function(err){
		console.log(err);
	}
});
});
