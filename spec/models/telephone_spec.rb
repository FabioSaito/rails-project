require "rails_helper"

RSpec.describe Telephone, type: :model do
  fixtures :telephones
  describe 'validations' do
    it { should validate_presence_of(:number) }
    it { should validate_presence_of(:category) }
    it { should validate_uniqueness_of(:number).case_insensitive.scoped_to(:contact_id) }
    it { should belong_to(:contact) }
  end
  
  describe "when adding new principal telephone" do
    it "should change principal telephone" do
      tel_new = {
        number: "8888-8888",
        category: "home",
        principal: true
      }

      expect(Telephone.find(telephones(:tel1).id).principal).to be true
      new_principal_tel = Contact.first.telephones.create(tel_new)
      expect(Telephone.find(telephones(:tel1).id).principal).to be false
      expect(new_principal_tel.principal).to be true
    end
  end
end
