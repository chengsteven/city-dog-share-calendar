Feature: Login with Facebook credentials
  
  As a Professional Dog Walker
  So that I can manage my dog walking account
  I can log in with my Facebook credentials
  
  Background:
    Given I am on the login page
    And I follow "Login with Facebook"
  
  @omniauth_test_success
  Scenario: A user successfully signs in with Facebook
    Then I should see "Login successful."
    
  @omniauth_test_failure
  Scenario: A user unsuccessfully signs in with Facebook
    Then I should see "Failed."
