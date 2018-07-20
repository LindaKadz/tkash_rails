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
