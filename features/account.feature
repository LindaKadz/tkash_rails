Feature: Accounts
  As a user
  So that I can manage my finances
  I want to access my account

Scenario: Listing all accounts
  Given I am on the accounts page
  Then I should see "balance"
  And I should see "pin"
  And I should see "account number"
