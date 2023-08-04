class CreateQuizmasters < ActiveRecord::Migration[7.0]
  def change
    create_table :quizmasters do |t|
      t.string :name
      t.text :profile
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
