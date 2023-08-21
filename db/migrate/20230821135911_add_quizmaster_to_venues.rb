class AddQuizmasterToVenues < ActiveRecord::Migration[7.0]
  def change
    add_column :venues, :quizmaster, :string
  end
end
