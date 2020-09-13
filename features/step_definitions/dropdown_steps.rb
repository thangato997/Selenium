Given("User nagivate to the Dropdown page") do
    navigate_to('https://formy-project.herokuapp.com/dropdown')
end
Then("Choose a value") do
    click('dd')
    click('dd_vl')
    # validate_option_by 'text'
    # select_option_from_dropdown('dd', 'text', 'Checkbox')
    # scroll_page('end')
    # zoom_in_out('subtract')
    sleep 2
    close_driver()
end