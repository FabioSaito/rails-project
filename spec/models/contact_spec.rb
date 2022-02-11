require "rails_helper"

RSpec.describe Contact, type: :model do
  describe 'requisites' do
    subject { Contact.create!(user_id: 1) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).scoped_to(:user_id) }
  end
end
