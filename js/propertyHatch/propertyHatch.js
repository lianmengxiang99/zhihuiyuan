$(document).ready(function(){
	var head="../../html/propertyHatch/";
	var  array=["projectDetails.html","itemWork.html","itemWork.html"];
	$.each($(".footer li"), function(index,item) {
		item.onclick=function(){
			window.location.href=head+array[index];
		}
	});
});
