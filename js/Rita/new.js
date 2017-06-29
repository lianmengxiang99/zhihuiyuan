 $.ajax({
    type:"GET",
    url:"../../php/Rita/new.php",
    dataType:"json",
    success:function(data){
	console.log(data);
	for (var i = 0; i < data.length; i++) {
		// console.log(data[0].img)
		
		if(data[i].classify == "园区动态"){	
			$li = $('<li class="newConts"></li>');
			$li.html('<img src="../../img/new/'+data[i].img+' "><div class="word"><h3>'+data[i].head+'</h3><span class="apos">...</span><span class="time">'+data[i].time+'</span><div class="words">'+data[i].cons+'</div></div>');
			$(".park").append($li);
		}
		if(data[i].classify == "培训活动"){
			$li = $('<li class="newConts"></li>');
			$li.html('<img src="../../img/new/'+data[i].img+'"><div class="word"><h3>'+data[i].head+'</h3><p class="class">'+data[i].class+'</p><p class="pay">费用:'+data[i].pay+'元</p><p class="adress"><img src="../../img/new/nearby@3x.png"/><span class="adressWord">'+data[i].adress+'</span></p></div>');
			$(".activity").append($li);
		}
		if(data[i].classify == "优惠活动"){
			$li = $('<li class="actCont"></li>');
			$li.html('<span>·</span><span>'+data[i].cons+'</span>');
			$(".actives").append($li);
		}
		if(data[i].classify == "社区新帖"){
			$li = $('<li class="comm"></li>');
			$li.html('<div class="people"><img src="../../img/new/'+data[i].img+'"><h4>发布人:'+data[i].name+'</h4><div class="cmnty"><p class="come">'+data[i].come+'</p><p class="times">发布时间:'+data[i].time+'</p></div></div><p class="com">'+data[i].cons+'</p>');
			$(".community").append($li);
		}

	}
     	
     	
    } 
   });

			



	

