class AddTimeToVenues < ActiveRecord::Migration[7.0]
  def change
    add_column :venues, :time, :datetime
  end
end
