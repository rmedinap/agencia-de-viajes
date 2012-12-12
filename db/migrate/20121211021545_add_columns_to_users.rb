class AddColumnsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :address1, :string
    add_column :users, :address2, :string
    add_column :users, :state, :string
    add_column :users, :city, :string
    add_column :users, :zipcode, :string
    add_column :users, :country, :string
    add_column :users, :phone, :string
    add_column :users, :travel_agent, :string
    add_column :users, :code, :string

  end

  def self.down

    remove_column :users, :name
    remove_column :users, :last_name
    remove_column :users, :address1
    remove_column :users, :address2
    remove_column :users, :state
    remove_column :users, :city
    remove_column :users, :zipcode
    remove_column :users, :country
    remove_column :users, :phone
    remove_column :users, :travel_agent
    remove_column :users, :code

  end
end
