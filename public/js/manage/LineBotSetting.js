function validURL(str) {
    var pattern = new RegExp('^(https:\\/\\/)?'+ // protocol
        '((([a-z\\d]([a-z\\d-]*[a-z\\d])*)\\.)+[a-z]{2,}|'+ // domain name
        '((\\d{1,3}\\.){3}\\d{1,3}))'+ // OR ip (v4) address
        '(\\:\\d+)?(\\/[-a-z\\d%_.~+]*)*'+ // port and path
        '(\\?[;&a-z\\d%_.~+=-]*)?'+ // query string
        '(\\#[-a-z\\d_]*)?$','i'); // fragment locator
    return !!pattern.test(str);
}


var setWebhook = function () {
    var newUrl = $('#input_url').val()
    if(validURL(newUrl)){
        var postData = {}
        postData.newUrl = newUrl
        var settings = {
            "url": "/manage/setWebhookUrl",
            "method": "POST",
            "timeout": 0,
            "headers": {
                "Content-Type": "application/json"
            },
            "data": JSON.stringify(postData),
        };

        $.ajax(settings).done(function (response) {
            console.log(response)
            if(response==='success'){
                swal.fire('成功')
            }
        });
    }else{
        swal.fire('請輸入網址格式')
    }
}