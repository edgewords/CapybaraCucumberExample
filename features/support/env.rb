# This file is searched for automatically by cucumber
# It can contain defaults such as the Capybara driver you wish to use, timeouts etc.

require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'rspec/expectations'

#Capybara.default_driver = :selenium_chrome # for chrome
Capybara.default_driver = :selenium         # for firefox
Capybara.run_server = false

# Maximizes by default for firefox, but not chrome, but this is how to do it forcefully:
Capybara.page.driver.browser.manage.window.maximize

# Set timeout for web element find methods:
Capybara.default_max_wait_time = 5 # 2 secs is default
