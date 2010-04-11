Feature: About page
  In order to find out more about Proman
  As a user of visitor
  I want to be able to visit an about Proman page
  
  Scenario: Visit the about page
  Given "chris" is an anonymous user
  When I go to the homepage
  And I follow "About"
  Then I should be on the about page
  And I should see "About Proman" within "div.content h2"

  
