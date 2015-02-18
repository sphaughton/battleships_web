Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I follow "(.*?)"$/) do |newgame|
  click_link(newgame)
end

Then(/^I should see "(.*?)"$/) do |user|
  fill_in('name', :with => @user)
  click_button('submit')
end
