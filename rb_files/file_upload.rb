require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "http://itmscoaching.herokuapp.com/fileupload"

# file_upload = driver.find_element(class: 'btn btn-secondary btn-choose').click
driver.find_element(id: 'file-upload-field').send_keys('Libraries\Documents\2.PNG')
sleep 5
driver.quit

