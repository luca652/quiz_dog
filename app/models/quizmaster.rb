class Quizmaster < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :gigs
end
