var express = require('express');
var router = express.Router();
var messageHandler = require('../eventHandler/messageHandler')
var followHandler = require('../eventHandler/followHandler')
var unfollowHandler = require('../eventHandler/unfollowHandler')
var facebookEventController = require('../eventHandler/facebookEventController')
var facebookEventControllerForPostback = require('../eventHandler/facebookEventControllerForPostback')
/* GET home page. */
router.post('/line', async function (req, res, next) {

    try {

        if (req.body.events.length > 0) {
            let event = req.body.events[0]
            let event_type = event.type

            switch (event_type) {
                case 'message':
                    await messageHandler(event)
                    break;
                case 'follow':
                    await followHandler(event)
                    break;
                case 'unfollow':
                    await unfollowHandler(event)
                    break;
                default:
                    break;
            }

            res.send('')
        } else {
            console.log(req.body)
            res.send('')
        }
    } catch (err) {
        res.send(err)
    }
});


router.post('/facebook', async function (req, res, next) {

    let body = req.body;

    // Checks this is an event from a page subscription
    if (body.object === 'page') {

        // Iterates over each entry - there may be multiple if batched
        for(let event of body.entry){
            // console.log(event)
            let webhook_event = event.messaging[0];
            if(webhook_event.message){
                await facebookEventController(webhook_event)

            }else if(webhook_event.postback){
                await facebookEventControllerForPostback(webhook_event)
            }

        }
        // body.entry.forEach(function(entry) {
        //
        //     // Gets the message. entry.messaging is an array, but
        //     // will only ever contain one message, so we get index 0
        //     let webhook_event = entry.messaging[0];
        //     // await facebookEventController(webhook_event)
        //     console.log(webhook_event);
        // });

        // Returns a '200 OK' response to all requests
        res.status(200).send('EVENT_RECEIVED');
    } else {
        // Returns a '404 Not Found' if event is not from a page subscription
        res.sendStatus(404);
    }

});


router.get('/facebook', async (req, res) => {

    // Your verify token. Should be a random string.
    let VERIFY_TOKEN = process.env.FACEBOOK_PAGE_ACCESS_TOKEN

    // Parse the query params
    let mode = req.query['hub.mode'];
    let token = req.query['hub.verify_token'];
    let challenge = req.query['hub.challenge'];

    // Checks if a token and mode is in the query string of the request
    if (mode && token) {

        // Checks the mode and token sent is correct
        if (mode === 'subscribe' && token === VERIFY_TOKEN) {

            // Responds with the challenge token from the request
            console.log('WEBHOOK_VERIFIED');
            res.status(200).send(challenge);

        } else {
            // Responds with '403 Forbidden' if verify tokens do not match
            res.sendStatus(403);
        }
    }
});

module.exports = router;
