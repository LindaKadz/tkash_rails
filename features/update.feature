Feature: Update Pin
 As a user
 So that I can see my new Pin
 I need to go back to accounts page

 Background:
  Given the following accounts exist
  |account_number|balance|pin|
  |254712345678|2500|1234|
  |254713400383|2050|2351|
  |254714344428|1500|9876|

Scenario: I can go back to my account
  Given I am on edit "254713400383" page
  Then I change "account_pin" to "3651"
  And I submit the changes
  Then the new pin of "254713400383" should be "3651"
