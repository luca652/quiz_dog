class Quizmaster < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :gigs, dependent: :destroy
  has_many :venues, through: :gigs
  accepts_nested_attributes_for :gigs, allow_destroy: true

  validates :name, :profile, presence: true
end
