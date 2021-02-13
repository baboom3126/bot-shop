$(document).ready(function(){


    var settings = {
        "async": true,
        "crossDomain": true,
        "url": "/manage/getLineFriend",
        "method": "POST",
        "headers": {
            "content-type": "application/json",
            "cache-control": "no-cache"
        }
    }

    $.ajax(settings).done(function (response) {
        console.log(response)
        let appendHtml = ``
        for(let i in response){
            appendHtml+=`
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-primary shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                        </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">${response[i].LineFriendName}</div>
                                    <div class="text-xs font-weight-bold  text-gray-800 mb-1">
                                        ${response[i].LineFriendUid}</div>
                                </div>
                                <div class="col-2">
                                    <img class="img-profile rounded-circle" src="${response[i].LineFriendPicture}" width="100%">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            `
        }
        $('#div_friendList').html(appendHtml)
    })
})