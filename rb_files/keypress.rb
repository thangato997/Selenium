require 'selenium-webdriver'
require 'webdrivers'

name = driver.find_element(id: 'name')
name.send_keys('iTMS Coaching')
# name.send_keys(:enter)
sleep 5
button = driver.find_element(id: 'button')
button.click
driver.action.key_down(name, :enter).perform
sleep 5
