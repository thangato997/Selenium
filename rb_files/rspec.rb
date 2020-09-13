require "selenium-webdriver"
require "webdrivers"
require "rspec"

$first_name = 'iTMS'
$last_name = 'Coaching'
$job_title = 'QA'
$date = '05/25/2025'
$expected_banner_text = 'The form was successfully submitted!'

  describe "automating a form" do
    it "submits a form" do
      driver = Selenium::WebDriver.for(:chrome)
      driver.navigate.to "https://itmscoaching.herokuapp.com/form"
      driver.find_element(id: 'first-name').send_keys($first_name)
      driver.find_element(id: 'last-name').send_keys($last_name)
      driver.find_element(id: 'job-title').send_keys($job_title)
      driver.find_element(id: 'radio-button-2').click
      driver.find_element(id: 'checkbox-2').click
      driver.find_element(css: 'option[value="2"]').click
      driver.find_element(id: 'datepicker').send_keys($date)
      driver.find_element(id: 'datepicker').send_keys :return
      driver.find_element(css: '.btn.btn-lg.btn-primary').click
      wait = Selenium::WebDriver::Wait.new(timeout: 10) # seconds
      wait.until { driver.find_element(class: 'alert') }
      expect(driver.find_element(class: 'alert').text).to eql('The form was successfully submitted!')
      driver.quit
    end
  end