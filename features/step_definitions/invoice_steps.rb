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

Given(/^an appointment called DogWalk exists today for user "([^"]*)" with price "([^"]*)" and dog "([^"]*)"$/) do |arg0, arg1, arg2|
  # pending # Write code here that turns the phrase above into concrete actions
  starttime = Time.now
  FullcalendarEngine::Event.create!(title: arg0,
                starttime: starttime,
                endtime: starttime + 1.hours,
                all_day: false,
                rate: arg1,
                dogs: arg2,
                description: 'wonderful',
                event_series_id: 1)
end