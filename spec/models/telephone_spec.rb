require 'rails_helper'

RSpec.describe Telephone, type: :model do
  fixtures :telephones
  
  describe "keep unique principal phone" do
    it "should change previous principal phone to false" do
      
      tel_new = {
        number: "8888-8888",
        category: "home",
        principal: true}

      Contact.first.telephones.create(tel_new)

      Telephone1 = Telephone.find(telephones(:tel1).id)

      expect(Telephone1.principal).to be false
    end
  end
end
