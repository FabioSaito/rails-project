require "rails_helper"

RSpec.describe User, type: :model do
  context "requisites" do
    subject {
      described_class.new(
        name: "Joao",
        age: 25,
        biography: "Long text with a lot of words.",
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
      User.new(
        name: "Joao",
        age: 25,
        biography: "Long text with a lot of words.",
      ).save

      expect(subject.save).to be false
    end
  end
end
