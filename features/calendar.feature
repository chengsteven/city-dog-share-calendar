Feature: see appointments on calendar
  
  As a professional dog walker
  So that I can figure out my schedule
  I can view my calendar appointments for dog walking scheduled
  
Background:
  Given that I am on the calendar page
  Given that the visible date range is 10/24/2016 to 10/30/2016

Scenario: I see an appointment in the visible range
  Given an appointment called DogWalk exists today
  When I visit the Calendar page
  Then I should see an appointment
  
Scenario: I see no appointments if no appointment exists
  Given no appointments exist
  When I visit the Calendar page
  Then I should see no appointments

Scenario: I see no appointments if no appointments in visible range
  # Given an appointment called DogWalk for 11/1/2016 at 14:00 exists
  Given that an appointment called DogWalk exists 2 weeks from now
  When I visit the Calendar page
  Then I should not see an appointment called DogWalk
  # Then I should not see an appointment called DogWalk for 11/1/2016 2PM