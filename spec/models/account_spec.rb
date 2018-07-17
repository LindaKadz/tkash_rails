require 'rails_helper'

RSpec.describe Account, type: :model do
  describe "db structure" do
  it { is_expected.to have_db_column(:balance)  }
  it { is_expected.to have_db_column(:pin)  }
  it { is_expected.to have_db_column(:account_number)  }
  it { is_expected.to have_db_column(:id)  }
end

 it "has valid factories" do
   expect(FactoryBot.build(:account)).to be_valid
 end

 describe "Balance Validation" do
   context "Account balance" do
   it { is_expected.to validate_numericality_of(:balance).only_integer}
   it { is_expected.to validate_numericality_of(:balance).is_greater_than(0)}
   end

  context "Account Pin" do
   it { is_expected.to validate_numericality_of(:pin).only_integer}
   
  end

  context "Account Number" do
    it { is_expected.to validate_numericality_of(:account_number).only_integer}
    it { is_expected.to validate_uniqueness_of(:account_number)}
  end
 end
end
