Feature: Application chrome
  In order for Proman to be easy to use and navigate
  As a user
  I expect to see certain things on each page

  Background:
    Given "hector" is an anonymous user
    When I go to the homepage
      
  Scenario: header should have a logo
    Then I should see the site logo

  Scenario: header should hold the page title
    Then I should see "Welcome to Proman" within "#header h2"

  Scenario: header has a navigation menu
    Then I should see "Register" within "#navigation"

  Scenario: header has a navset menu
    Then I should see "Home" within "#navset"
  
  Scenario: footer contains a slogan
    Then I should see "If I have seen further"

  Scenario: footer contains a copyright notice
    Then I should see "Copyright" within "#footer" 
  
  Scenario: page contains a link to the terms of service
    Then I should see "Terms of Service"
  
  Scenario: page contains a link to the contact us page
    Then I should see "Contact Us"

  Scenario: page contains a link to the terms of service page
    Then I should see "Terms of Service"
      
  Scenario: page contains a link to the about page
    Then I should see "About"

  Scenario: copyright notice has a link to Swansea University
    Then I should see "Swansea University" within "#footer p a" 
    
  Scenario: side bar contains sidebar items
    Then I should see /^.+$/ within "#sidebar h3"
    And I should see /^.+/ within "#sidebar p"
    

  


  
