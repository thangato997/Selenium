Feature: Add New Customer
    As a manager,
    I wanna go to Add New Customer screen,
    So that add a new customer.

    Background:
        Given Manager navigate to Add New Customer screen

    # Scenario: No fill any data
    #     Given Manager leave all the fields blank and click on submit button
    #     Then Manager assert an pop-up message


    Scenario: Customer Name field cannot be empty
        Given Manager no fill the data and press key TAB
        Then Manager assert an error message

    # Scenario: Customer Name field cannot use Numbers to naming
    #     Given Manager enter numbers to this field and press key TAB on the keyboard
    #     Then Manager assert an error message

    # Scenario: Customer Name field cannot use Special characters to naming
    #     Given Manager enter special characters to this field and press key TAB on the keyboard
    #     Then Manager assert an error message

    # Scenario: First character cannot have space at Customer Name field
    #     Given Manager enter a space at first character and press key TAB on the keyboard
    #     Then Manager assert an error message


