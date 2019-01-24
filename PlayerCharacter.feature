Feature: PlayerCharacter
	In order to play the game
	As a human character
	I want my character attributes correctly represented

Scenario: Taking no damage when hit doesn't effect health
	Given I am a new player
	When I take 0 damage
	Then My health should now be 100

Scenario: Starting health is reduced when hit
	Given I am a new player
	When I take 40 damage
	Then My health should now be 60

	Scenario: Taking too much damage result in player death
	Given I am a new player
	When I take 100 damage
	Then I should be dead