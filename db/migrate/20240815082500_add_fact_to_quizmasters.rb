class AddFactToQuizmasters < ActiveRecord::Migration[7.0]
  def change
    add_column :quizmasters, :fact, :string
  end
end
