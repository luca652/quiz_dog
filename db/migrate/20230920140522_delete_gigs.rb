class DeleteGigs < ActiveRecord::Migration[7.0]
  def change
    drop_table :gigs
  end
end
