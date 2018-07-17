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
end
