require "selenium-webdriver"
require "webdrivers"
require "rspec"

$email      = 'thangato997@gmail.com'
$name       = 'thang'
$address    = 'chau van liem'
$card_number= '233229906'
$card_holder_name = 'nguyen'
$verification_code = '13201008'
$expected = 'Menu'

def submit_form(driver)
    driver.find_element(id: 'email').send_keys($email)
    driver.find_element(id: 'name').send_keys($name)
    driver.find_element(id: 'address').send_keys($address)
    driver.find_element(id: 'card_type').click
    driver.find_element(xpath: "//option[contains(text(),'Mastercard')]").click
    driver.find_element(id: 'card_number').send_keys($card_number)
    driver.find_element(id: 'cardholder_name').send_keys($card_holder_name)
    driver.find_element(id: 'verification_code').send_keys($verification_code)
    driver.find_element(xpath: "//button[@class='btn btn-primary']").click
end

def get_text(driver)
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    # wait.until {driver.title.display?}
    wait.until {driver.find_element(xpath: "//h1[contains(text(),'Menu')]").displayed?}
    current_url = driver.title
    # current_url_text = current_url.text
end

describe "automating a form" do
    it "submits a form" do
        driver = Selenium::WebDriver.for :chrome
        driver.navigate.to "http://www.practiceselenium.com/check-out.html"
        submit_form(driver)
        actual_verify = get_text(driver)
        expect(actual_verify).to  eql($expected)
        driver.quit
    end
end
    