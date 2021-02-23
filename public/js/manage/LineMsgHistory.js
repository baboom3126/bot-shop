$(document).ready(function(){
    var settings = {
        "async": true,
        "crossDomain": true,
        "url": "/manage/lineMsg/getALLLineMessage",
        "method": "POST",
        "headers": {
            "content-type": "application/json",
            "cache-control": "no-cache"
        }
    }

    $.ajax(settings).done(function (response) {
        let appendHtml = ``
        for(let i in response){
            appendHtml+=`
                <div class="col-lg-8">
                    <div class="col-lg-8">
                        <!-- Basic Card Example -->
                        <div class="card shadow mb-4" style="margin-bottom: 10px!important;">
                            <div class="card-body">
                                <h6 class="m-0 font-weight-bold text-primary">${response[i].LineFriendName}<br>
                                <small class="text-gray-800">Webhook Event Time : ${new Date(response[i].LineMessageTime).toLocaleString()}</small><br>
                                <small class="text-gray-800">Database Save Time : ${new Date(response[i].CreateTime).toLocaleString()}</small><br>
                                <small>User Message Detail : ${response[i].LineMessageContent}</small>
                                </h6>
                            </div>
                        </div>
                    </div>
</div>
            `
        }
        $('#div_messages').html(appendHtml)
    })

})