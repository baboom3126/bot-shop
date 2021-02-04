$(document).ready(function(){


    var settings = {
        "async": true,
        "crossDomain": true,
        "url": "/manage/",
        "method": "POST",
        "headers": {
            "content-type": "application/json",
            "cache-control": "no-cache"
        }
    }

    $.ajax(settings).done(function (response) {

    })
})