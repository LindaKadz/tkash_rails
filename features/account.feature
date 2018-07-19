Feature: Accounts
  As a user
  So that I can manage my finances
  I want to access my account

Background:
  Given the following accounts exist
      |account_number|balance|pin|
      |254712345678|2500|1234|
      |254713400383|2050|2351|
      |254714344428|1500|9876|
      |254715382178|1400|1997|
      |254716346348|1700|8759|

Scenario: Listing all accounts
  Given I am on the accounts page
  Then I should see "balance"
  And I should see "account number"
  And I should see "pin"
  And I should see "1400"
  And I should see "254714344428"
  Then I should see "balance"
  And I should see "pin"
  And I should see "account number"

Scenario: Show a single account

  When I go to the "254712345678" details
  Then I should see "254712345678"
  And I should see "1234"
  And I should see "2500"

  When I go to the "254713400383" details
  Then I should see "254713400383"
  And I should see "2050"
  And I should not see "254712345678"
