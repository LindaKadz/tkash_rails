Feature: Transaction
As a user
So that I can monitor my spending
I need a transaction message

Background:
Given the following accounts exist
 |account_number|balance|pin|
 |254722433420|2500|1234|
 |254734467244|2050|2351|
 |254728824240|1500|9876|

And the following transactions exist
	| account | amount | type | transaction_code |
	| 254722433420 | 2000  | withdraw | tdd236qr21 |
  | 254734467244 | 150 | send_money | truq22nsy6 |
  | 254728824240 | 3000 | deposit | tlss345uut5 |

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
