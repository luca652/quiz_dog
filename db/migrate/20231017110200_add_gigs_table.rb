class AddGigsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :gigs do |t|
      t.references :venue, null: false, foreign_key: true
      t.references :quizmaster, null: false, foreign_key: true

      t.timestamps
    end
  end
end
