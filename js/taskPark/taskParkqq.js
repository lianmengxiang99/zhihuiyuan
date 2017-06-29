$.ajax({
    type:"GET",
    url:"http://localhost/zhihuiyuan/php/taskpark.php",
    dataType:'json',
    success:function(data){
        $.each(data,function(i){
            if(data[i].classify=="软件开发"){
              // 
                $soft='<li id="'+data[i].id+'"><img src="../../img/taskPark/8social.png" alt=""><div class="textRight"><p class="sponsor">发起人:<span>'+data[i].companyname+'</span></p><p class="pubdate">发布时间:<span>'+data[i].time+'</span></p></div><p class="pageDate">'+data[i].taskname+'</p><div class="price">费用:<span>'+data[i].price+'</span>元</div></li>';
                    $("#software li").on("click",function(){
                        window.location.href="teskPark-solftWare.html?id="+$(this).attr("id");
                    })
                $("#software").append($soft);
            }else if(data[i].classify=="VI/UI"){  
                 $soft='<li id="'+data[i].id+'"><img src="../../img/taskPark/8social.png" alt=""><div class="textRight"><p class="sponsor">发起人:<span>'+data[i].companyname+'</span></p><p class="pubdate">发布时间:<span>'+data[i].time+'</span></p></div><p class="pageDate">'+data[i].taskname+'</p><div class="price">费用:<span>'+data[i].price+'</span>元</div></li>';
                    $("#viui li").on("click",function(){
                        window.location.href="teskPark-solftWare.html?id="+$(this).attr("id");
                    })
                $("#viui").append($soft);
                $soft='';
            }else if(data[i].classify=="法务咨询"){
                // console.log(data[i].price);
                 $soft='<li id="'+data[i].id+'"><img src="../../img/taskPark/8social.png" alt=""><div class="textRight"><p class="sponsor">发起人:<span>'+data[i].companyname+'</span></p><p class="pubdate">发布时间:<span>'+data[i].time+'</span></p></div><p class="pageDate">'+data[i].taskname+'</p><div class="price">费用:<span>'+data[i].price+'</span>元</div></li>';
                    $("#fawu li").on("click",function(){
                        window.location.href="teskPark-solftWare.html?id="+$(this).attr("id");
                    })
                $("#fawu").append($soft);

            }else if(data[i].classify=="网站开发"){
                // console.log(data[i].price);
                 $soft='<li id="'+data[i].id+'"><img src="../../img/taskPark/8social.png" alt=""><div class="textRight"><p class="sponsor">发起人:<span>'+data[i].companyname+'</span></p><p class="pubdate">发布时间:<span>'+data[i].time+'</span></p></div><p class="pageDate">'+data[i].taskname+'</p><div class="price">费用:<span>'+data[i].price+'</span>元</div></li>';
                    $("#wangzhan li").on("click",function(){
                        window.location.href="teskPark-solftWare.html?id="+$(this).attr("id");
                    })
                $("#wangzhan").append($soft);

            }else if(data[i].classify=="微信应用"){
                // console.log(data[i].price);
                $soft='<li id="'+data[i].id+'"><img src="../../img/taskPark/8social.png" alt=""><div class="textRight"><p class="sponsor">发起人:<span>'+data[i].companyname+'</span></p><p class="pubdate">发布时间:<span>'+data[i].time+'</span></p></div><p class="pageDate">'+data[i].taskname+'</p><div class="price">费用:<span>'+data[i].price+'</span>元</div></li>';
                    $("#wechart li").on("click",function(){
                        window.location.href="teskPark-solftWare.html?id="+$(this).attr("id");
                    })
                $("#wechart").append($soft);

            }else if(data[i].classify=="移动开发"){
                // console.log(data[i].price);
                $soft='<li id="'+data[i].id+'"><img src="../../img/taskPark/8social.png" alt=""><div class="textRight"><p class="sponsor">发起人:<span>'+data[i].companyname+'</span></p><p class="pubdate">发布时间:<span>'+data[i].time+'</span></p></div><p class="pageDate">'+data[i].taskname+'</p><div class="price">费用:<span>'+data[i].price+'</span>元</div></li>';
                    $("#yidong li").on("click",function(){
                        window.location.href="teskPark-solftWare.html?id="+$(this).attr("id");
                    })  
                $("#yidong").append($soft);

            }
        })
    }

});

