require 'rails_helper'

RSpec.describe Account, type: :model do
  describe "db structure" do
  it { is_expected.to have_db_column(:balance)  }
  it { is_expected.to have_db_column(:pin)  }
  it { is_expected.to have_db_column(:account_number)  }
  it { is_expected.to have_db_column(:id)  }
end 
end
