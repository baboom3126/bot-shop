var settings = {
    "async": true,
    "crossDomain": true,
    "url": "/manage/product/getAllProduct/",
    "method": "GET",
    "headers": {
        "content-type": "application/json",
        "cache-control": "no-cache"
    }
}

$.ajax(settings).done(function (response) {
    let appendHtml =``
    for(let i in response){
        appendHtml+=`
                    <div class="col-lg-4">
                        <!-- Basic Card Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">${response[i].ProductName}</h6>
                            </div>
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                            ${response[i].ProductDescription}</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">$${response[i].Price}</div>
                                    </div>
                                    <div class="col-auto">
                                        <a class="btn btn-primary" onclick="javascript:a_productDetail_click('${response[i].ProductId}')">詳細內容</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

        `
    }
    $('#div_productList').append(appendHtml)
});

var a_productDetail_click = function (Pid){
    console.log(Pid)
    var postData = {}
    postData.pid = Pid
    var settings = {
        "async": true,
        "crossDomain": true,
        "url": "/manage/product/getProductCommentByPid",
        "method": "POST",
        "headers": {
            "content-type": "application/json",
            "cache-control": "no-cache"
        },
        data: JSON.stringify(postData)
    }

    $.ajax(settings).done(function (response) {
        let swalHtml = `<table class="table">
                                <tr>
                                <td>評論者</td>
                                <td>評論</td>
                                <td>時間</td>
                                <td>刪除</td>
                                </tr>
                        `
        for(let i in response){
            swalHtml+=`<tr>
                        <td>${response[i].CommentUserName}</td>
                        <td>${response[i].Comment}</td>
                        <td>${new Date(response[i].CreateTime).toLocaleDateString()}</td>
                        <td><button class="btn btn-danger" onclick="javascript:btn_delete_product_comment('${response[i].ProductCommentId}')">刪除</button></td>
                        
                        </tr>`
        }
        swalHtml+=`                        </table>`
        Swal.fire({
            title: '<strong>商品評論</strong>',
            width: 650,

            html:swalHtml,
            showCloseButton: false,
            showCancelButton: false,
            focusConfirm: false
        })

        console.log(response)
    })


}

let btn_delete_product_comment = function(p_comment_id){
    console.log(p_comment_id)
    let postData = {}
    postData.p_comment_id = p_comment_id
    var settings = {
        "async": true,
        "crossDomain": true,
        "url": "/manage/product/delProductCommentById",
        "method": "POST",
        "headers": {
            "content-type": "application/json",
            "cache-control": "no-cache"
        },
        data: JSON.stringify(postData)
    }

    $.ajax(settings).done(function (response) {
        console.log(response)
        Swal.fire({
            title: '刪除成功',
            showDenyButton: false,
            showCancelButton: false,
            confirmButtonText: `確定`
        }).then((result) => {
            if (result.isConfirmed) {
                location.reload()

            }
        })
    })


}