class AddRecordToQuizmasters < ActiveRecord::Migration[7.0]
  def change
    add_column :quizmasters, :record, :string
  end
end
