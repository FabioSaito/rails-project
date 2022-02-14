require "rails_helper"

RSpec.describe Contact, type: :model do
  context "requisites" do
    # let!(:base_user) {
    #   User.create!(
    #     name: "Joao",
    #     age: 25,
    #     biography: "Long text with a lot of words."
    #   )
    # }
    # usar operador bang -> !
    # usar fixtures 
    subject! {
      User.first.contacts.create!(
        name: "Carlos",
        birthdate: "2022-01-10"
      )
    }

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid if not unique" do
      duplicate_contact = {
        name: "Carlos",
        birthdate: "2022-01-10"
      }
      expect(User.first.contacts.new(duplicate_contact).save).to be false
    end

    it "is valid with same name if not same user" do
      duplicate_contact = {
        name: "Carlos",
        birthdate: "2022-01-10"
      }
      User.create(
        name: "Pereira",
        age: 35,
        biography: "A lot of words here."
      )
      expect(User.second.contacts.new(duplicate_contact).save).to be true
    end
  end
end
