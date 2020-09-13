Welcome to itms_automation
=================

itms_automation : Automation Tesing Using Ruby

itms_automation is a behavior driven development (BDD) approach to write automation test script to test Web and Android Apps.
It enables you to write and execute automated acceptance/unit tests.
It is cross-platform, open source and free.
Automate your test cases with minimal coding.

itms_automation Ruby API's
============================

If you are writing code for your custom steps you can use the following methods :

Note : For some of the API paramtere values are fixed. Such values for paramaters are mentioned below.

Navigation API's
----------------

	navigate_to("link")

	navigate(direction)  # direction => "back" / "forward"

	close_driver()


Browser Interaction API's
-------------------------

	resize_browser(width, height)

	scroll_page(to)	     # to => "top" / "end"

	scroll_to_element(by, access_value)

	zoom_in_out(in_out)  # in_out => "add" / "subtract"

	zoom_in_out_till_element_display(by, in_out, access_value) # in_out => "add" / "subtract"


Input API's
------------

	click(element)

	double_click(element)

	click_forcefully(element)

	enter_text(element, text)

	clear_text(element)

	check_checkbox(element)

	uncheck_checkbox(element)

	toggle_checkbox(element)

	select_radio_button(element)

	get_page_title()

	get_element_text(element)

	get_element_attribute(element, attribute)

	is_element_enabled(element)

	is_element_displayed(element)

	hover_over_element(element)

	by => "locators type" ("id", "name", "class", "xpath", "css")

	access_value => "locator value"


Javascript Handling API
-----------------------

	handle_alert(decision) 		# decision => "accept" / "dismiss"

	get_alert_text


Progress API's
--------------

	wait(time_in_sec)

	wait_for_element_to_display(element, duration)

	wait_for_element_to_enable(element, duration)


	by => "locators type" ("id", "name", "class", "xpath", "css")

	access_value => "locator value"

	duration => duration in seconds.


Screenshot API
--------------
	take_screenshots


Configuration API
-----------------

	print_congifugartion


Usage: itms_automation <command-name> [parameters] [options]

  <command-name> can be one of
    help
    gen
    version

  Commands:
    help : prints more detailed help information.

    gen  : creates a skeleton features dir. This is usually used once when
           setting up selnium-cucumber to ensure that the features folder contains
           the right step definitions and environment to run with cucumber.

    version : prints the gem version

    Options:  -v, --verbose  Turns on verbose logging
