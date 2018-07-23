Given("I am on the accounts page") do
 visit '/accounts'
end

Then("I should see {string}") do |value|
  expect(page).to have_content value
end

Given("the following accounts exist") do |table|
  table.hashes.each{|hash| FactoryBot.create(:account, hash)}
end

When("I go to the {string} details") do |string|
  account = Account.find_by_account_number string
  visit "/accounts/#{account.id}"
end

Then("I should not see {string}") do |string|
 expect(page).not_to have_content string
end

When("I click on {string}") do |string|
 click_link string
end

Given("the following transactions exist") do |table|
  table.hashes.each do |hash|
    account = Account.find_by_account_number (hash["account"])
    hash["account"] = account
    FactoryBot.create(:transaction, hash)
  end
end

Given("I am on transactions page") do
  visit '/transaction'
end

When("I go to edit {string}") do |string|
  account = Account.find_by_account_number string
  visit "/accounts/edit/#{account.id}"
end

Then("I should see a form") do
  expect(page).to have_content
end

Given("I am on edit {string} page") do |string|
  acc = Account.find_by_account_number string
  visit "/accounts/edit/#{acc.id}"
end

Given("I am on the edit page for {int}") do |int|
  acc = Account.find_by_account_number int
  visit "/accounts/edit/#{acc.id}"
end

Then("I change {string} to {string}") do |field, value|
  fill_in field, with:value
end

Then("I submit the changes") do
  click_button "Update Account"
end

Then("the new pin of {string} should be {string}") do |account, new_pin|
  acc = Account.find_by_account_number account
  expect(acc.pin).to eq new_pin.to_i
end

Then("pin of {string} should remain {string}") do |string, string2|

end
