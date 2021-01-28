var settings = {
    "async": true,
    "crossDomain": true,
    "url": "/manage/getProductComments",
    "method": "POST",
    "headers": {
        "content-type": "application/json",
        "cache-control": "no-cache",
        "postman-token": "78aa6eb4-bab2-7986-6fc4-ce1ebb6360a0"
    }
}

$.ajax(settings).done(function (response) {
    let appendHtml = '';
    for(i in response){
        appendHtml+=`
                     <div class="col-lg-4">
                        <!-- Basic Card Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">評論</h6>
                            </div>
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                            ${response[i].name}</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">${response[i].comment}</div>
                                        
                                    </div>
                                    <div class="col-auto">
                                        <button class="btn btn-danger" value="${response[i].commentId}">刪除</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
        
        `
    }
    $('#div_comments').html(appendHtml)
});