@facebook_test
Feature:
  As a professional dog walker
  So that I can charge the dog owners for the dogs I have walked this month
  I want to be able to see a summary of dogs walked and how much each owner owes for the month

Background:
  Given the following users exist:
  | last_name  | first_name | location              | gender | image                      | status  | phone_number  | email                           | description  | availability |
  | Wayne      | Bruce      | Bat Cave, Gotham City | male   | http://tinyurl.com/opnc38n | looking | (555)228-6261 | not_batman@wayneenterprises.com | I love bats  | not nights   |
  And I am on the home page
  And I log in with Facebook

Scenario: Seeing monthly report
  Given an appointment called DogWalk exists today for user "Bruce" with price "300" and dog "Spot"
  And I follow "Monthly Summary"
  Then I should be on the summary page
  Then I should see "Spot $300"

Scenario: No report if no appointments in past month
  Given skip
  When I follow "Monthly Summary"
  Then I should see "No services rendered during this month"
