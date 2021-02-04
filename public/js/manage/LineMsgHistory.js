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
                                <h6 class="m-0 font-weight-bold text-primary">${response[i].LineFriendName}<small class="text-gray-800"> ${new Date(response[i].LineMessageTime).toLocaleString()}</small></h6>
                                <span>${response[i].LineMessageContent}</span>
                            </div>
                        </div>
                    </div>
</div>
            `
        }
        $('#div_messages').html(appendHtml)
    })

})