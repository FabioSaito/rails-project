require 'rails_helper'

RSpec.describe Contact, type: :model do
  context "create new" do
    it "should not increment a new contact to table" do
       expect(Contact.new.save).to be false
    end

    it "should increment a new contact to table" do
      User.create
      expect(User.first.contacts.new.save).to be true
    end
  end
end
