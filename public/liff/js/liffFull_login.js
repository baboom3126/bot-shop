const baseUrl = window.location.origin;
var userId;





$(document).ready(function () {
    swal.showLoading()
    initializeLiff('1654950618-gBrJjDKX');
    if (!navigator.geolocation) {
        alert('app does not support geolocation service');
    }

});


let initializeLiff = function (myLiffId) {
    liff.init({
        liffId: myLiffId,
    }).then(() => {

        getProfile();
    }).catch(err => {
        alert(`error: ${JSON.stringify(err)}`);
    });
}


let getProfile = function () {
    Swal.fire({
        icon: 'success',
        title: '取得登入資訊',
        showConfirmButton: false
    })
    if (liff.isLoggedIn() == true) {
        $('#div_logged').css('display', '')
        $('#div_notLogin').css('display', 'none')
        liff.getProfile()
            .then(result => {
                swal.close()
                profile = result
                userId = result.userId
                const name = result.displayName
                $('#input_name').val(name)
                /////////////check member exist
                let postData = {}
                postData.lineUid = result.userId
                var settings = {
                    "async": true,
                    "crossDomain": true,
                    "url": "/liffApi/getMemberExistByLineUid/",
                    "method": "POST",
                    "headers": {
                        "content-type": "application/json",
                        "cache-control": "no-cache"
                    },
                    "data": JSON.stringify(postData)
                }

                $.ajax(settings).done(function (response) {
                    if(response != 'not exist'){
                        location.href = '/liff/liffFull_index'
                    }
                    console.log(response)
                })




            })
            .catch((err) => {
                console.log(err)
            });
    } else {
        ////未登入
        liff.login();

    }
}


$('#footer_register').click(function () {
    swal.showLoading()
    var name = $('#input_name').val()
    var email = $('#input_email').val()
    var year = $('#input_year').val()
    var month = $('#input_month').val()
    if (parseInt(month) < 10) {
        month = '0' + month
    }
    if (parseInt(day) < 10) {
        day = '0' + day
    }
    var day = $('#input_day').val()
    var birthday = year + month + day
    console.log(name)
    console.log(email)
    console.log(birthday)
    var postData = {}
    postData.name = name
    postData.email = email
    postData.birthday = birthday
    postData.LineUid = userId
    var settings = {
        "async": true,
        "crossDomain": true,
        "url": "/liffApi/registerMember/",
        "method": "POST",
        "headers": {
            "content-type": "application/json",
            "cache-control": "no-cache"
        },
        "data": JSON.stringify(postData)
    }

    $.ajax(settings).done(function (response) {
        console.log(response);
        Swal.fire({
            title: '成功',
            showDenyButton: false,
            showCancelButton: false,
            confirmButtonText: `確定`
        }).then((result) => {
            if (result.isConfirmed) {
                location.reload()

            }
        })
    });
})





