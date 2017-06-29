$(function(){
	var array = ["panyuZoneCanvass.html","panyuZoneFlow.html","panyuZonePolicy.html","panyuZoneSettled.html"];
	var head = ["../../html/panyuZone/"];
	
	$.each($(".footer>li"), function(index,item) {
		item.onclick = function(){
			window.location.href = head+array[index];
		}
	});
});
