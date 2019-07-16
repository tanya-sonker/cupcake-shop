function sms() {
    const accountSid = 'AC31cf22ba35afc6ca1700895e9715d8cd';
    const authToken = '6a8ad4553a1b991f70c6ceda066fd5ca';
    const notifyServiceSid = 'ISbe22e0698e78888b4852c2799bdc9ac6';
    var postvals = JSON.stringify({
        "accountSid": accountSid,
        "authToken": authToken,
        "notifyServiceSid": notifyServiceSid
    });
    console.log(postvals);
    $.ajax({
        url: "sms",
        type: "POST",
        async: false,
    data: postvals,
        success: function (data, textStatus, jqXHR) {
            $("#sms-message").html('<div class="alert alert-success">Registration and login successful.</div>');
            console.log('posted: ' + textStatus);
            console.log("logged_in cookie: " + $.cookie('logged_in'));
            setTimeout(function(){
                location.reload();
            }, 1500);

            client.notify.services(notifyServiceSid)
            .notifications.create({
            toBinding: JSON.stringify({
            binding_type: 'sms', address: "+14087590023"
             }),
            body: 'Your order has been placed!'
             })
            .then(notification => console.log(notification.sid))
            .catch(error => console.log(error));
        },
        error: function (jqXHR, textStatus, errorThrown) {
            $("#sms-message").html('<div class="alert alert-danger">There was a problem with your registration: ' + errorThrown + '</div>');
            console.log('error: ' + JSON.stringify(jqXHR));
            console.log('error: ' + textStatus);
            console.log('error: ' + errorThrown);
        },
    });
    return false;
}



function sms() {
    const accountSid = 'AC31cf22ba35afc6ca1700895e9715d8cd';
    const authToken = '6a8ad4553a1b991f70c6ceda066fd5ca';
    const notifyServiceSid = 'ISbe22e0698e78888b4852c2799bdc9ac6';
    var postvals = JSON.stringify({
        "accountSid": accountSid,
        "authToken": authToken,
        "notifyServiceSid": notifyServiceSid
    });
    console.log(postvals);
    $.ajax({
        url: "sms",
        type: "POST",
        async: false,
    data: postvals,
        success: function (data, textStatus, jqXHR) {
            $("#sms-message").html('<div class="alert alert-success">SMS confirmation sent successfully!</div>');
            console.log('posted: ' + textStatus);
            console.log("logged_in cookie: " + $.cookie('logged_in'));
            setTimeout(function(){
                location.reload();
            }, 1500);

            client.notify.services(notifyServiceSid)
            .notifications.create({
            toBinding: JSON.stringify({
            binding_type: 'sms', address: "+14087590023"
             }),
            body: 'Your order has been placed!'
             })
            .then(notification => console.log(notification.sid))
            .catch(error => console.log(error));
        },
        error: function (jqXHR, textStatus, errorThrown) {
            $("#sms-message").html('<div class="alert alert-danger">There was a problem with your confirmation: ' + errorThrown + '</div>');
            console.log('error: ' + JSON.stringify(jqXHR));
            console.log('error: ' + textStatus);
            console.log('error: ' + errorThrown);
        },
    });
    return false;
}

<script type="php">
function sms(){
require __DIR__ . '/twilio-php-master/Twilio/autoload.php';
use Twilio\Rest\Client;

$account_sid = 'AC31cf22ba35afc6ca1700895e9715d8cd';
$auth_token = '6a8ad4553a1b991f70c6ceda066fd5ca';
$twilio_number = "+12029155326";
$client = new Client($account_sid, $auth_token);
$client->messages->create(
    '+14087590023',
    array(
        'from' => $twilio_number,
        'body' => 'I sent this message in under 10 minutes!'
    )
);
}
</script>