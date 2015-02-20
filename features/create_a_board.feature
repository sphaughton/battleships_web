Feature: Creating a board
  Given I have started a new game
  As a player
  I want to have a board

  Scenario: Having a board
    Given I am on the board page
    Then I should see a board
