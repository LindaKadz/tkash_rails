require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe "db structure" do
  it { is_expected.to have_db_column(:account_id)  }
  it { is_expected.to have_db_column(:amount)  }
  it { is_expected.to have_db_column(:transaction_code)  }
  it { is_expected.to have_db_column(:type)  }
end

it "has valid factories" do
  expect(FactoryBot.build(:transaction)).to be_valid
end

describe "Transaction is associated to Account" do
it { is_expected.to belong_to(:account)}
end

describe "Unique transaction code" do
  it { is_expected.to validate_uniqueness_of(:transaction_code)}
end
end
