Feature: Starting a game
	In order to play Rock, Paper, Scissors
	As a nostalgic player
	I want to start a new game

	Scenario: Entering your name
		Given I am on the homepage
		When I enter my name "Charlie"
		Then I press "submit"
		Then I should see "Ok, Charlie, Please choose your item!"