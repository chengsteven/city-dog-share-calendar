# Feature: Login with Facebook credentials
  
#   As a Professional Dog Walker
#   So that I can manage my dog walking account
#   I can log in with my Facebook credentials
  
#   Background:
#     Given I am on the login page
#     And I follow "Login with Facebook"
  
#   @omniauth_test_success
#   Scenario: A user successfully signs in with Facebook
#     Then I should see "Login successful."
    
#   @omniauth_test_failure
#   Scenario: A user unsuccessfully signs in with Facebook
#     Then I should see "Failed."



Feature: Users can use City Dog Share with their Facebook account
  As a City Dog Share user
  So that I can use the City Dog Share app
  I want to use my Facebook account to login to City Dog Share
  
Background:
  Given I am on the home page
	
Scenario: Sign up with Facebook if I am a new user
  When I follow "Sign Up"
  Then I should be on the users page for "Batman"


Scenario: Sign up with Facebook if I am an existing user
  Given the following users exist:
  | last_name  | first_name | location              | gender | image                      | status  | phone_number  | email                           | description  | availability |
  | Wayne      | Bruce      | Bat Cave, Gotham City | male   | http://tinyurl.com/opnc38n | looking | (555)228-6261 | not_batman@wayneenterprises.com | I love bats  | not nights   |
  When I follow "Sign Up"
  Then I should be on the home page
  And I should see "A user already exists with this facebook account."

Scenario: Sign up authentication fails
  Given I am on the homepage
  When I follow "Sign Up"
  And my authentication fails
  Then I should be on the home page
  And I should see "Something went wrong with the authentication. Please try again."

Scenario: Log in authentication fails
  Given I am on the homepage
  And I follow "Login with Facebook"
  And my authentication fails
  Then I should be on the home page
  And I should see "Something went wrong with the authentication. Please try again."

Scenario: Log in when I already have an account  
  Given the following users exist:
  | last_name  | first_name | location              | gender | image                      | status  | phone_number  | email                           | description  | availability |
  | Wayne      | Bruce      | Bat Cave, Gotham City | male   | http://tinyurl.com/opnc38n | looking | (555)228-6261 | not_batman@wayneenterprises.com | I love bats  | not nights   |
  And I am on the home page
  When I follow "Login with Facebook"
  Then I should be on the users page for "Batman"
