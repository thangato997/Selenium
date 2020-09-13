# Do Not Remove This File
# Please adjust the below steps as your needed
# $driver is instance of webdriver use this instance to write your custom code

# enter text into input field steps
# Then(/^User enter "([^\"]*)" into element "(.*?)"$/) do |text, element|
#   enter_text(element, text)
#   enter_text(element, :enter)
#   sleep 5
# end

# # clear input field steps
# Then(/^I clear input element "(.*?)"$/) do |type, element|
#   clear_text(type, element)
# end

# # select option by text/value from dropdown/multiselect
# Then(/^I select "(.*?)" option by (.+) from\s*((?:multiselect)?)\sdropdown "(.*?)"$/) do |option, option_by, present, element|
#   validate_option_by option_by
#   select_option_from_dropdown(element, option_by, option)
# end

# # select option by index from dropdown/multiselect
# Then(/^I select (\d+) option by index from\s*((?:multiselect)?)\sdropdown "(.*?)"$/) do |option, present, element|
#   select_option_from_dropdown(element, 'index', (option.to_i) -1)
# end

# # step to select option from mutliselect dropdown list
# Then(/^I select all options from multiselect dropdown "(.*?)"$/) do |element|
#   select_all_option_from_multiselect_dropdown(element)
# end

# # step to unselect option from mutliselect dropdown list
# Then(/^I unselect all options from multiselect dropdown "(.*?)"$/) do |element|
#   unselect_all_option_from_multiselect_dropdown(element)
# end

# # check checkbox steps
# Then(/^I check the checkbox "(.*?)"$/) do |element|
#   check_checkbox(element)
# end

# # uncheck checkbox steps
# Then(/^I uncheck the checkbox "(.*?)"$/) do |element|
#   uncheck_checkbox(element)
# end

# # steps to toggle checkbox
# Then(/^I toggle checkbox "(.*?)"$/) do |element|
#   toggle_checkbox(element)
# end

# # step to select radio button
# Then(/^I select radio button "(.*?)"$/) do |element|
#   select_radio_button(element)
# end

# # steps to select option by text from radio button group
# Then(/^I select "(.*?)" option by (.+) from radio button group "(.*?)"$/) do |option, option_by, element|
#   validate_option_by option_by
#   select_option_from_radio_button_group(element, option_by, option)
# end
