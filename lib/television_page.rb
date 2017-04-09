require "test/unit"

class TelevisionPage Test::Unit::TestCase

  def initialize(driver)
    @driver = driver
  end

  def verify_pages
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { @driver.find_element(:xpath => 'html/body/div[2]/div/header/div[1]/div/nav/ul/li/a') }
  end

  def screenSize
    element = @driver.find_element(:xpath => "//*[@data-reactid='54']")
    element.click
    #wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    #wait.until {@driver.find_element(:xpath => "//*[@data-reactid='54']")}
    #@driver.find_element(:xpath => "//*[@data-reactid='54']").click  
  end

  def screenSizeFound
    element = @driver.find_element(:xpath => "(//*[@class='_2NkKN'])[1]")  
    element.displayed? 
  end

  def screenType
    element = @driver.find_element(:xpath => "//*[@data-reactid='373']")  
    element.click
  end

  def sortBy
    dropDownMenu = @driver.find_element(:xpath, "(//*[@class='_1D9wd ztPan'])[3]")
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:text, 'Price (low to high)')
  end
  def lowestPrice
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(:xpath => "//*[@class='_3iJwn'][contains(.,'£99.99')]")}
    element = @driver.find_element(:xpath => "//*[@class='_3iJwn'][contains(.,'£99.99')]")  
    element.displayed? 
    end

end