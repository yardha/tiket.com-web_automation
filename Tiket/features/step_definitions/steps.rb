require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome

Given ("I Open tiket.com") do
    driver.navigate.to "https://www.tiket.com/"
    sleep(5)
end

Then("maximize the window") do
    driver.manage.window.maximize
    sleep(2)
end

Then ("user choose sekali jalan") do
    driver.find_element(:xpath,'/html/body/div[2]/div/div[2]/div[3]/div[3]/div[2]/div[1]/div[2]/div[1]').click
    driver.find_element(:xpath,'//*[@id="productSearchDeparture"]').send_keys(:arrow_down)
    driver.find_element(:xpath,'//*[@id="productSearchDeparture"]').send_keys(:arrow_down)
    driver.find_element(:xpath,'//*[@id="productSearchDeparture"]').send_keys(:arrow_down)
    sleep(2)
end

Then ("user click input origin from jktc") do
    driver.find_element(:xpath,'//*[@id="productSearchFrom"]').click
    driver.find_element(:xpath,'//*[@id="productSearchFrom"]').send_keys(:return)
    sleep(2)
end

Then ("user click input destination to subc") do
    driver.find_element(:xpath,'//*[@id="productSearchTo"]').click
    driver.find_element(:xpath,'//*[@id="productSearchTo"]').send_keys(:arrow_down)
    driver.find_element(:xpath,'//*[@id="productSearchTo"]').send_keys(:return)
    sleep(2)
end

Then ("user click departure date") do
    driver.find_element(:xpath,'//*[@id="productSearchDeparture"]').click
    sleep(2)
end

Then ("user choose departure date on first aug") do
    driver.find_element(:xpath,'//*[@id="startDate"]/div[2]/div/div/div[2]/div/div/div[1]/div[2]/div[2]/div/div[3]/div/table/tbody/tr[1]/td[1]').click
    sleep(2)
end

Then ("user choose flight class and total passengers") do
    driver.find_element(:xpath,'//*[@id="passengerCabin"]/div[2]/div/span').click
    sleep(2)
end


Then ("user click search for avaliable flights") do
    driver.find_element(:xpath,'//*[@id="productWidget"]/div[2]/div[3]/button').click
    sleep(5)
end

Then ("user accept pop up notification") do
    driver.find_element(:xpath,'/html/body/div[1]/div/div[4]/div[2]/div/div[2]/div/div[2]/div[2]/div[2]/div[1]/div[2]/div[3]').click
    sleep(2)
end

Then ("user choose first row in the list") do
    driver.find_element(:xpath,'/html/body/div[1]/div/div[3]/div[2]/div/div[2]/div/div[2]/div[3]/div/div/div[1]/div/div/div[1]').click
    sleep(5)
end

Then ("user choose title name") do
    driver.find_element(:xpath,'//*[@id="app"]/div/div[3]/div[3]/div/div[2]/div/div[1]/div/div[1]/div[3]/div[1]/div[1]/div/input').click
    driver.find_element(:xpath,'//*[@id="app"]/div/div[3]/div[3]/div/div[2]/div/div[1]/div/div[1]/div[3]/div[1]/div[1]/div/input').send_keys(:arrow_down)
    sleep(1)
    driver.find_element(:xpath,'//*[@id="app"]/div/div[3]/div[3]/div/div[2]/div/div[1]/div/div[1]/div[3]/div[1]/div[1]/div/input').send_keys(:return)
    sleep(2)
end

Then ("user input name") do
    driver.find_element(:xpath,'//*[@id="app"]/div/div[3]/div[3]/div/div[2]/div/div[1]/div/div[1]/div[3]/div[1]/div[2]/div/input').send_keys('diaz diaz diaz')
    sleep(2)
end

Then ("user input email") do
    driver.find_element(:xpath,'//*[@id="app"]/div/div[3]/div[3]/div/div[2]/div/div[1]/div/div[1]/div[3]/div[2]/div/input').send_keys('diaz123@gmail.com')
    sleep(2)
end

Then ("user input phone number") do
    driver.find_element(:xpath,'//*[@id="app"]/div/div[3]/div[3]/div/div[2]/div/div[1]/div/div[1]/div[3]/div[3]/div[2]/div/input').send_keys('8123456789')
    sleep(2)
end

Then ("user input passenger data same as registered data") do
    driver.find_element(:xpath,'//*[@id="app"]/div/div[3]/div[3]/div/div[2]/div/div[1]/div/div[2]/div[2]/div/div[1]/label').click
    sleep(2)
end

Then ("user going to pay for the ticket") do
    20.times { driver.find_element(:xpath,'//*[@id="app"]/div/div[3]/div[3]/div/div[2]/div/div[1]/div/div[2]/div[2]/div/div[1]/label').send_keys(:arrow_down) }
    20.times { driver.find_element(:xpath,'//*[@id="app"]/div/div[3]/div[3]/div/div[2]/div/div[1]/div/div[3]/div[3]/button').send_keys(:arrow_down) }
    driver.find_element(:xpath,'//*[@id="app"]/div/div[3]/div[3]/div/div[2]/div/div[1]/div/div[7]/button').click
    
    sleep(2)
end

Then ("user confirm for payment method") do
    driver.find_element(:xpath,'/html/body/div[1]/div/div[3]/div[3]/div/div[3]/div/div/div/div/div[3]/button[2]').click
    sleep(5)
end

# Then("user close the browser") do
#     driver.quit
# end