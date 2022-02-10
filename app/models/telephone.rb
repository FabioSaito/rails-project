class Telephone < ApplicationRecord
  belongs_to :contact

  validates :category, presence: true
  validates :principal, inclusion: [true, false], uniqueness: { scope: :contact_id}
  validates :number, presence: true, uniqueness: { scope: :contact_id}
end
