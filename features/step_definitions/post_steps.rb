Given(/^there is a post containing "(.*?)"$/) do |post|
  Post.create(title: "Hello", text: post)
end

When(/^I am on the homepage$/) do
  visit '/posts'
end

Then(/^I should see "(.*?)"$/) do |post|
  expect(page).to have_content(post)
end

Given(/^I follow "(.*?)"$/) do |new_post|
	click_link(new_post)
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in(field, with: value)
end

Given(/^I press "(.*?)"$/) do |button|
	click_button(button)
end