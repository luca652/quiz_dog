class Quizmaster < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :gigs

  validates :name, :profile, presence: true
end
