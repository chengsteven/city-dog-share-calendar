Feature:
  As a professional dog walker
  So that I can charge the dog owners for the dogs I have walked this month
  I want to be able to see a summary of dogs walked and how much each owner owes for the month
  
# Background:
#   Given the following users exist:
#   | last_name  | first_name | location              | gender | image                      | status  | phone_number  | email                           | description  | availability |
#   | Wayne      | Bruce      | Bat Cave, Gotham City | male   | http://tinyurl.com/opnc38n | looking | (555)228-6261 | not_batman@wayneenterprises.com | I love bats  | not nights   |
#   And I am signed in as "Bruce Wayne"
#   And I am on the calendar page

# Scenario: Seeing monthly report
#   Given an appointment called DogWalk exists today for user "Bruce Wayne"
#   When I click on "Monthly Summary"
#   And I fill in "11/16"
#   And I click "Generate report"
#   Then I should be on the summary page
#   Then I should see "Dogwalk"

# Scenario: No report if no appointments in past motnh
#   When I click on "Monthly Summary"
#   And I fill in "11/16"
#   And I click "Generate report"
#   Then I should see "No services rendered during this month"
