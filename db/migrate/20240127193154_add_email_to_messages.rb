class AddEmailToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :email, :string
  end
end
