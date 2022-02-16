require "rails_helper"

RSpec.describe Contact, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).scoped_to(:user_id) }
    it { should have_many(:telephones) }
    it { should belong_to(:user) }
  end
end
