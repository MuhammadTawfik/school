require 'rails_helper'

RSpec.describe Student, type: :model do

  context "validations" do 
    it { is_expected.to validate_presence_of(:name)  }
    it { is_expected.to validate_presence_of(:email)  }
    it { is_expected.to validate_presence_of(:class_room)  }

  end

  context "relations" do 
    it { is_expected.to belong_to(:class_room).touch(true) }
  end

  context "database structure" do 
    it { is_expected.to have_db_column(:name).of_type(:string)}
    it { is_expected.to have_db_column(:email).of_type(:string)}
    it { is_expected.to have_db_column(:class_room_id).of_type(:integer)}

    it {is_expected.to have_db_index(:class_room_id) }
  end
end
