class Venue < ApplicationRecord
  validates :name, :address, :phone_number, presence: true
  belongs_to :user
end
