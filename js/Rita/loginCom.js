
$(".btn").click(function(){
	$account = $(".account").val();
	$password = $(".password").val();
	if($account == ""){
		$(".alert").css("display","block").animate({top:'-1.2rem'});
		$(".alertText").html("请输入公司ID");	
	}else{
		if($password == ""){
			$(".alertText").html("请输入密码");
			$(".alert").animate({top:'-0.3rem'}).css("display","block");
		}else{
			//以字母开头，长度在6~18之间，只能包含字符、数字和下划线
			var reg = /^[a-zA-Z]\w{5,17}$/;
			if(reg.test($password)==0){
				$(".alertText").html("请输入以字母开头，长度在6~18之间的密码");
			$(".alert").animate({top:'-0.3rem'}).css("display","block");
			}else{
				window.location.href="company.html";
			}
		}
	}
})
$(".inp").click(function(){
	$(".alert").animate({top:'100%'}).css("display","none");
})