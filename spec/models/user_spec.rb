require 'rails_helper'

RSpec.describe User, type: :model do
  context "create new" do
    it "should increment a new user to table" do
       expect(User.new.save).to be true
    end
  end
end
