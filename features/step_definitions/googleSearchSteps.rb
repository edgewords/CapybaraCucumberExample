
Given("That I am on the Google Search Page") do
    visit("https://www.google.com") 

    # Example below of returning webdriver object & performing webdriver methods
    #page.driver.browser.find_element(name: 'q').send_keys('hello')
  end
  
  When("I search for {string}") do |string|
    fill_in("q", :with => string)
    click_button("Google Search")
  end
  
  Then("{string} appears in the results") do |string|
    expect(page).to have_content(string)
  end