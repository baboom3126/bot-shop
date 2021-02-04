// <div class="col-lg-10">
//     <div class="card shadow mb-4">
//         <!-- Card Header - Accordion -->
//         <a href="#collapseCardExample" class="d-block card-header py-3 cc_pointer"
//            data-toggle="collapse" role="button" aria-expanded="true"
//            aria-controls="collapseCardExample">
//             <h6 class="m-0 font-weight-bold text-primary">訂單編號 AAAA1111 <span class="text-danger">已完成</span>
//             </h6>
//         </a>
//         <!-- Card Content - Collapse -->
//         <div class="collapse show" id="collapseCardExample" style="">
//             <div class="card-body">
//                 <div class="row">
//                     <div class="col-lg-6">
//                         <h6 class="text-primary" style="font-weight: bold;" id="div_orderInfo">詳細內容</h6>
//                         <div>狀態</div>
//                         <div>地址</div>
//                         <div>顧客</div>
//                     </div>
//                     <div class="col-lg-6">
//
//                         <h6 class="text-primary" style="font-weight: bold;" id="div_orderDetail">訂單內容</h6>
//                         <div>商品1 * 5</div>
//                         <div>商品1 * 5</div>
//                     </div>
//                 </div>
//                 <hr>
//                     <h6 class="text-primary" id="div_totalMoney">總金額 1000</h6>
//             </div>
//         </div>
//     </div>
//
// </div>


$(document).ready(function(){
    var settings = {
        "async": true,
        "crossDomain": true,
        "url": "/manage/order/getAllOrderWithDetail/",
        "method": "GET",
        "headers": {
            "content-type": "application/json",
            "cache-control": "no-cache"
        }
    }

    $.ajax(settings).done(function (response) {
        console.log(response)
        let appendHtml = ``
        for(let i in response){
            let appendHtmlForOrderDetail = ``
            let totalMoney = 0
            for(let j in response[i].OrderDetail){
                appendHtmlForOrderDetail+=`<div>${response[i].OrderDetail[j].ProductName} * ${response[i].OrderDetail[j].ProductNum}</div>`
                totalMoney = totalMoney+ parseInt(response[i].OrderDetail[j].ProductNum)*parseInt(response[i].OrderDetail[j].Price)
            }
            appendHtml+=`
            <div class="col-lg-10">
    <div class="card shadow mb-4">
        <!-- Card Header - Accordion -->
        <a href="#collapseCardExample" class="d-block card-header py-3 cc_pointer"
           data-toggle="collapse" role="button" aria-expanded="true"
           aria-controls="collapseCardExample">
            <h6 class="m-0 font-weight-bold text-primary">訂單編號 ${response[i].OrderId.toUpperCase()}
            </h6>
        </a>
        <!-- Card Content - Collapse -->
        <div class="collapse show" id="collapseCardExample" style="">
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <h6 class="text-primary" style="font-weight: bold;" id="div_orderInfo">詳細內容</h6>
                        <div><b>狀態</b> <span style="color: red;">${response[i].Status}</span></div>
                        <div><b>地址</b> ${response[i].DeliverAddress}</div>
                        <div><b>顧客</b> ${response[i].MemberName}</div>
                        <div><b>時間</b> ${new Date(response[i].OrderTime).toLocaleString()}</div>

                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <h6 class="text-primary" style="font-weight: bold;" id="div_orderDetail">訂單內容</h6>
                        ${appendHtmlForOrderDetail}
                    </div>
                </div>
                <hr>
                    <h6 class="text-primary" id="div_totalMoney">總金額 ${totalMoney}</h6>
            </div>
        </div>
    </div>

</div>
            
            `

        }
        $('#div_orderList').append(appendHtml)
    })


})