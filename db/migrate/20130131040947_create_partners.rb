class CreatePartners < ActiveRecord::Migration
  def self.up
    create_table :partners do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :partners
  end
end
