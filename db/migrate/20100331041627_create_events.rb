class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.text :description
      t.integer :capacity
      t.decimal :price
      t.datetime :starts_at

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
