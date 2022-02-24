Feature: Subscription

  Background: User visits the home page
    Given I visit the home page

  Scenario: User would like to subscribe for a MONTHLY PASS package
    When I open related page to register One Month package
    Then I should be on the create account page
    And  I fullfill account fields correctly
    When I finish create account
    Then I should be on the payment method page
    And I open credit card payment form 
    And I fullfill payment form with incorrect card infos
    When I finish confirmation of my payment
    Then I should see my transaction has been denied
    

