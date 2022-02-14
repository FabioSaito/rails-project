require "rails_helper"

RSpec.describe Telephone, type: :model do
  fixtures :telephones

  describe "change principal phone" do
    it "should change principal phone" do
      expect_change = {
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
      expect(test_change).to eq(expect_change)
    end
  end
end
