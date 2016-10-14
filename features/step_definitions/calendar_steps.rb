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

Given(/^that the visible date range is (\d+)\/(\d+)\/(\d+) to (\d+)\/(\d+)\/(\d+)$/) do |arg1, arg2, arg3, arg4, arg5, arg6|
  skip_this_scenario
  # pending # Write code here that turns the phrase above into concrete actions
end

Given(/^an appointment for (\d+)\/(\d+)\/(\d+) (\d+)PM exists$/) do |arg1, arg2, arg3, arg4|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I visit the Calendar page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see an appointment for (\d+)\/(\d+)\/(\d+) (\d+)PM$/) do |arg1, arg2, arg3, arg4|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^no appointments exist$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see no appointments$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should not see an appointment for (\d+)\/(\d+)\/(\d+) (\d+)PM$/) do |arg1, arg2, arg3, arg4|
  pending # Write code here that turns the phrase above into concrete actions
end