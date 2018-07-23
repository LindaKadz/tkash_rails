Feature: Testing happy and sad path
As a user
So that I can avoid
I should

Background:
Given the following accounts exist
|account_number|balance|pin|
|254712345678|2500|1234|
|254713400383|2050|2351|
|254714344428|1500|9876|

Scenario: Edit account successfully
  Given I am on edit "254712345678" page
  Then I change "account_pin" to "4321"
  And I submit the changes
  Then the new pin of "254712345678" should be "4321"

Scenario: Edit with wrong details
  Given I am on edit "254714344428" page
  Then I change "account_pin" to " "
  And I submit the changes
  Then I should see "Pin cannot be blank"
  And pin of "254714344428" should remain "9876"
