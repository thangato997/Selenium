require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://formy-project.herokuapp.com/form"

dropdown_menu = driver.find_element(id: 'dropdownMenuButton')
dropdown_menu.click

autocomplete_item = driver.find_element(id: 'autocomplete')
autocomplete_item.click

# ddlExperience = driver.find_element(id: 'select-menu')
#     option = Selenium::WebDriver::Support::Select.new(ddlExperience)
#     option.select_by(:text, '0-1')

#  driver.find_element(id: 'select-menu').click
#   sleep 1
#  driver.find_element(xpath: "//option[contains(text(),'0-1')]").click

 driver.find_element(css: 'option[value="2"]').click

    