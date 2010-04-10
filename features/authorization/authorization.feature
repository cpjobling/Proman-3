Feature: Authorization
  In order to be able to perform certain tasks
  As a user with a predefined role
  I want the system to present a different user interface for each predefined role
  
  Scenario: Display standard menu to anonymous users
    Given "Guest" is an anonymous user
    When I go to the home page
    Then I should see the standard menu

  
