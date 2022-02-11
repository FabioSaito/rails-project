require "rails_helper"

RSpec.describe User, type: :model do
  describe 'requisites' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
    it { should have_many(:contacts) }
  end
end
