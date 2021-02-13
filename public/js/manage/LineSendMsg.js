

var sendMsg = function () {

    var postData = {}
    postData.msg = $('#textarea_message').val()

    var settings = {
        "url": "/manage/message/pushMessage",
        "method": "POST",
        "timeout": 0,
        "headers": {
            "Content-Type": "application/json"
        },
        "data": JSON.stringify(postData),
    };

    $.ajax(settings).done(function (response) {
        $('#textarea_message').val('')
        if(response==='ok'){
            swal.fire('成功')
        }
    });
}