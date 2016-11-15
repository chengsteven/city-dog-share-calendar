require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

When(/^I visit the calendar page$/) do
 visit "/kalendar"
end

Given(/^I am signed in as "Bruce Wayne"$/) do
  click_link('Login with Facebook')
end


Given(/^an appointment called ([^"]*) exists today for user "([^"]*)"$/) do |arg1, arg2|
  starttime = Time.now
  FullcalendarEngine::Event.create!(title: arg1,
                starttime: starttime,
                endtime: starttime + 1.hours,
                all_day: false,
                description: 'wonderful',
                event_series_id: 1,
                user_id: User.where(first_name: arg2).first.id)
end