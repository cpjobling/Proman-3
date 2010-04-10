Feature: Application menu
  In order to be able to perform certain tasks
  As a user with a predefined role
  I want the system to present a different application menu depending on the user's role
  
  Scenario: Display standard menu to anonymous users
    Given "hector" is an anonymous user
    When I go to the homepage
    Then I should see "Home"
    And I should see "Login"
    And I should see "Register"

  Scenario: Display extra features menu to registered users
    Given "hector" a logged in user
    When I go to the homepage
    Then I should see "Home"
    And I should see "Logout"
    And I should not see "Register"

  Scenario: Display student features to student users
    Given "hector" a logged in user
    And "hector" has "student" role
    When I go to the homepage
    Then I should see "Home"
    And I should see "Logout"
    And I should not see "Register"
 
  Scenario: Display staff features to staff users
    Given "hector" a logged in user 
    And "hector" has "staff" role
    When I go to the homepage
    Then I should see "Home"
    And I should see "Logout"
    And I should not see "Register"

  Scenario: Display coordinator menu to coordinators
    Given "hector" a logged in user
    And "hector" has "coordinator" role
    When I go to the homepage
    Then I should see "Home"
    And I should see "Log out"
    And I should not see "Register"

  Scenario: Display all menu items to administrator
    Given "hector" a logged in user
    And "hector" has "admin" role
    When I go to the homepage
    Then I should see "Home"
    And I should see "Log out"
    And I should not see "Register"