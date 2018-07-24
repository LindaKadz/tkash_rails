Feature: Creating a new accounts
As a user
So that I can access my accounts
I need to create an account

Scenario: Viewing create account page
  Given I am on the accounts page
  Then I should see "create account" link
  When I click on create account link
  Then I should see "Account Number"
  And I should see "Balance"
  And I should see "Pin"

Scenario: Unsuccessful creating of account
  Given I am on the create account page
  When I put "account_account_number" as " "
  Then I should see "Account number cannot be empty"
