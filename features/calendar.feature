Feature: see appointments on calendar
  
  As a professional dog walker
  So that I can figure out my schedule
  I can view my calendar appointments for dog walking scheduled
  
Background:
  Given that the visible date range is 10/24/2016 to 10/30/2016

Scenario: I see an appointment in the visible range
  Given an appointment for 10/30/2016 2PM exists
  When I visit the Calendar page
  Then I should see an appointment for 10/30/2016 2PM
  
Scenario: I see no appointments if no appointment exists
  Given no appointments exist
  When I visit the Calendar page
  Then I should see no appointments

Scenario: I see no appointments if no appointments in visible range
  Given an appointment for 11/1/2016 2PM exists
  When I visit the Calendar page
  Then I should not see an appointment for 11/1/2016 2PM