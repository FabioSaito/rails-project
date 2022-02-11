class UniqueMainPhone < ActiveModel::Validator
  def validate(record)
    first_contact_telephone = Telephone.where(contact_id: record.contact_id).count.zero?
    if record.principal == true && !first_contact_telephone
      Telephone.where(principal: true, contact_id: record.contact_id).first.update(principal: false)
    end
  end
end

class Telephone < ApplicationRecord
  belongs_to :contact

  validates :category, presence: true
  validates :principal, inclusion: [true, false]
  validates :number, presence: true, uniqueness: { scope: :contact_id}

  validates_with UniqueMainPhone
end

