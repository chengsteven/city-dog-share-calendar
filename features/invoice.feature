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
  And I am on the calendar page
  Then I should see "Welcome"

Scenario: Seeing monthly report
  Given the following appointments exist:
  | title    | starttime | endtime              | rate | dogs                                                                                    | user_id | description     |
  | DogWalk  | Today 3pm | Today 4pm            | 25   | [{ "dog_name" : "spot", "dog_owner" : "steven" }]                                     | 1       | Individual walk |
  | DWalk2   | Today 6pm | Today 7pm            | 10   | [{ "dog_name" : "spot" }, { "dog_name" : "fluffy" }, { "dog_name" : "dot" }]         | 1       | Walking 3 dogs  |
  When I go to the summary page
  Then I should see "Spot"
  Then I should see "Fluffy"
  Then I should see "Dot"
  Then I should see "Total: $55"
