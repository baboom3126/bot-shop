var express = require('express');
var router = express.Router();
var messageHandler = require('../eventHandler/messageHandler')
var followHandler = require('../eventHandler/followHandler')
var unfollowHandler = require('../eventHandler/unfollowHandler')
/* GET home page. */
router.post('/', async function (req, res, next) {

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


module.exports = router;
