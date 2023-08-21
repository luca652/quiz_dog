class RemoveDescriptionFromVenues < ActiveRecord::Migration[7.0]
  def change
    remove_column :venues, :description
  end
end
