
function GetQueryString(name){
    /*定义正则，用于获取相应参数*/
    var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
    /*字符串截取，获取匹配参数值*/
    var r = window.location.search.substr(1).match(reg);
    /*返回会参数值*/
    if(r!=null)return  decodeURI(r[2]); return null;
}
$.ajax({
    type:"GET",
    url:"../../php/Rita/renwuzb.php",
    dataType:"json",
    data:{ID:GetQueryString("id")},
    success:function(data){
    	$(".display").css("display","none");
    	$(".sub").css("display","block");
    	$(".submit").css("display","none");
		for (var i = 0; i < data.length; i++) {
			console.log(data[i].name);
			$ul = $('<ul class="information"></ul>');
			$ul.html('<li><span>任务分类</span><img src="../../img/common/back.png"/><span class="choose">'+data[i].type+'</span></li><li><span>任务名称</span><input type="text"  class="name" placeholder="请写任务名称" value='+data[i].name+'></li><li><span>任务周期</span><input type="text" placeholder="请写任务周期" class="time"  value='+data[i].period+'></li><li><span>任务报价</span><input type="text" placeholder="请写任务报价" class="price"  value='+data[i].price+'></li><li><span>联系人</span><input type="text" placeholder="请写姓名" class="people"  value='+data[i].people+'></li><li><span>联系电话</span><input type="text" placeholder="请写联系电话" class="tele" value='+data[i].tele+'></li><li><textarea placeholder="填写任务摘要" class="cons">'+data[i].cons+'</textarea></li>');
			$(".append").append($ul);
		};
		$(".choose").click(function(){
			$(".choice").show();
		});
		$(".sub").click(function(){
			window.location.href="comRenwuzb.html";
		})
    } 
});

$(".submit").click(function(){
	console.log($(".name").val());
	if($(".choose").html() == "选择分类"){
		alert("请选择分类")
	}else if($(".name").val() == ""){
		alert("请填写任务名称")
	}else if($(".time").val() == ""){
		alert("请填写任务周期")
	}else if($(".price").val() == ""){
		alert("请填写任务报价")
	}else if($(".people").val() == ""){
		alert("请填写练习人")
	}else if($(".tele").val() == ""){
		alert("请填写练习电话")
	}else if($(".cons").val() == ""){
		alert("请填写任务摘要")
	}else{
		$(".submit").click(function(){
			$type = $(".choose").html();
			$name = $(".name").val();
			$period = $(".time").val();
			$price = $(".price").val();
			$people = $(".people").val();
			$tele = $(".tele").val();
			$cons = $(".cons").val();
			$date = new Date();
			$month = $date.getMonth()+1
			$timer = $date.getFullYear()+'/'+$month+'/'+$date.getDate();
			$.ajax({
				type:"POST",
				data:{"type":$type,"name":$name,"period":$period,"price":$price,"people":$people,"tele":$tele,"time":$timer,"cons":$cons},
				url:"../../php/Rita/add.php",
				dataType:"json",
				success:function(data){
					if(data == 1){
						// console.log("succ");
						window.location.href="comRenwuzb.html";
					}
				 }
			});
			
		})
	}
})
$(".choose").click(function(){
			$(".choice").show();
		})

$(".dis").click(function(){
	$(".choice").hide();
})
$(".choList p").click(function(){
	$i = $(this).index();
	$value = $(".choList p").eq($i).html();
	$(".choose").html($value);
	$(".choice").hide();	
})


					
