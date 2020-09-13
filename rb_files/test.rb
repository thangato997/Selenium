require 'selenium-webdriver'
# require 'webdrivers'

navigate_to('https://formy-project.herokuapp.com/dropdown')
select_option_from_dropdown('dd', :text, 'Checkbox')
sleep 2
close_driver()
