var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://127.0.0.1/manage/member/getAllMember/",
    "method": "GET",
    "headers": {
        "content-type": "application/json",
        "cache-control": "no-cache",
        "postman-token": "ba65b4b8-fd2b-e53b-eab4-75cda0db29d9"
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});