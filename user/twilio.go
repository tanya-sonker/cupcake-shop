package main

import (
	"github.com/sfreiberg/gotwilio"
	"log"
)

func main(){
		accountSid := "AC31cf22ba35afc6ca1700895e9715d8cd"
    	authToken := "f0cec08906afd4f9e800deafa1936754"
    	twilio := gotwilio.NewTwilioClient(accountSid, authToken)
    	from := "+12029155326"
    	to := "+14087590023"
    	message := "Your order has been placed!"	
    	_, _, err := twilio.SendSMS(from, to, message, "", "")
    	log.Printf(err.Error())
}		

