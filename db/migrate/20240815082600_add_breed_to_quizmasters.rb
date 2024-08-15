class AddBreedToQuizmasters < ActiveRecord::Migration[7.0]
  def change
    add_column :quizmasters, :breed, :string
  end
end
