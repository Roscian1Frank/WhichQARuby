require 'selenium-webdriver'
require 'cucumber'
require 'require_all'

require_all 'lib'

Before do |scenario|
    @browser = Browser.new(ENV['DRIVER'])
    @browser.delete_cookies
    @browser.set_window_size(1420,1024)
end

After do |scenario|
    @browser.driver.quit
end
