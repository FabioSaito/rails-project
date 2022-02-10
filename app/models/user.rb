class User < ApplicationRecord
  has_many :contacts
  has_many :telephones, through: :contacts
  validates :name, presence: true, uniqueness: true
end
