        const accountSid = 'AC31cf22ba35afc6ca1700895e9715d8cd';
        const authToken = 'f0cec08906afd4f9e8000deafa1936754';
        const notifyServiceSid = 'ISbe22e0698e78888b4852c2799bdc9ac6';
        const client = require('twilio')(accountSid, authToken);

        client.notify.services(notifyServiceSid)
        .notifications.create({    
        toBinding: JSON.stringify({
            // binding_type: 'sms', address: "+14087590023"
        binding_type: 'sms', address: "+14087590023"
        }),
        body: 'Your order has been placed!'
        })
        .then(notification => console.log(notification.sid))
        .catch(error => console.log(error));