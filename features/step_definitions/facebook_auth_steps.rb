# require 'uri'
# require 'cgi'
# require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
# require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

# Given(/^the following users exist:$/) do |table|
#   # table is a Cucumber::MultilineArgument::DataTable
#   pending # Write code here that turns the phrase above into concrete actions
# end

# When(/^my authentication fails$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

## Step Definitions for Facebook Login and Sign Up ##
require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

Given /the following users exist/ do |users_table|
  users_table.hashes.each do |user|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    new_user = User.create(user)
    new_user.uid = "12345"
    new_user.save
  end
end


Given /^I am logged in$/ do  
  visit "/auth/facebook?type=login"
end  

Given /^my authentication fails$/ do
  visit "/auth/failure"
end

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end
When /^(?:|I )follow the first "([^"]*)"$/ do |link|
  first(:link, link).click
end
When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^(?:|I )select "([^"]*)" from "([^"]*)"$/ do |value, field|
  select(value, :from => field, match: :first)
end