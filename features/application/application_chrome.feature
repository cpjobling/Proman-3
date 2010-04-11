Feature: Application chrome
  In order for proman to be easy to use and navigate
  As a user
  I expect to see certain things on each page


  Background:
    Given "hector" is an anonymous user
    When I go to the homepage
      
  Scenario: page should have structure
    Then page should have header
    And page should have content
    And page should have a sidebar
    And page should have a footer

      
  Scenario: header should have a logo
    Then I should see a logo

  Scenario: header should hold the page title
    Then I should see the page title

  Scenario: header has a navigation menu
    Then I should see a navigation menu

  Scenario: header has a navset menu
    Then I should see a navset menu
  
  Scenario: footer contains a slogan
    Then I should see a slogan

  Scenario: footer contains a copyright notice
    Then I should see a copyright notice 
  
  Scenario: footer contains a link to the terms of service
    Then I should see a link to the terms of service
  
  Scenario: copyright notice has a link to Swansea University
    Then I should see a link to Swansea University 
    
  Scenario: side bar contains sidebar items
    Then I should see sidebar items
    

  


  
