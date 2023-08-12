class ChangeDatatypeForTime < ActiveRecord::Migration[7.0]
  def change
    def self.up
      change_table :venues do |t|
        t.change :time, :time
      end
    end
    def self.down
      change_table :tablename do |t|
        t.change :time, :datetime
      end
    end
  end
end
