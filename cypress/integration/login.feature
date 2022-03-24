Feature: Login through Accounts Module

  As a Direct customer
  I want to be able to login to the main Direct application
  So I can use the appropriate services available

  Acceptance Criteria
  ===================
  + When logged in successfully, the cookie [cookie_name] is set

  Scenario: Login using the Accounts Module
    Given I have an existing verified account
    When I submit my username and password credentials
    Then I should be navigated to the "Dashboard" page


#  Scenario Outline: Unsuccessful login using the Accounts module
#    Given I have an existing verified account
#    When I incorrectly enter my username <username> and password <password>
#    Then I should see the error message <error_message>
#
#    Examples: Invalid username
#      | username            | password          | error_message                              |
#      | incorrectUsername1  | testPassword123*  | Pleas enter a correct username or password |
#
#    Examples: Invalid password
#      | username            | password          | error_message                              |
#      | tom.jones@gmail.com | badPassword123*   | Pleas enter a correct username or password |
#
#  Scenario: Incomplete entry of username and password
#    When I enter only partial login information
#    Then the Submit button should be disabled
#    And I should see an error message saying mandatory information needs to be entered
