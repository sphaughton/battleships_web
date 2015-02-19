Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    Then I should see "What's your name?"
    When I press submit
    Then I should be taken to a new page "New Game"

