class AddPhotoToVenues < ActiveRecord::Migration[7.0]
  def change
    add_column :venues, :photo, :string
  end
end
