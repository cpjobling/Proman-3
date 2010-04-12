Feature: Information pages
  In order to find out more about Proman
  As a user of visitor
  I want to be able to visit an about Proman page
  
  Scenario: Visit the about us page
    Given "chris" is an anonymous user
    When I go to the homepage
    And I follow "About"
    Then I should be on the about page
    And I should see "About Proman" within "#header h2"

  Scenario: Visit the terms of service page
    Given "chris" is an anonymous user
    When I go to the homepage
    And I follow "Terms of Service"
    Then I should be on the terms of service page
    And I should see "Terms of Service" within "#header h2"
      
  Scenario: Visit the contact us page
    Given "chris" is an anonymous user
    When I go to the contact us page
    And I follow "Contact us"
    Then I should be on the contact us page
    And I should see "Contact Us" within "#header h2"
      
  Scenario: Visit the software license page
    Given "chris" is an anonymous user
    When I go to the software license page
    And I follow "License"
    Then I should be on the software license page
    And I should see "Apache License, Version 2.0" within "#header h2" 
