require 'capybara'

Given("I am on the YouTube home page") do
  visit 'http://www.youtube.com'
end

When("I search for {string}") do | search_term |
  fill_in 'search_query', :with => search_term + "\n"
  find_button('search-icon-legacy').click
end

Then("videos of large rodents are returned") do
  expect(page).to have_content("Largest Rodent")
  page.save_screenshot('screenshot.png')
end