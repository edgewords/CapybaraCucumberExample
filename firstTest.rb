# This is a simple example of using Capybara with WebDriver
# WITHOUT Cucumber, so execute with ruby

require 'selenium-webdriver'
require 'capybara'

session = Capybara::Session.new :selenium # instantiate new firefox session object
#session = Capybara::Session.new :selenium_chrome # instantiate new chrome session object
session.visit("https://www.google.com") 
session.fill_in("q", :with => "Edgewords")
session.click_button("Google Search")

# now click the edgewords site link, 
# but restrict the serach to the search results DIV on the page
session.within(:css, '#search') do
    session.click_link("https://www.edgewordstraining.co.uk", match: first)
  end
  
sleep(2)