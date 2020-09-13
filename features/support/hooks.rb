def validate_params_exist
  raise "❌  ERROR: Missing param SERVER_URL." if ENV['SERVER_URL'].nil?
  raise "❌  ERROR: Missing param BROWSER." if ENV['BROWSER'].nil?
  if ENV['REPORT']
    raise "❌  ERROR: Missing param TESTSUITE." if ENV['TESTSUITE'].nil?
    raise "❌  ERROR: Missing param TESTCASE_REPORT_NAME." if ENV['TESTCASE_REPORT_NAME'].nil?
    $report_path = "Reports/#{ENV['TESTSUITE']}"
    $testcase_report_name = ENV['TESTCASE_REPORT_NAME']
  end
end

# #Create a directory for storing snapshot
# dir_path = "C:\Users\thang\Desktop\Selenium\features\screenshots"
# puts dir_path
# # unless Dir.exist?(dir_path)
# #     Dir.mkdir(dir_path,0777)
# #     puts "=========Directory is created at #{C:\Users\thang\Desktop\Selenium\features\screenshots}"
# # else
# #     puts "=========Directory is exist at #{C:\Users\thang\Desktop\Selenium\features\screenshots}"
# # end

#   #Create a directory for storing snapshot
#   dir_path = Dir.pwd+'/'+'features'+'/'+'screenshots'
#   puts dir_path
  
#   #Run after each scenario
#   After do |scenario|
#     #Check, scenario is failed?
#     if(scenario.failed?)
#            time = Time.now.strftime('%Y_%m_%d_%Y_%H_%M_%S_')
#            name_of_scenario = time + scenario.name.gsub(/\s+/, "_").gsub("/","_")
#            puts "Name of snapshot is #{name_of_scenario}"
#            file_path = File.expand_path(dir_path)+'/'+name_of_scenario +'.png'
#            puts file_path
#           #  page.driver.browser.save_screenshot file_path
#            $driver.save_screenshot(file_path)
#            puts "Snapshot is taken"
#       puts "#===========================================================#"
#       puts "Scenario:: #{scenario.name}"
#       puts "#===========================================================#"
#     end
#   end


at_exit do
  # quite driver
  $driver.close()
  if ENV['REPORT']
    begin
      # validateReport
      time = Time.now.getutc
      ReportBuilder.configure do |config|
        config.report_path = "#{$report_path}/#{$testcase_report_name}"
        config.input_path = "#{$report_path}/#{$testcase_report_name}.json"
        config.report_types = [:json, :html]
        config.color = 'blue'
        config.additional_info = {
          'Browser' => $browser_type,
          'Platform' => $platform ,
          'OS Version' => $os_version,
          'Report Generated' => time
        }
      end
      options = { report_title: "INFODation - Test Management System" }
      ReportBuilder.build_report options
    rescue Exception => e
      puts e.message
      Process.exit( 0 )
    end
  end
end
