class RemoveColumnFromVenues < ActiveRecord::Migration[7.0]
  def change
    remove_reference :venues, :quizmaster, foreign_key: true
  end
end
