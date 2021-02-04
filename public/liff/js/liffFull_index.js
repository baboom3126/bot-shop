const baseUrl = window.location.origin;
var profile;
var LineUid;
var memberId;
var el = document.querySelector('.tabs');
var instance = M.Tabs.init(el, {});
var productInfos = {};
var purchaseList = {};
swal.showLoading()
$(document).ready(function () {

    initializeLiff('1654950618-BgKZnoxN');
    if (!navigator.geolocation) {
        alert('app does not support geolocation service');
    }
    $('.modal').modal();

    var settings = {
        "async": true,
        "crossDomain": true,
        "url": "/liffApi/getAllProduct/",
        "method": "POST",
        "headers": {
            "content-type": "application/json",
            "cache-control": "no-cache"
        }
    }

    $.ajax(settings).done(function (response) {
        console.log(response)
        let appendHtml = ``
        for (let i in response) {
            productInfos[response[i].ProductId] = response[i]

            appendHtml += `
            <div class="divider"></div>
                <div class="section">
                    <h5><a onclick="javascript:showProductDetail('${response[i].ProductId}')">${response[i].ProductName}</a> <small>$${response[i].Price}</small></h5>
                    <div class="row" style="margin:0px;">
                        <div class="col s8" data="${response[i].ProductId}">
                            X <span style="text-decoration: underline;font-size: x-large;">0</span> 個 = $ <span style="text-decoration: underline;font-size: x-large;">0</span>
                        </div>

                        <div class="col s2">
                                <a class="btn blue lighten-2 waves-effect waves-light" style="font-size:x-large;" onclick="javascript:add_toCart(this,'${response[i].ProductId}')">+</a>
                        </div>
                        <div class="col s2">

                            <a class="btn blue lighten-2 waves-effect waves-light" style="font-size:x-large;" onclick="javascript:del_toCart(this,'${response[i].ProductId}')">-</a>
                        </div>

                    </div>
                </div>
            `
        }
        $('#div_tab_productList').html(appendHtml)
        swal.close()
        $('#h5_warning_text_for_product_detail').css('visibility','visible')
    })


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
        $('#div_logged').css('display', '')
        $('#div_notLogin').css('display', 'none')
        liff.getProfile()
            .then(result => {
                profile = result
                const name = result.displayName
                $('#span_name').text(name)
                $('#span_productDetail_comment_myName').text(name)
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
                    if (response == 'not exist') {
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
                    } else {
                        memberId = response[0].MemberId
                        $('#input_email').val(response[0].Email)
                        $('#input_year').val(response[0].Birthday.substring(0, 4))
                        $('#input_month').val(response[0].Birthday.substring(4, 6))
                        $('#input_day').val(response[0].Birthday.substring(6, 8))
                    }
                    console.log(response)
                })


            })
            .catch((err) => {
                console.log(err)
            });
    } else {
        $('#div_logged').css('display', 'none')
        $('#div_notLogin').css('display', '')

    }
}


let btn_logout = function () {
    $('#btn_logout').click(function () {
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

let showProductDetail = function (productId) {
    $('#div_comments').css('display', 'none')
    if (!liff.isLoggedIn()) {
        $('#div_comment_textarea').css('display', 'none')
    }

    instance.select('test5')
    $('#h5_warning_text_for_product_detail').css('display', 'none')
    $('#test5').css('visibility', 'visible')
    console.log(productInfos[productId])
    $('#prodcut_detail_price').text(productInfos[productId].Price)
    $('#product_detail_name').text(productInfos[productId].ProductName)
    $('#product_detail_description').text(productInfos[productId].ProductDescription)


    swal.showLoading()


    let postData = {}
    postData.pid = productId
    var settings = {
        "async": true,
        "crossDomain": true,
        "url": "/liffApi/getProductCommentByPid/",
        "method": "POST",
        "headers": {
            "content-type": "application/json",
            "cache-control": "no-cache"
        },
        "data": JSON.stringify(postData)
    }

    $.ajax(settings).done(function (data) {
        let appendHtmlForComments = ``
        for (let i in data) {
            appendHtmlForComments += `
                    <div class="col s12">
                        <div class="card horizontal">
                            <div class="card-image">
                                <div class="" style="padding-top: 24px;padding-left: 12px;">
                                    <p>
                                        <img src="/img/undraw_profile.svg" height="50">
                                    </p>
                                </div>
                            </div>
                            <div class="card-stacked">
                                <div class="card-content">
                                    <p style="word-break: break-word;"><span style="font-weight: bold;">${data[i].CommentUserName}</span>
                                    : ${data[i].Comment}<br><span style="visibility: hidden;">1</span></p>
                                </div>

                            </div>
                        </div>
                    </div>      
            `
        }
        $('#div_comments').html(appendHtmlForComments)
        $('#div_comments').css('display', '')

        $('#btn_share_product_to_line').attr(`onclick`, `javascript:shareProduct('${productId}')`)
        $('#btn_send_comment').attr('onclick', `javascript:sendComment('${productId}')`)
        swal.close()
    })


}

let btn_register_click = function () {
    swal.showLoading()


    btn_modal_close.click()

}

$('#btn_memberInfo').click(function () {


})


let myOrder_tab_click = function () {
    if (!liff.isLoggedIn()) {
        swal.fire('請先登入')
    } else {

        swal.showLoading()
        let postData = {}
        postData.lineUid = LineUid
        var settings = {
            "async": true,
            "crossDomain": true,
            "url": "/liffApi/getOrderAndOrderDetailByLineId/",
            "method": "POST",
            "headers": {
                "content-type": "application/json",
                "cache-control": "no-cache"
            },
            "data": JSON.stringify(postData)
        }

        $.ajax(settings).done(function (data) {
            console.log(data)
            let appendHtmlForOrderDetail = ``
            for (let i in data) {

                let appendHtmlForProductNameAndNum = ``
                let totalMoney = 0
                for (let j in data[i].OrderDetail) {
                    appendHtmlForProductNameAndNum += `
                <div>${data[i].OrderDetail[j].ProductName} (${data[i].OrderDetail[j].Price}) X ${data[i].OrderDetail[j].ProductNum}</div>
                `
                    totalMoney = totalMoney + parseInt(data[i].OrderDetail[j].Price) * parseInt(data[i].OrderDetail[j].ProductNum)
                }
                appendHtmlForOrderDetail += `
                <div class="row">
                    <div class="col s12">
                        <div class="card horizontal">

                            <div class="card-stacked">

                                <div class="card-content">
                                    <div class="" style="color:#2196F3;font-weight: bold;">訂單編號 ${data[i].OrderId}<span style="position: absolute;right:40px;color:#d84315;">${data[i].Status}</span></div>
                                    <div><small style="color:#616161">${new Date(data[i].OrderTime).toLocaleString()}</small></div>
                                    ${appendHtmlForProductNameAndNum}
                                    <hr>
                                    <div>總金額 $${totalMoney}</div>

                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            
            `
            }
            $('#test6').html(appendHtmlForOrderDetail)
            swal.close()
        })
    }
}


let shareProduct = function (productId) {
    if (!liff.isLoggedIn()) {
        Swal.fire({
            title: '請先登入line',
            showDenyButton: false,
            showCancelButton: false,
            confirmButtonText: `確定`
        }).then((result) => {
            if (result.isConfirmed) {
                liff.login()
            }
        })
    } else {

        liff.shareTargetPicker([
            {
                type: "text",
                text: "分享給你 " + productInfos[productId].ProductName + "\n只要 $" + productInfos[productId].Price + ""
            },
            {
                type: "text",
                text: location.href.split('?')[0].split('#')[0]
            }
        ])
            .then(
                // swal.fire('已向好友分享')

            ).catch(function (res) {
            alert(res)
        })
    }
}


let sendComment = function (productId) {
    swal.showLoading()
    let comment = $('#textarea1').val()
    let postData = {}
    postData.productId = productId
    postData.comment = comment
    postData.commentUserName = profile.displayName
    console.log(postData)
    var settings = {
        "async": true,
        "crossDomain": true,
        "url": "/liffApi/newCommentForProduct/",
        "method": "POST",
        "headers": {
            "content-type": "application/json",
            "cache-control": "no-cache"
        },
        "data": JSON.stringify(postData)
    }

    $.ajax(settings).done(function (data) {
        $('#textarea1').val('')
        swal.close()
        if (data == 'success') {
            appendNewComment = `
                    <div class="col s12">
                        <div class="card horizontal">
                            <div class="card-image">
                                <div class="" style="padding-top: 24px;padding-left: 12px;">
                                    <p>
                                        <img src="/img/undraw_profile.svg" height="50">
                                    </p>
                                </div>
                            </div>
                            <div class="card-stacked">
                                <div class="card-content">
                                    <p><span style="font-weight: bold;">${profile.displayName}</span>
                                    : ${comment}<br><span style="visibility: hidden;">1</span></p>
                                </div>

                            </div>
                        </div>
                    </div>
            `
            $('#div_comments').append(appendNewComment)
        } else {
            swal.fire('伺服器錯誤')
        }
    })

}


let add_toCart = function (that, pid) {
    var thisPrice = productInfos[pid].Price
    var NumberAndMoney = $($(that).parent().parent().parent().find('.s8')).find('span')
    var number = $(NumberAndMoney[0]).text()
    $(NumberAndMoney[0]).text((parseInt(number) + 1))
    var eachTotal = (parseInt(number) + 1) * thisPrice
    $(NumberAndMoney[1]).text(eachTotal)
    var sumTotal = parseInt($('#total_money').text())
    $('#total_money').text(sumTotal + parseInt(thisPrice))
    if (!purchaseList[pid]) {
        purchaseList[pid] = {num: 1}
    } else {
        purchaseList[pid].num = purchaseList[pid].num + 1
    }
}

let del_toCart = function (that, pid) {
    console.log('123')
    var thisPrice = productInfos[pid].Price
    var NumberAndMoney = $($(that).parent().parent().parent().find('.s8')).find('span')
    var number = $(NumberAndMoney[0]).text()
    if (parseInt(number) == 0) {
        //do nothinig
    } else {
        $(NumberAndMoney[0]).text((parseInt(number) - 1))
        var eachTotal = (parseInt(number) - 1) * thisPrice
        $(NumberAndMoney[1]).text(eachTotal)
        var sumTotal = parseInt($('#total_money').text())
        $('#total_money').text(sumTotal - parseInt(thisPrice))


        if (purchaseList[pid].num == 1) {
            delete purchaseList[pid]
        } else {
            purchaseList[pid].num = purchaseList[pid].num - 1
        }


    }
}

let checkout_order = function () {
    if(jQuery.isEmptyObject(purchaseList)){
        swal.fire('請選擇商品')
    }else{


    let swalHtml = ``;
    let orderDetail = []
    for(let i in purchaseList){
        let productName = productInfos[i].ProductName
        let price = productInfos[i].Price
        swalHtml+=`${productName} (${price}) : ${purchaseList[i].num} 個<br>`
        let tempJson = {}
        tempJson['productId'] = i
        tempJson['number'] = purchaseList[i].num
        orderDetail.push(tempJson)
    }
    swalHtml+=`<hr>總共金額${$('#total_money').text()}`

    Swal.fire({
        title: '<strong>確認訂單</strong>',
        width: 650,
        html:swalHtml,
        showCloseButton: false,
        showCancelButton: true,
        focusConfirm: false
    }).then(result=>{
        if(result.isConfirmed){
            Swal.fire({
                title: '請輸入您的地址',
                input: 'text',
                inputLabel: '',
                inputPlaceholder: '地址'
            }).then(result=>{
                if(result.isConfirmed){

                    let postData = {}
                    postData.memberId = memberId
                    postData.deliverAddress = result.value
                    postData.orderDetail = orderDetail

                    var settings = {
                        "async": true,
                        "crossDomain": true,
                        "url": "/liffApi/newOrder/",
                        "method": "POST",
                        "headers": {
                            "content-type": "application/json",
                            "cache-control": "no-cache"
                        },
                        data:JSON.stringify(postData)
                    }

                    $.ajax(settings).done(function (response) {
                        if(response=="success"){
                            swal.fire('成功下單')
                        }else{
                            swal.fire('下單失敗')
                        }


                    })

                }

            })
        }
    })
    }
}