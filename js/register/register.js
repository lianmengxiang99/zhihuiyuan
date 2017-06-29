
// reg test
$(function(){
	$(".container>p:last-of-type").on("click",function(){
		var phoneNumber = $(".part1>input").val();
		var identityCode = $("div.part2real>input").val();
		var passWd = $(".part3>input").val();
		var rePasswd = $(".part4>input").val();
		
		if(phoneNumber==""){
			alert("请输入手机号！");
		}else{
			$.ajax({
				type:"POST",
				data:{"phonenumber":phoneNumber,"password":passWd},
				url:"../../php/register/register.php",
				dataType:"json",
				success:function(data){
					if(data == 0){
						$.ajax({
							type:"POST",
							data:{"phonenumber":phoneNumber,"password":passWd},
							url:"../../php/register/addMsg.php",
							dataType:"json",
							success:function(data){
								console.log("succ");
							},
							error:function(data){
								console.log(data);
							}
						});
					}
				}
			});
		}

	});
});