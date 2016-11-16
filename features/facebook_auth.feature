@facebook_test
Feature: Users can use City Dog Share with their Facebook account
  As a City Dog Share user
  So that I can use the City Dog Share app
  I want to use my Facebook account to login to City Dog Share
  
Background:
  Given I am on the home page
  Then I should see the Facebook icon

Scenario: Log in with Facebook if I am a new user
  When I log in with Facebook
  Then I should see "Welcome Bruce Wayne"

Scenario: Log in with Facebook if I am an existing user
  Given the following users exist:
  | last_name  | first_name | location              | gender | image                      | status  | phone_number  | email                           | description  | availability |
  | Wayne      | Bruce      | Bat Cave, Gotham City | male   | http://tinyurl.com/opnc38n | looking | (555)228-6261 | not_batman@wayneenterprises.com | I love bats  | not nights   |
  When I log in with Facebook
  Then I should see "Welcome Bruce Wayne"

Scenario: Log in authentication fails
  Given I am on the homepage
  And my authentication fails
  Then I should be on the home page
  # And I should see "Something went wrong with the authentication. Please try again."

Scenario: Log in when I already have an account  
  Given the following users exist:
  | last_name  | first_name | location              | gender | image                      | status  | phone_number  | email                           | description  | availability |
  | Wayne      | Bruce      | Bat Cave, Gotham City | male   | http://tinyurl.com/opnc38n | looking | (555)228-6261 | not_batman@wayneenterprises.com | I love bats  | not nights   |
  And I am on the home page
  When I log in with Facebook
  Then I should see "Welcome Bruce Wayne"

