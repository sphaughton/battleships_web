Given(/^I am on the homepage$/) do
  visit('/')
end

And(/^I enter a name into the form$/) do
  fill_in('player_name', :with => @name)
end

When(/^I press submit$/) do
  click_button('submit')
end

Then(/^I should be taken to a new page "(.*?)"$/) do |newgame|
  visit('/newgame')
end

Given(/^I do not enter a name into the form$/) do
  fill_in('player_name', :with => nil)
end

Then(/^I should stay on the homepage$/) do
  visit('/')
end

Given(/^I am on the board page$/) do
  visit('/newgame')
end

Then(/^I should see a grid$/) do
  pending # express the regexp above with the code you wish you had
end