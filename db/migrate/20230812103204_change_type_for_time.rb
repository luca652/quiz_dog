class ChangeTypeForTime < ActiveRecord::Migration[7.0]
  def change
    change_column(:venues, :time, :time)
  end
end
