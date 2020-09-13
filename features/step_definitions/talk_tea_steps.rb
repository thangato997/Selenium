Given("User navigate to the Talk Tea page") do
    navigate_to("http://www.practiceselenium.com/let-s-talk-tea.html")
end

Given("Click submit button") do
    click('ltt_sm_bt')
    check_title("Let's Talk Tea", 'true')
    close_driver()
end