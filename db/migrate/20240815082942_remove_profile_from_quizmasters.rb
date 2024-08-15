class RemoveProfileFromQuizmasters < ActiveRecord::Migration[7.0]
  def change
    remove_column :quizmasters, :profile
  end
end
