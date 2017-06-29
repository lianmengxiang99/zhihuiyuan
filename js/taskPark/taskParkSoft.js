
    GetQueryString = function (name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]); return null;
    };
    $.ajax({
        type: "GET",
        url: "../../php/taskparkqq.php",
        dataType: "json",
        data: {Id:GetQueryString('id')},
        success: function (data) {
           
          $.each(data,function(i){
                $soft='<li><p>· 任务名称：:&nbsp&nbsp<span>'+data[i].taskname+'</span></p></li><li><p>· 任务分类:&nbsp&nbsp<span>'+data[i].classify+'</span></p></li><li><p>· 发起人:&nbsp&nbsp<span>'+data[i].companyname+'</span></p></li><li><p>· 发起时间:&nbsp&nbsp<span>'+data[i].time+'</span></p></li><li><p>· 费用:&nbsp&nbsp<span>'+data[i].price+'</span></p></li><li><p>· 状态:&nbsp&nbsp<span>'+data[i].status+'</span></p></li><li><p>· 要求详情:&nbsp&nbsp<span>'+data[i].claim+'</span></p></li>';
                $("#aboutSoft").append($soft);

          })

        },
        error:function(error){
            console.log("error"+error);
        }
    });














