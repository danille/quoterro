Feature: Quotes List
  In order to be able to keep track of quotes
  As a user
  I want to be able to keep a list of quotes

  Scenario: Listing quotes
    Given I have populated my list with several quotes
    When I visit the homepage
    Then I should see list of my quotes

  Scenario: Adding new quote
    Given I visit the homepage
    When I click Add quote button
    And I submit filled in new quote form
    Then I should see a new quote in the listing