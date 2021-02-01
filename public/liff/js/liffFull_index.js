const baseUrl = window.location.origin;
var profile;
var LineUid;
var memberId;
var el = document.querySelector('.tabs');
var instance = M.Tabs.init(el, {});

$(document).ready(function () {

    initializeLiff('1654950618-BgKZnoxN');
    if (!navigator.geolocation) {
        alert('app does not support geolocation service');
    }
    $('.modal').modal();


});



let initializeLiff = function (myLiffId) {
    liff.init({
        liffId: myLiffId,
    }).then(() => {
        showProfileName()
        btn_logout()
        btn_login()
    }).catch(err => {
        console.log(err)
    });
}


let showProfileName = function () {

        if (liff.isLoggedIn() == true) {
            $('#div_logged').css('display','')
            $('#div_notLogin').css('display','none')
            liff.getProfile()
                .then(result => {
                    profile = result
                    const name = result.displayName
                    $('#span_name').html(name)
                    $('#input_name').val(name)
                    LineUid = result.userId

                    /////////////check member exist
                    let postData = {}
                    postData.LineUid = result.userId
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
                        if(response == 'not exist'){
                            Swal.fire({
                                title: '請先綁定帳號',
                                showDenyButton: false,
                                showCancelButton: false,
                                confirmButtonText: `確定`
                            }).then((result) => {
                                if (result.isConfirmed) {
                                    location.href = '/liff/liffFull_login'

                                }
                            })
                        }else{
                            memberId = response[0].MemberId
                            $('#input_email').val(response[0].Email)
                            $('#input_year').val(response[0].Birthday.substring(0,4))
                            $('#input_month').val(response[0].Birthday.substring(4,6))
                            $('#input_day').val(response[0].Birthday.substring(6,8))
                        }
                        console.log(response)
                    })



                })
                .catch((err) => {
                    console.log(err)
                });
        } else {
            $('#div_logged').css('display','none')
            $('#div_notLogin').css('display','')

        }
}




let btn_logout = function(){
    $('#btn_logout').click(function (){
        console.log('123')

        if (liff.isLoggedIn()) {
            liff.logout();
            location.reload()
        }
    })
}

let btn_login = function () {
    $("#btn_login").click(function (event) {

        if (liff.isLoggedIn() == true) {
            alert("you have logged in ");
        } else {
            liff.login();
        }
    })
}

let showProductDetail = function (productId){
    instance.select('test5')
    console.log(productId)

}

let btn_register_click = function(){
    swal.showLoading()



    btn_modal_close.click()

}

$('#btn_memberInfo').click(function(){


})