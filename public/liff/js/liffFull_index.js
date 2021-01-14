const baseUrl = window.location.origin;
var profile;

var el = document.querySelector('.tabs');
var instance = M.Tabs.init(el, {});

$(document).ready(function () {

    initializeLiff('1654950618-BgKZnoxN');
    if (!navigator.geolocation) {
        alert('app does not support geolocation service');
    }

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