def tab_key(element)
    element = ""
    case element
        when 'anc_cname'
            element = 'anc_cname'
        when 'anc_gender'
            element = 'anc_gender'
        when 'anc_DoB'
            element = 'anc_DoB'
        when 'anc_adr'
            element = 'anc_adr'
        when 'anc_city'
            element = 'anc_city'
        when 'anc_state'
            element = 'anc_state'
        when 'anc_pin'
            element = 'anc_pin'
        when 'anc_telephone'
            element = 'anc_telephone'
        when 'anc_email'
            element = 'anc_email'   
    end
end

Given("Manager navigate to Add New Customer screen") do
    navigate_to("http://demo.guru99.com/V1/html/addcustomerpage.php")
end


# Given("Manager leave all the fields blank and click on submit button") do
#     click('anc_submit')
# end
# Then("Manager assert an pop-up message") do
#     check_alert_text("Please fill all fields")
#     sleep 2
#     handle_alert('accept')
#     sleep 2
# end


Given("Manager no fill the data and press key TAB") do
    enter_text('anc_adr',:tab)
end
Then("Manager assert an error message") do
    wait_for_element_to_enable("anc_adr_mess",10)
    if anc_adr_mess.present?
        puts "wrong"
    else
        puts "true"
    end
  #         if check_element_text('anc_adr_mess','Customer name must not be blank','true')
#             pass
#         else
#             raise "Error message is wrong"
#             pass
#         end
#     else
#         raise "No error message 'Customer name must not be blank' be displayed"
#         pass
#     end
    sleep 2
    close_driver()
end

# Given("Manager enter numbers to this field and press key TAB on the keyboard") do
#     enter_text('anc_cname',"5646546")
#     enter_text('anc_cname',:tab)

# end

# Given("Manager enter special characters to this field and press key TAB on the keyboard") do
#     enter_text('anc_cname',"~! @ # $ %.")
#     enter_text('anc_cname',:tab)

# end

# Given("Manager enter a space at first character and press key TAB on the keyboard") do
#     enter_text('anc_cname',"   thang")
#     enter_text('anc_cname',:tab)
# end



# Then("Manager assert an error message") do
    
# end

