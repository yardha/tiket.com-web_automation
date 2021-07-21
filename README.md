# Automation Script for Booking Flight Order
Created by Diaz Saufa Yardha

# How to Run
1. Clone this repository
2. Open terminal
3. change directory or path to /your/filepath/tiket.com-web_automation/Tiket/
4. Type ```chromedriver --allowed-ips``` and hit enter to run the chromedriver and allow your pc to connect
5. Open new terminal
6. Change directory to the same path as before
7. Type ```cucumber --publish``` and hit enter in order to run cucumber and generate report
8. Wait for system to run the automation script


## Tools used
<table>
    <tr>
        <td>ruby</td>
        <td>2.7.2</td>
    </tr>
    <tr>
        <td>cucumber-ruby</td> 
        <td>7.0.0</td>
    </tr>
    <tr>
        <td>chromedriver</td>
        <td>91.0.4472.101</td>
    </tr>
    <tr>
        <td>chrome browser</td>
        <td>92.0.4515.107 </td>
    </tr>
    <tr>
        <td>selenium-webdriver</td>
        <td>3.142.7</td>
    </tr>
    <tr>
        <td>gem gherkin</td>
        <td>9.0.0</td>
    </tr>
    <tr>
        <td>gem rspec</td>
        <td>3.10.0</td>
    </tr>
    <tr>
        <td>vscode</td>
        <td>1.58.2</td>
    </tr>
</table>
tested successfully for Windows

### User Flow
1. open tiket.com
2. maximize the window for better perspective
3. choose 'sekali jalan'
4. input origin from jakarta
5. input destination to surabaya
6. choose departure date on 1st aug
7. confirm about default flight class, type and total passengers
8. click search to show available flight
9. there will be a pop up, confirm it
10. choose flight from the first row provided (citilink)
11. choose passenger's title name Tuan
12. input passenger's name: diaz diaz diaz
13. input passenger's email: diaz123@gmail.com
14. input passenger's phone number: 8123456789
15. click toggle to confirm that passenger's data same as registered data we have done before
16. scroll down and submit the data
17. confirm the question to go to payment method page
18. conditional: if user have registered and submitted the same data 30 minutes before, there will be pop up question. confirm it
19. displaying payment method page