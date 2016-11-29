require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

module WithinHelpers
  def with_scope(locator)
    locator ? within(*selector_for(locator)) { yield } : yield
  end
end
World(WithinHelpers)

Given(/^that I am on the calendar page$/) do
  visit "/"
end

Given(/^that the visible date range is (\d+)\/(\d+)\/(\d+) to (\d+)\/(\d+)\/(\d+)$/) do |arg1, arg2, arg3, arg4, arg5, arg6|
  me = "confused" # Write code here that turns the phrase above into concrete actions
end

Given(/^an appointment called ([^"]*) exists today$/) do |arg0|
  # pending # Write code here that turns the phrase above into concrete actions
  starttime = Time.now
  FullcalendarEngine::Event.create!(title: arg0,
                starttime: starttime,
                endtime: starttime + 1.hours,
                all_day: false,
                description: 'wonderful',
                event_series_id: 1)
end

When(/^I visit the Calendar page$/) do
  visit "/"
end

Then(/^I should see an appointment called ([^"]*)$/) do |title|
# Then(/^I should see an appointment called ([^"]*) for (\d+)\/(\d+)\/(\d+) at (\d+)\:(\d+)$/) do |arg0, arg1, arg2, arg3, arg4, arg5|
  # pending # Write code here that turns the phrase above into concrete actions
  page.should have_content(title)
  # page.should have_conent(hour + ":" + minute)
end

Given(/^no appointments exist$/) do
  # Appointment.delete_all
  # pending # Write code here that turns the phrase above into concrete actions
  FullcalendarEngine::Event.delete_all
end

Then(/^I should see no appointments$/) do
  # pending # Write code here that turns the phrase above into concrete actions
  expect{ (page.find('div.fc-event')) }.to raise_error
end

# Then(/^I should not see an appointment called ([^"]*) for (\d+)\/(\d+)\/(\d+) at (\d+)\:(\d+)$/) do |arg0, arg1, arg2, arg3, arg4, arg5|
#   # pending # Write code here that turns the phrase above into concrete actions
#   page.should_not have_content(arg0)
# end

Given(/^that an appointment called ([^"]*) exists (\d+) weeks from now$/) do |title, num_weeks|
  starttime = Time.now + num_weeks.to_i.weeks
  FullcalendarEngine::Event.create!(
                title: title,
                starttime: starttime,
                endtime: starttime + 1.hours,
                all_day: false,
                description: 'wonderful'
                )
end

Then(/^I should not see an appointment called ([^"]*)$/) do |title|
  page.should_not have_content(title)
end

Then(/^I should see an appointment$/) do
  # pending # Write code here that turns the phrase above into concrete actions
  expect{ (page.find('div.fc-event')) }.not_to raise_error
end

#------------------------ TO ADD -----------------------------------------
Given(/^I specify the Title as "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I specify the Description as "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I specify the Start Time as "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I specify the End Time "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I specify to repeat every "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click on the DogWalk event$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click edit$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I add a dog called Alfred with owner Rachel$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see Alfred$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see no dogs$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click on "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fill in "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end