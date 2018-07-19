Feature: Transaction
As a user
So that I can monitor my spending
I need a transaction message

Background:
	Given the following transactions exist
	| account_id | amount | type | transaction_code |
	| 0722433420 | 2000  | withdraw | tdd236qr21 |
  | 0734467244 | 150 | send_money | truq22nsy6 |
  | 0728824240 | 3000 | deposit | tlss345uut5 |

Scenario: I can see all transactions
Given I am on transactions page
Then I should see "account id"
And I should see "amount"
And I should see "type"
And I should see "transaction code"
And I should see "0722433420"
And I should see "2000"
And I should see "withdraw"
And I should see "tdd236qr21"
