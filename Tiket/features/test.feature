@bookOrderinTiket
Feature: booking flight

@Order
Scenario: choose flight
Given I Open tiket.com
Then maximize the window
Then user choose sekali jalan
Then user click input origin from jktc
Then user click input destination to subc
Then user choose departure date on first aug
Then user choose flight class and total passengers
Then user click search for avaliable flights
Then user accept pop up notification
Then user choose first row in the list
Then user choose title name
Then user input name
Then user input email
Then user input phone number
Then user input passenger data same as registered data
Then user going to pay for the ticket
Then user confirm for payment method
Then user close the browser