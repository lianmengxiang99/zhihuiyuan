$(".close").click(function(){
	history.go(-1);
});
$(".conBg .user>.person").on("click",function () {
// console.log(1)
	window.location.href="../html/usersLogin/login.html";
})