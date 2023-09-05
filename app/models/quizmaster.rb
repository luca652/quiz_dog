class Quizmaster < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :gigs, inverse_of: :quizmaster
  accepts_nested_attributes_for :gigs

  validates :name, :profile, presence: true
end
