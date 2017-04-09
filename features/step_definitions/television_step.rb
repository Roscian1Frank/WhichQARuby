Given(/^I am on the which website$/) do
  	@television_page = @browser.open_page('http://www.which.co.uk/reviews/televisions')
  	@television_page.verify_pages
  end

When(/^I select screen size "([^"]*)"$/) do |size|
	@television_page.screenSize
	end

Then(/^I check the correct "([^"]*)" result are displayed$/) do |result|
 	@television_page.screenSizeFound
	end

When(/^I select screen type "([^"]*)"$/) do |arg1|
	@television_page.screenType
	end

When(/^I search television by "([^"]*)"$/) do |arg1|
  @television_page.sortBy
end

Then(/^I check the correct "([^"]*)" result$/) do |arg1|
  @television_page.lowestPrice
end

