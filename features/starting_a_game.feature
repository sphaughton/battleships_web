Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    And I enter a name into the form
    When I press submit
    Then I should be taken to a new page "New Game"

  Scenario: No input into form
    Given I am on the homepage
    And I do not enter a name into the form
    When I press submit
    Then I should stay on the homepage

