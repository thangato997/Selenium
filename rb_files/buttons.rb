require 'selenium-webdriver'
# require 'webdrivers'

driver = Selenium::WebDriver.for :firefox

driver.navigate.to "http://itmscoaching.herokuapp.com/buttons"

driver.find_element(xpath: "//button[contains(text(),'Primary')]").click
sleep 2

driver.find_element(xpath: "//button[@class='btn btn-lg btn-success']").click
sleep 2

driver.find_element(xpath: "//button[@class='btn btn-lg btn-info']").click
sleep 2

driver.find_element(xpath: "//button[@class='btn btn-lg btn-warning']").click
sleep 2

driver.find_element(xpath: "//button[@class='btn btn-lg btn-danger']").click
sleep 2

driver.find_element(xpath: "//button[@class='btn btn-lg btn-link']").click
sleep 2

driver.find_element(xpath: "//button[contains(text(),'Left')]").click
sleep 2

driver.find_element(xpath: "//button[contains(text(),'Middle')]").click
sleep 2

driver.find_element(xpath: "//button[contains(text(),'Right')]").click
sleep 2

driver.find_element(xpath: "//button[contains(text(),'1')]").click
sleep 2

driver.find_element(xpath: "//button[contains(text(),'2')]").click
sleep 2

driver.find_element(xpath: "//button[@id='btnGroupDrop1']").click
driver.find_element(xpath: "//a[contains(text(),'Dropdown link 1')]").click
sleep 2

driver.find_element(xpath: "//button[@id='btnGroupDrop1']").click
driver.find_element(xpath: "//a[contains(text(),'Dropdown link 2')]").click
sleep 2

driver.quit