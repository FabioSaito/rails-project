require "rails_helper"

RSpec.describe Telephone, type: :model do
  fixtures :telephones
  describe 'requisite' do
    it { should validate_presence_of(:number) }
    it { should validate_presence_of(:category) }
    it { should validate_uniqueness_of(:number).case_insensitive.scoped_to(:contact_id) }
    it { should belong_to(:contact) }
  end
  
  describe "add new principal telephone" do
    it "should change principal telephone" do
      expected_change = {
        before_new_principal: true,
        after_new_principal: false,
        new_principal: true
      }

      test_change = {
        before_new_principal: false,
        after_new_principal: false,
        new_principal: false  
      }
      
      tel_new = {
        number: "8888-8888",
        category: "home",
        principal: true
      }

      test_change[:before_new_principal] = Telephone.find(telephones(:tel1).id).principal
      new_principal_tel = Contact.first.telephones.create(tel_new)
      test_change[:after_new_principal] = Telephone.find(telephones(:tel1).id).principal
      test_change[:new_principal] = new_principal_tel.principal
      expect(test_change).to eq(expected_change)
    end
  end
end
