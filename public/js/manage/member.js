var settings = {
    "async": true,
    "crossDomain": true,
    "url": "/manage/member/getAllMember/",
    "method": "GET",
    "headers": {
        "content-type": "application/json",
        "cache-control": "no-cache"
    }
}

$.ajax(settings).done(function (response) {
    let appendHtml =``
    for(let i in response){
        appendHtml+=`                <tr>
                                        <td data="${response[i].MemberId}">${response[i].MemberName}</td>
                                        <td>${response[i].Email}</td>
                                        <td>${response[i].Birthday}</td>
                                        <td>${response[i].LineUid?response[i].LineUid:''}
                                        </td>
                                        <td>${response[i].FacebookUid?response[i].FacebookUid:''}
                                        </td>
                                        <td>${response[i].FeedbackMoney}</td>
                                        <td><a class="btn btn-primary" value="${response[i].MemberId}">設定</a></td>
                                    </tr>`
    }
    $('#table_for_memberList').append(appendHtml)
});