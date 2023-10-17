class Gig < ApplicationRecord
  belongs_to :venue
  belongs_to :quizmaster

  validates :venue_id, uniqueness: { scope: :quizmaster_id }
end
