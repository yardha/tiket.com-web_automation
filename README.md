# Automation Script for Booking Flight Order
Created by Diaz Saufa Yardha

# How to Run
1. Open terminal
2. Type ```chromedriver --allowed-ips```to run the chromedriver and allow your pc to connect
3. Change directory to your filepath (mine -> E:/000DOC/Informatic/Ruby/Testing/Tiket)
4. Type ```cucumber --publish```in order to run cucumber and generate report
5. Wait for system to run the automation script

## Tools used
<table>
    <tr>
        <td>ruby                2.7.2</td>
    </tr>
    <tr>
        <td>cucumber-ruby       7.0.0</td>
    </tr>
    <tr>
        <td>chromedriver        91.0.4472.101</td>
    </tr>
    <tr>
        <td>chrome browser      92.0.4515.107 </td>
    </tr>
    <tr>
        <td>selenium-webdriver  3.142.7</td>
    </tr>
    <tr>
        <td>gem gherkin         9.0.0</td>
    </tr>
    <tr>
        <td>gem cucumber        7.0.0, 5.3.0</td>
    </tr>
    <tr>
        <td>gem rspec           3.10.0</td>
    </tr>
    <tr>
        <td>vscode              1.58.2</td>
    </tr>
</table>

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