class RemovePhotoFromVenues < ActiveRecord::Migration[7.0]
  def change
    remove_column :venues, :photo
  end
end
