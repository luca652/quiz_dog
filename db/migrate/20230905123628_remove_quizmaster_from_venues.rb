class RemoveQuizmasterFromVenues < ActiveRecord::Migration[7.0]
  def change
    remove_column :venues, :quizmaster
  end
end
