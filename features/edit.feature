Feature: Edit
As a user
So that I can change my information
I need a edit page

Scenario: I can edit information
  Given the following accounts exist
      |account_number|balance|pin|
      |254712345678|2500|1234|
      |254713400383|2050|2351|
      |254714344428|1500|9876|
  When I go to edit "254714344428"
  Then I should see "Account Number"
  And I should see "Balance"
  And I should see "Pin"
