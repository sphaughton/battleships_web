Given(/^I am on the homepage$/) do
  visit('/')
end

Then(/^I should see "(.*?)"$/) do |name|
  fill_in('name', :with => @name)
end

When(/^I press submit$/) do
  click_button('submit')
end

Then(/^I should be taken to a new page "(.*?)"$/) do |newgame|
  pending
end

end
