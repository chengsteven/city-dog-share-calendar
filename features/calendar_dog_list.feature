Feature:
  As a professional dog walker
  So that I can walk dogs
  I want to be able to see which dogs I am responsible for walking

Background:
   Given the following users exist:
   | last_name  | first_name | location              | gender | image                      | status  | phone_number  | email                           | description  | availability |
   | Wayne      | Bruce      | Bat Cave, Gotham City | male   | http://tinyurl.com/opnc38n | looking | (555)228-6261 | not_batman@wayneenterprises.com | I love bats  | not nights   |
   And I am signed in as "Bruce Wayne"
   And I am on the calendar page

Scenario: Add a dog and see it in the list
    Given skip
    Given an appointment called DogWalk exists today for user "Bruce Wayne"
    When I click on the DogWalk event
    And I click edit
    And I add a dog called Alfred with owner Rachel
    Then I should see Alfred

Scenario: If there are no dogs, I should see no dogs
    Given skip
    Given an appointment called DogWalk exists today for user "Bruce Wayne"
    When I click on the DogWalk event
    Then I should see no dogs