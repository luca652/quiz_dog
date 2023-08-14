class AddColumnToVenues < ActiveRecord::Migration[7.0]
  def change
    add_column :venues, :day_of_the_week, :string
  end
end
