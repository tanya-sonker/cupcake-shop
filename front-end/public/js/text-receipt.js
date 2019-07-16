		const accountSid = 'AC31cf22ba35afc6ca1700895e9715d8cd';
		const authToken = '6a8ad4553a1b991f70c6ceda066fd5ca';
		const notifyServiceSid = 'ISbe22e0698e78888b4852c2799bdc9ac6';
		const client = require('twilio')(accountSid, authToken);

		client.notify.services(notifyServiceSid)
		.notifications.create({
		toBinding: JSON.stringify({
		binding_type: 'sms', address: "+14087590023"
		}),
		body: 'Your order has been placed!'
		})
		.then(notification => console.log(notification.sid))
		.catch(error => console.log(error));