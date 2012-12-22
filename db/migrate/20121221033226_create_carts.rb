class CreateCarts < ActiveRecord::Migration
  def self.up
    create_table :carts do |t|
      t.integer :quantity
      t.integer :travel_id

      t.timestamps
    end
  end

  def self.down
    drop_table :carts
  end
end