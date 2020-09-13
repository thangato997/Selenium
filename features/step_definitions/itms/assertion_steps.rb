# Do Not Remove This File
# Please adjust the below steps as your needed
# $driver is instance of webdriver use this instance to write your custom code

# Then("Verify page title is {string}") do |string|
#     check_partial_title(string, true)
# end

# # page title checking
# Then(/^I should\s*((?:not)?)\s+see page title as "(.*?)"$/) do |present, title|
#   check_title(title, present.empty?)
# end

# Then(/^I should\s*((?:not)?)\s+see page title having partial text as "(.*?)"$/) do |present, partial_text_title|
#   check_partial_title(partial_text_title, present.empty?)
# end

# # step to check element text
# Then(/^element "([^\"]*)" should\s*((?:not)?)\s+have text as "(.*?)"$/) do |element, present, value |
#   check_element_text(element, value, present.empty?)
# end

# # step to check element partial text
# Then(/^element "([^\"]*)" should\s*((?:not)?)\s+have partial text as "(.*?)"$/) do |element, present, value |
#   check_element_partial_text(element, value, present.empty?)
# end

# # step to check attribute value
# Then(/^element "([^\"]*)" should\s*((?:not)?)\s+have attribute "(.*?)" with value "(.*?)"$/) do |element, present, attrb, value|
#   check_element_attribute(element, attrb, value, present.empty?)
# end

# # step to check element enabled or not
# Then(/^element "([^\"]*)" should\s*((?:not)?)\s+be (enabled|disabled)$/) do |element, present, state|
#   flag = state == 'enabled'
#   flag = !flag unless present.empty?
#   check_element_enable(element, flag)
# end

# # step to check element present or not
# Then(/^element "(.*?)" should\s*((?:not)?)\s+be present$/) do |element, present|
#   check_element_presence(element, present.empty?)
# end

# # step to assert checkbox is checked or unchecked
# Then(/^checkbox "(.*?)" should be (checked|unchecked)$/) do |element, state|
#   flag = state == 'checked'
#   is_checkbox_checked(element, flag)
# end

# # steps to assert radio button checked or unchecked
# Then(/^radio button"(.*?)" should be (selected|unselected)$/) do |element, state|
#   flag = state == 'selected'
#   is_radio_button_selected(element, flag)
# end

# # steps to assert option by text from radio button group selected/unselected
# Then(/^option "(.*?)" by (.+) from radio button group "(.*?)" should be (selected|unselected)$/) do |option, attrb, element, state|
#   flag = state == 'selected'
#   is_option_from_radio_button_group_selected(element, attrb, option, flag)
# end

# # step to assert javascript pop-up alert text
# Then(/^I should see alert text as "(.*?)"$/) do |actual_value|
#   check_alert_text(actual_value)
# end

# # step to assert dropdown list
# Then(/^option "(.*?)" by (.+) from dropdown "(.*?)" should be (selected|unselected)$/) do |option, by, element, state|
#   flag = state == 'selected'
#   is_option_from_dropdown_selected(element, by, option, state)
# end

