require 'rails_helper'

RSpec.describe ClassRoom, type: :model do
  context "validations" do 
    it { is_expected.to validate_presence_of(:title)  }

  end

  context "relations" do 
    it { is_expected.to have_many(:students).dependent(:restrict_with_error)  }
  end

  context "database structure" do 
    it { is_expected.to have_db_column(:title).of_type(:string)}
  end
end
