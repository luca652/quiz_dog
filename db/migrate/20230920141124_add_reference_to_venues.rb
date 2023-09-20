class AddReferenceToVenues < ActiveRecord::Migration[7.0]
  def change
    add_reference :venues, :quizmaster, foreign_key: true
  end
end
