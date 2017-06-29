$(".submit").on("click",function(){
        var a = $(".account").val();
        var b = $("#password").val();
        var c = $("#repass").val();
        if(b == c){
            $.ajax({
                type:"POST",
                data:{phonenumber:a,password:b},
                url:"../../php/Rita/forgetPassword.php",
                dataType:"json",
                success:function(data){
                   if(data==1){
                        $.ajax({
                            type:"POST",
                            data:{phonenumber:a,password:b},
                            url:"../../php/Rita/updatePassword.php",
                            dataType:"json",
                            success:function(data){
                                window.location.href = "../../html/usersLogin/login.html";
                            }
                        });
                   }
                }
            }); 
        }else{
            alert("密码不正确,请从新输入")
        }
        
        
        
    });