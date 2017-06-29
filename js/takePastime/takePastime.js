$(document).ready(function(){
$(".shops_right").on("click",function(){
	window.location.href="takePastimeShopsName.html";	
});
$(".business1 .title2").click(function(){
	window.location.href="../../html/takePastime/takePastimeTab.html";	
});
$(".fitness li").click(function(){
	window.location.href="takePastimeTake.html";
});
});
$.ajax({
	type:"GET",
	url:"../../php/mengxiang/takePastime.php",
	dataType:"json",
	success:function(data){
		if(data){
			$.each(data,function(i){
			var shopsImgHead="../../img/mengxiang/";
			var lis=("<li class='shops'><div class='shops_left'><img src="+shopsImgHead+data[i].shopsImg+"></div><div class='shops_right'><h2>"+data[i].shopsName+"</h2><p>电话"+data[i].shopsPhone+"</p><p>"+data[i].shopsAddress+"</p></div></li>");
			$(".container").append(lis);	
			});
			
		}
		},
	error:function(err){
		console.log(err);
	}
});
