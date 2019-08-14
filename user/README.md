# Build
Before building, make sure to meet all the [pre-requisites](https://github.com/tanya-sonker/KupcakeShop#pre-requisites).

Now, you are ready to use the terminal to build and push your docker image!
- To build 
```
$ docker build -t DOCKER_USERNAME/user:latest -f docker/user/Dockerfile-release .
```
- Now, if you had to push this image, you would do:
```
$ docker push DOCKER_USERNAME/user
```
So, if my username is "tsonker" and I have an image tagged "tsonker/user", I can push it to my DockerHub repository "user" by following the process above.

# Text Functionality
- This project uses the Twilio API to support text functionality.
- Before you can use "text receipt" correctly, make sure to have a registered [Twilio](https://www.twilio.com/) account.
- Next, you would have to change the Account SID, Auth Token, message to be sent, and numbers to text from and text to!
```
$ cd user
$ cd api
$ vi endpoints.go
```
- Scroll to the bottom and in input mode, change:
```
		  accountSid := "YOUR_ACCOUNT_SID"
    	authToken := "YOUR_AUTH_TOKEN"
    	twilio := gotwilio.NewTwilioClient(accountSid, authToken)
    	from := "YOUR_TWILIO_PHONE_NUMBER_"
    	to := "PHONE_NUMBER_TO_SEND_TEXT_TO"
    	message := "MESSAGE_TO_SEND"	
```
Make sure to obtain all the above information from your Twilio account!
