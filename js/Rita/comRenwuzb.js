
$.ajax({
    type:"GET",
    url:"../../php/Rita/comRenwuzb.php",
    dataType:"json",
    success:function(data){
		//console.log(data);
		for (var i = 0; i < data.length; i++) {
			$div = $('<div></div>');
			$div.html('<p>xx人报名</p><h6>'+data[i].name+'...</h6><p>发布时间:'+data[i].timer+'</p><button class="btn" ID='+data[i].id+'>编辑</button><p>周期:'+data[i].period+'个月</p><p>费用:'+data[i].price+'</p>');
			$(".task").append($div);
			$(".btn").on("click",function () {
				window.location.href="comSponsor.html?id="+$(this).attr("ID");
    		});
    		$(".task div h6").click(function(){
				window.location.href="comApply.html";
 			})
		}
    } 
});
$(".todo").on("click",function () {
    window.location.href="comSponsor.html";
})