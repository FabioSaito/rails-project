def unique_main_telephone
  Telephone.where(principal: true, contact_id: contact_id).update_all(principal: false)
end


class Telephone < ApplicationRecord
  belongs_to :contact

  validates :category, presence: true
  validates :principal, inclusion: { in: [true, false] }
  validates :number, presence: true, uniqueness: { scope: :contact_id}

  before_save :unique_main_telephone, if: :principal
end
