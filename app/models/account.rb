class Account < ApplicationRecord
  validates :balance, numericality: {only_integer: true}
  validates :pin, numericality: {only_integer: true}
  validates :balance, numericality: {greater_than: 0}
  validates :pin, length: { is: 4 }
  validates :account_number, numericality: {only_integer: true}
  validates :account_number, uniqueness: true
end
