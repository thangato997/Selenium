require "selenium-webdriver"
require "webdrivers"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://itmscoaching.herokuapp.com/scroll"

name = driver.find_element(id: 'name')
name.send_keys('iTMS Coaching')

date = driver.find_element(id: 'date')
date.send_keys('01/01/2021')
sleep 5
driver.quit