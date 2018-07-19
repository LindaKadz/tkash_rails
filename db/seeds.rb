# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.delete_all

5.times do |n|
  balance = rand(3000)
  pin = [1234, 5672, 3357].sample
  acc_number = 254721201379 + n

  FactoryBot.create(:account, balance: balance, pin: pin, account_number: acc_number)

end
